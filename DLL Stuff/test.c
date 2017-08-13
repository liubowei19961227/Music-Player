#include <windows.h>
#include "dpcdefs.h"
#include "dpcutil.h"
#include <stdio.h>

#define cchDevNameMax 28
#define REPS 5

char device[cchDevNameMax];

unsigned char buffer[16 * 1024 * 1024];

HANDLE hif;



unsigned char output_reg = 5;
unsigned char input_reg = 5;
unsigned char data_in = 1;

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


int main(int argc, char *argv[]) {
	int erc = 0;
	int id;
	int name;
	int value;

	printf("start connection\n");
	//initialise DLL
	if (!DpcInit(&erc)) {
		printf("DLL initialisation failed\n");
		return 0;
	}

	//set up devices
	DvmgStartConfigureDevices(NULL, &erc);
	printf("start configuration\n");

	//returns id of default device
	id = DvmgGetDefaultDev(&erc);

	printf("device id is %d\n",id);

	if (id == -1) {
		printf("No device found\n");
		return 0;  //? error type
	}

	name = DvmgGetDevName(id, device, &erc);

	printf("device is %s\n",device);


	if (!DpcOpenData(&hif, device, &erc, NULL)) {
		printf("data open failed\n");
		return -1;
	}

	printf("put %i into register %i\n",data_in,output_reg);

	if (PutReg(output_reg, data_in) < 0) {
		printf("put register failed\n");
	}

	//read the data?
	value = GetReg(input_reg);
	if (value < 0) {
		printf("Get Register Failed\n");
	}
	else {
		printf("Register %i returns %i\n",input_reg,value);
	}

	



	DpcCloseData(hif, &erc);

	printf("successfully send the data\n");
	
	return 0;




}