
































ldi r16, 0xff
delay0:

	ldi r17, 0xff
	dalay1: 
		dec r17 		(1)
		brne delay1 	(1) == 2 cycles * 255 = 510

	dec r16 
	brne delay0



for(int i=0;i<10;i++){

	for(int j=0;j<10;j++){

	}

}