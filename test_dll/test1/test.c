#include <windows.h>
#include "dpcdefs.h"
#include "dpcutil.h"
#include <stdio.h>
#include <stdlib.h>

#define cchDevNameMax 28
#define REPS 5
#define size 500
#define BUFF_SIZE 1024

int data_amount = 500;

char device[cchDevNameMax];
unsigned int music_array[size];


HANDLE hif;





unsigned char output_reg = 1;
unsigned char input_reg = 1;
unsigned char data_in = 3;


void reset_music_array(void) {
	int i;
	for (i = 0; i < size; i++) {
		music_array[i] = 12;
	}
	return;
}


int read_file(void) {
	FILE *myfile = fopen("test_input.txt","r");
	if (myfile == NULL) {
		printf("file is NULL\n");
		return -1;
	}
	char line[BUFF_SIZE];
	unsigned int v1 = 0x00;
	unsigned int v2 = 0x00;
	long temp_pointer;
	for (int i = 0; i < 2; i++) {
		temp_pointer = ftell(myfile);
		if (fgets(line, BUFF_SIZE, myfile) != NULL) {
			if (line[0] == '%') {
				i--;
			} else if (line[0] == 'n' && line[1] == 'o' && line[2] == 'r' && line[3] == 'm' && line[4] == 'a' && line[5] == 'l') {
				v2 = 0x00;
			} else if (line[0] == 's' && line[1] == 't' && line[2] == 'a' && line[3] == 'c' && line[4] == 'c' && line[5] == 'a' && line[6] == 't' && line[7] == 'o') {
				v2 = 0x01;
			} else if (line[0] == 's' && line[1] == 'l' && line[2] == 'u' && line[3] == 'r' && line[4] == 'r' && line[5] == 'e' && line[6] == 'd') {
				v2 = 0x02;
			} else if (sscanf(line, "bpm %d", &v1)) {
			}
			else {
				fseek(myfile, temp_pointer, 0);
				break;
			}
		}
	}
	music_array[0] = v1;
	music_array[1] = v2;

	int counter = 2;

	printf("%2x %2x\n", v1, v2);
	
	char note_pitch[5];
	char note_length[3];
	while (fgets(line, BUFF_SIZE, myfile) != NULL) {
		if (line[0] != '%') {
			memset(note_pitch, 0, 4);
			memset(note_length, 0, 3);
			sscanf(line, "%s %s", note_pitch, note_length);
			switch (note_pitch[0]) {
			case 'r': {
				v1 = 0x0C;
			} case 'c': {
				if (note_pitch[2] == '#')
					v1 = 0x01;
				else
					v1 = 0x00;
				break;
			} case 'd': {
				if (note_pitch[2] == 'b')
					v1 = 0x01;
				else if (note_pitch[2] == '#')
					v1 = 0x03;
				else
					v1 = 0x02;
				break;
			} case 'e': {
				if (note_pitch[2] == 'b')
					v1 = 0x03;
				else
					v1 = 0x04;
				break;
			}  case 'f': {
				if (note_pitch[2] == '#')
					v1 = 0x06;
				else
					v1 = 0x05;
				break;
			} case 'g': {
				if (note_pitch[2] == 'b')
					v1 = 0x06;
				else if (note_pitch[2] == '#')
					v1 = 0x08;
				else
					v1 = 0x07;
				break;
			} case 'a': {
				if (note_pitch[2] == 'b')
					v1 = 0x08;
				else if (note_pitch[2] == '#')
					v1 = 0x0A;
				else
					v1 = 0x09;
				break;
			} case 'b': {
				if (note_pitch[2] == 'b')
					v1 = 0x0A;
				else
					v1 = 0x0B;
				break;
			} default: {
				printf("Invalid music file");
				return 1;
				break;
			}

			}
			switch (note_pitch[1]) {
			case '3': v1 |= 0x00; break;
			case '4': v1 |= 0x10; break;
			case '5': v1 |= 0x20; break;
			case '6': v1 |= 0x30; break;
			default: printf("Invalid music file"); return 1; break;
			}

			if (note_length[0] == 's' && note_length[1] == 'q')
				v2 = 0x03;
			else if (note_length[0] == 't')
				v2 = 0x04;
			else if (note_length[0] == 'q')
				v2 = 0x06;
			else if (note_length[0] == 'd' && note_length[1] == 'q')
				v2 = 0x09;
			else if (note_length[0] == 'c')
				v2 = 0x0C;
			else if (note_length[0] == 'd' && note_length[1] == 'c')
				v2 = 0x12;
			else if (note_length[0] == 'm')
				v2 = 0x18;
			else if (note_length[0] == 'd' && note_length[1] == 'm')
				v2 = 0x24;
			else if (note_length[0] == 's' && note_length[1] == 'b')
				v2 = 0x30;
			else if (note_length[0] == 'b')
				v2 = 0x60;
			else {
				printf("Invalid music file");
				return 1;
			}
			music_array[counter] = v1;
			music_array[counter + 1] = v2;
			counter = counter + 2;
			printf("%2x %2x\n", v1, v2);
		}
	}
	fclose(myfile);

	for(int i = 0; i < size; i++){
		//printf("music_array[%i] is %u\n",i,music_array[i]);
	}
	return 1;
}

static int GetReg(unsigned char r) {
	unsigned char b;
	ERC erc;


	if (!DpcGetReg(hif, r, &b, &erc, NULL)) {
		printf("DpcGetReg failed\n");
		DpcCloseData(hif,&erc);
		return -1;
	}

	erc = DpcGetFirstError(hif);
	if (erc == ercNoError) {
		return b;
	}
	return -1;

}



static int PutReg(unsigned char r, unsigned char b) {
	ERC erc; 

	if (!DpcPutReg(hif, r, b, &erc, NULL)) {
		printf("DpcPutReg failed\n");
		DpcCloseData(hif, &erc);
		return -1;
	}

	erc = DpcGetFirstError(hif);
	if (erc == ercNoError) {
		return 0;
	}
	return -1;
}






static int configure_device(void) {
	int erc = 0;
	int id;
	int name;
	//int value;

	printf("debug storage\n");
	printf("start connection\n");
	//initialise DLL
	if (!DpcInit(&erc)) {
		printf("DLL initialisation failed\n");
		return -1;
	}

	//set up devices
	DvmgStartConfigureDevices(NULL, &erc);
	printf("start configuration\n");

	//returns id of default device
	id = DvmgGetDefaultDev(&erc);

	printf("device id is %d\n", id);

	if (id == -1) {
		printf("No device found\n");
		return -1;  
	}

	name = DvmgGetDevName(id, device, &erc);

	printf("device is %s\n", device);


	if (!DpcOpenData(&hif, device, &erc, NULL)) {
		printf("data open failed\n");
		return -1;
	}

	return 0;
}



void close_connection(void) {
	int erc;
	DpcCloseData(hif, &erc);
}



int main(int argc, char *argv[]) {
	
	int success;
	reset_music_array();
	success = read_file();
	if (success == 0) {
		printf("file reading failed\n");
	}



	/*
	configure_device();

	int i;
	//printf("put %i into register %i\n",data_in,output_reg);
	printf("start to push %i numbers into the block ram\n", data_amount);

	
	for (i = 0; i < size; i++) {
		if (PutReg(output_reg, music_array[i]) < 0) {
			printf("put register failed\n");
			break;
		}
	}



	close_connection();


	printf("successfully send the data\n");
	*/
	return 0;


}