     W H  @        Y���         ;�         :   
Behavioral  � 7�          �� ! 8� H! _� ~� �Y �a �� �� ) 6i F	 M� q U� Y� ]y x� �� �q �� �� �9 �I �� a 0!  r     �� $� <i L	 cy �� �A �I �� �  :Q I� Q� m aa |� �� �Y �� �� �Q �1 �q e 4	        �9 �� �� ) (� K� k r� �a � A� ,9  �       �  �     7�          Y  2�  J9  a�  y  ��  ��         A  6�  N!  e�  }  �q  ��          ��     v  ��          A     :   clk  A  �     p   5  Y      q          �     @     '     ' Q4     #)  *�      .�     @      '     v  �[     '      6�     :   input1  6�  �     p   6  2�      .�          �     @     >�     ' Q4     :�  Bi      FQ     @      >�     v  �[     >�      N!     :   input2  N!  �     p   7  J9      FQ          �     @     U�     ' Q4     R	  Y�      ]�     @      U�     v  �[     U�      e�     :   input3  e�  �     p   8  a�      ]�          �     @     ma     ' Q4     iy  qI      u1     @      ma     v  �[     ma      }     :   input4  }  �     p   9  y      u1          �     @     ��     ' Q4     ��  ��      ��     @      ��     v  �[     ��      �q     :   anode  �q  �     p   :  ��     ��          �     @     �A     ' Q4     �Y  �)      �     @      �A     v  �[     �A      ��     :   output  ��  �     p   ;  ��     �          �     :   seven_seg_display  ��  �        4  ��  �  �        	  ��  �Q  ��  �  �a  �1  � � A       	  �i  �9  ީ  �y  �I  �  �� � )         $�     :   clk  �i  ��     p   D  ��      q          ��     :   rst  �9  ��     p   E  �Q      q          ��     @     �	     ' Q4     �!  ��      ��     @      �	     v  �[     �	      ީ     :   PDB  ީ  ��     p   F  ��     ��          ��     :   EppASTB  �y  ��     p   G  �      q          ��     :   EppDSTB  �I  ��     p   H  �a      q          ��     :   EppWRITE  �  ��     p   I  �1      q          ��     :   EppWAIT  ��  ��     p   J  �     q          ��     :   
data_ready �  ��     p   K �     q          ��     @    �     ' Q4    	� q     Y     @     �     v  �[    �     )     :   ram_data )  ��     p   L A    Y          ��     :   EPP_interface $�  �        B !  ��  �     @    ,�     ' Q4    (� 0�     4�     @     ,�     v  �[    ,�     <i     :   epp_download_data <i  �     p   Q 8�    4� D9      �     
    ,�  � D9      4�    @Q <i     :   epp_data_valid L	  �     p   R H!     q  �      �     @    S�     ' Q4    O� W�     [�     @     S�     v  �[    S�     cy     :   ram_data cy  �     p   S _�    [� kI      �     
    S�  � kI      [�    ga cy     @    s     ' Q4    o1 w     z�     @     s     v  �[    s     ��     :   ram_address ��  �     p   T ~�    z� ��      �     
    s  � ��      z�    �� ��     v �         �A     :   ram_address_int �A  �     p   U �Y    �q n�      �         � �� �� �! ܑ        �� �� �� �	 �y         �I     :   clk �� �)     p   [ �      q         �)     :   address �� �)     p   \ ��     �q         �)     :   we �� �)     p   ] ��      q         �)     @    �i     ' Q4    �� �Q     �9     @     �i     v  �[    �i     �	     :   data_i �	 �)     p   ^ �!     �9         �)     @    ��     ' Q4    �� ��     ة     @     ��     v  �[    ��     �y     :   data_o �y �)     p   _ ܑ    ة         �)     :   	block_ram �I  �        Z �a �)  �     @     �      �    �1 �     ��     @    �     :   bram_address ��  �     p   c ��    � �1      �     :   b_we �  �     p   d ��     q  �      �     @    q     ' Q4    � Y     A     @     q     v  �[    q          :   bram_data_in   �     p   e )    A "�      �     
    q  � "�      A    �      @    *�     ' Q4    &� .�     2�     @     *�     v  �[    *�     :Q     :   bram_data_out :Q  �     p   f 6i    2� B!      �     
    *�  � B!      2�    >9 :Q     :   rst I�  �     p   l F	     q  �      �     :   download_btn Q�  �     p   l M�     q  �      �     -   
rest_state aa      �     -   download_state aa     �     -   debug_download_state aa     �     ,   o U� q  �      q    U� Y� ]y             . eI m     |   o q i1  �     :   
state_type m  �     v q         |�     :   current_state |�  �     p   p x�    t� U�      �     :   download_finished ��  �     p   q ��     q  �      �     :   download_counter �Y  �     p   r �q    �q n�      �     @    �)     ' Q4    �A �     ��     @     �)     v  �[    �)     ��     :   display_state ��  �     p   z ��    �� ��      �     
    �)  � ��      ��    �� ��     @     �i     >     R
 �� �Q     � �i         �9        �     �Q F	              �     @    �	     >     R
 �! ��     � �	         ��        �     �� M�              �        � �� !   	 ҩ ֑ �y �a �I �1 � � ��      �     \     ��  #*         \     �Q F	         \     ��  iz         \     �  qJ         \     �a  y         \     �1  ��         \     �  ��         \    � H!         \    A 8�         :   download_from_epp ��  �     E   � �� ��  �     @    �     ' Q4    �� q     	Y     @     �     q    8� � A     � 	Y         )        �     A _�              �     @    �     ' Q4     �      �     @    �     q    8� � $�     �  �         (�        �     $� ~�              �     @    0i     ' Q4    ,� 4Q     89     @    0i     q    8� 0i <!     {  J=    89 @	     S �e    G� C�     � @	         K�     Y    �� <!            �     C� �Y              �     �  C         [a     S �t    �q Wy [a     @    S�     �    S� O� _I     J    [a g k     �  [         g     �     �< c1 _I        �     _I ��              �     � ��         r�        �     n�  �*              �                         �y �a     S �3    ̩ Б     S �9    F	  C �A     S w�    �q �Y �A     @    �q     S �|    ~� �q ��     @     �     � �)         ��     o   �     � �q         ��     S �9    H!  C �!     S �d    �q �� ��     @    ��     � ��         ��     o   �     �� �q         �!     v  ��         �Q     U     �9     FS  FS  �� �i  �     T   = �Q  �     r         ��    �� �	     <   �        �! ��     r          �<    �	 ��     r         �A    �� ��     <   �        �� �� Б     Y    �c  #*         r         z�    �� �y     <   �        Б v�     a   � �I v�     #*  �     :   update_download_counter �1  �     E   � �I �a  �        � �� �a    � �� �� � ��      �     \    �  #*         \    �� ��         \    �� ��         \    �! )         \    ܑ 6i         :   ram_management �q  �     E   � �� �  �     @    A     ' Q4    Y )          @     A     q    6i A A�     @    �     ' Q4    � �     �     @    �     q    6i � A�     @    &�     ' Q4    "� *i     .Q     @    &�     q    6i &� A�     @    6!     ' Q4    29 :	     =�     @    6!     q    6i 6! A�        � a  ��    E� I� M� Qy Ua YI ]1      �     \     Y  #*         \     2�          \     J9 �         \     a� .Q         \     y =�         \     ��  ��         \     ��  �
         :   display_ram e  �     E   � a A�  �                         (Q ,9     S �3     � $i     S �9    F	  C �     � U�         x�     o   �     t� x�         �        �        �� � � x� �     s   00000000  �[ �A     � �Y         �)     o   �     �A ��         ��     S �9    M�  C ��     � Y�         ��     o   �     �� x�         ��     r         �    �� ��     <   �        �� ��         U� ��     r         ��    �) �� |q     s   00000001  �[ �Q     � �i         �9     o   �     �Q ��         �     � H!         �	     o   �     �! ��         �     � _�         ��     o   �     �� )         �     � �Y         Ʃ     o   �     �� ��         �     S �9    ��  C �I     � ]y         �a     o   �     �y x�         �I     r         ʑ    �a �1     <   �        �I �         Y� �     r         �    �9 �	 �� Ʃ �1 |q     s   00000010  �[ ��     � ��         ��     o   �     �� ��         �     �  [         ��     o   �     � ��         �     {  J=     :� �Y     S �e    ) A     � �Y         	     Y    �� �q         o   �     A ��         �         ]y �     r         �    �� �� 	 |q     r          �<    |q �     r         p�    x� �     <   �        � � $i     Y    �c  #*         r         l�    � (Q     <   �        $i h�     a   � 0! h�     #*  �     :   FSM 4	  �     E   � 0! ,9  �     %     �  �  ��     � ;�     �   T//vmware-host/shared folders/Desktop/fpga_connection/FPGA_interface/music_player.vhd 7�  �                music_player   
behavioral   work      music_player   
behavioral   work      music_player       work      std_logic_1164       IEEE      standard       std      numeric_std       IEEE