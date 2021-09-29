PROGRAM LEITOR_DE_MENTES;
USES CRT;
VAR
	MAT:ARRAY[0..9,0..9] OF STRING;
	MAT1:ARRAY[0..9,0..9] OF INTEGER;
	NUM,L,C,CONT : INTEGER;
	M,LETRA: STRING[07];
PROCEDURE FUNDO;
VAR
  LINHA, COLUNA: INTEGER;
BEGIN
    FOR LINHA:= 1 TO 28 DO
    BEGIN
       FOR COLUNA := 1 TO 80 DO 
       BEGIN
           GOTOXY(COLUNA,LINHA);
           TEXTCOLOR(LIGHTGREEN);
           WRITE (#123);
       END;
    END;
END;
PROCEDURE RESULTADO(NUM: INTEGER; VAR LET: STRING);
BEGIN
	IF NUM <= 5 THEN
	   LET:= 'A'
	ELSE
	IF (NUM > 5) AND (NUM <= 10) THEN
	   LET := 'E'
	ELSE
	IF (NUM > 10) AND (NUM <= 15) THEN
	   LET := '0'
	ELSE
	   LET:= 'J';	 
END;
PROCEDURE VERIFICA (NUM : INTEGER);
VAR
	L,C : INTEGER;
BEGIN 
	IF NUM <= 5 THEN
	BEGIN
		FOR L:= 0 TO 9 DO
		BEGIN
			FOR C:= 0 TO 9 DO
			BEGIN
				IF MAT1[L,C] MOD 9 = 0 THEN
					MAT[L,C] := 'A'
				ELSE
				IF  (MAT1[L,C]) < 5  THEN
				    MAT[L,C] := 'Ç'
				ELSE
				IF  (MAT1[L,C] > 5 ) AND (MAT1[L,C] < 10 )THEN
				    MAT[L,C] := 'I'
				ELSE
				IF  (MAT1[L,C] > 10 ) AND (MAT1[L,C] < 15 )THEN
				      MAT[L,C] := 'Q'
				ELSE
				IF  (MAT1[L,C] > 15 ) AND (MAT1[L,C] < 17 )THEN
				      MAT[L,C] := 'W'
				ELSE
				IF  (MAT1[L,C] > 17 ) AND (MAT1[L,C] < 19 )THEN
				      MAT[L,C] := 'R' 
				ELSE
				IF  (MAT1[L,C] > 19 ) AND (MAT1[L,C] < 21 )THEN
				      MAT[L,C] := 'Y'
				ELSE
				IF  (MAT1[L,C] > 21 ) AND (MAT1[L,C] < 25 )THEN
				      MAT[L,C] := 'T'
				ELSE
				IF  (MAT1[L,C] > 25 ) AND (MAT1[L,C] < 27 )THEN
				      MAT[L,C] := 'H'
				ELSE
				IF  (MAT1[L,C] > 27 ) AND (MAT1[L,C] < 30 )THEN
				      MAT[L,C] := 'I'
		
				ELSE
					MAT[L,C] := 'D'		 	 	 	 	 	 	 	 	 	 	      
			END;
		END;
	END
	ELSE
	IF (NUM > 5) AND (NUM <= 10) THEN
	FOR L:= 0 TO 9 DO
	BEGIN
		FOR C:= 0 TO 9 DO
		BEGIN
			IF (MAT1[L,C] MOD 9 = 0) AND (MAT1[L,C] DIV 9 <= 9) THEN
				MAT[L,C] := 'E'
			ELSE
			IF  MAT1[L,C] < 5 THEN
			    MAT[L,C] := 'A'
			ELSE
			IF  (MAT1[L,C] > 5 ) AND (MAT1[L,C] < 10 )THEN
			    MAT[L,C] := 'I'
			ELSE
			IF  (MAT1[L,C] > 10 ) AND (MAT1[L,C] < 15 )THEN
			      MAT[L,C] := 'U'
			ELSE
			IF  (MAT1[L,C] > 15 ) AND (MAT1[L,C] < 20 )THEN
			      MAT[L,C] := 'M'
			ELSE      
			IF  (MAT1[L,C] > 20 ) AND (MAT1[L,C] < 38 )THEN
			      MAT[L,C] := 'L'      
			ELSE      
			IF  (MAT1[L,C] > 38 ) AND (MAT1[L,C] < 53 )THEN
			      MAT[L,C] := 'P'
			ELSE      
			IF  (MAT1[L,C] > 43 ) AND (MAT1[L,C] < 50 )THEN
			      MAT[L,C] := 'W'
			ELSE      
			IF  (MAT1[L,C] > 50 ) AND (MAT1[L,C] < 53 )THEN
			      MAT[L,C] := 'J'
			ELSE      
			IF  (MAT1[L,C] > 53 ) AND (MAT1[L,C] < 59 )THEN
			      MAT[L,C] := 'I'
			ELSE      
			IF  (MAT1[L,C] > 59 ) AND (MAT1[L,C] < 64 )THEN
			      MAT[L,C] := 'D'
			ELSE      
			IF  (MAT1[L,C] > 64 ) AND (MAT1[L,C] < 68 )THEN
			      MAT[L,C] := 'P'
			ELSE
				MAT[L,C] := 'F'	   	   	   	   	   	   	       
		END;
	END
	ELSE
	IF (NUM > 10) AND (NUM <= 15) THEN
	FOR L:= 0 TO 9 DO
	BEGIN
	    FOR C:= 0 TO 9 DO
	    BEGIN
	         IF (MAT1[L,C] MOD 9 = 0) AND (MAT1[L,C] DIV 9 <= 9) THEN
				MAT[L,C] := 'O'
			ELSE
			IF  MAT1[L,C] < 5 THEN
			    MAT[L,C] := 'A'
			ELSE
			IF  (MAT1[L,C] > 5 ) AND (MAT1[L,C] < 13 )THEN
			    MAT[L,C] := 'U'
			ELSE
			IF  (MAT1[L,C] > 13 ) AND (MAT1[L,C] < 15 )THEN
			      MAT[L,C] := 'I'
			ELSE
			IF  (MAT1[L,C] > 15 ) AND (MAT1[L,C] < 29 )THEN
			      MAT[L,C] := 'H'
			ELSE
			IF  (MAT1[L,C] > 29 ) AND (MAT1[L,C] < 36 )THEN
			      MAT[L,C] := 'L'
			ELSE
			IF  (MAT1[L,C] > 36 ) AND (MAT1[L,C] < 42 )THEN
			      MAT[L,C] := 'V'
			ELSE
			IF  (MAT1[L,C] > 42 ) AND (MAT1[L,C] < 58 )THEN
			      MAT[L,C] := 'P'
			ELSE
			IF  (MAT1[L,C] > 58 ) AND (MAT1[L,C] < 64 )THEN
			      MAT[L,C] := 'Z'
			ELSE
			    MAT[L,C] := 'U'  
				 		 	 	       
		END;
	END
	ELSE
	FOR L:= 0 TO 9 DO
	BEGIN
	    FOR C:= 0 TO 9 DO
	    BEGIN
	         IF (MAT1[L,C] MOD 9 = 0) AND (MAT1[L,C] DIV 9 <= 9) THEN
				MAT[L,C] := 'J'
			ELSE
			IF  MAT1[L,C] < 5 THEN
			    MAT[L,C] := 'A'
			ELSE
			IF  (MAT1[L,C] > 5 ) AND (MAT1[L,C] < 13 )THEN
			    MAT[L,C] := 'U'
			ELSE
			IF  (MAT1[L,C] > 13 ) AND (MAT1[L,C] < 15 )THEN
			      MAT[L,C] := 'I'
			ELSE
			IF  (MAT1[L,C] > 13 ) AND (MAT1[L,C] < 15 )THEN
			      MAT[L,C] := 'K'
			ELSE
			IF  (MAT1[L,C] > 15 ) AND (MAT1[L,C] < 25 )THEN
			      MAT[L,C] := 'X'
			ELSE
			IF  (MAT1[L,C] > 25 ) AND (MAT1[L,C] < 33 )THEN
			      MAT[L,C] := 'U'
			ELSE
			IF  (MAT1[L,C] > 33 ) AND (MAT1[L,C] < 45 )THEN
			      MAT[L,C] := 'B'
			ELSE
			IF  (MAT1[L,C] > 45 ) AND (MAT1[L,C] < 55 )THEN
			      MAT[L,C] := 'X'	 	 	       
			ELSE
			IF  (MAT1[L,C] > 55 ) AND (MAT1[L,C] < 69 )THEN
			      MAT[L,C] := 'S' 
			ELSE
				MAT[L,C] := 'R'	      
		END;
	END;	
END;

PROCEDURE MARCA;
VAR
	CONT: INTEGER;
BEGIN
	TEXTCOLOR(YELLOW);
	GOTOXY(28,15);
	WRITELN('TECLE ENTER PARA SAIR DO PROGRAMA');
	FOR CONT:= 1 TO 15 DO
	BEGIN
	    DELAY(700);
	    IF CONT MOD 2 = 0 THEN
	    BEGIN
	        TEXTCOLOR(YELLOW);
	        GOTOXY(50,23);
             WRITELN('   SOFTWARE MAKE LOVE');
             GOTOXY(50,24);
             WRITELN('   AVANÇANDO NO FUTURO');
             GOTOXY(50,25);
             WRITELN('rhonnybachelor@gmail.com');
         END
         ELSE
         BEGIN
	        TEXTCOLOR(LIGHTGREEN);
	        GOTOXY(50,23);
             WRITELN('   SOFTWARE MAKE LOVE');
             GOTOXY(50,24);
             WRITELN('   AVANÇANDO NO FUTURO');
             GOTOXY(50,25);
             WRITELN('rhonnybachelor@gmail.com');
         END;
     END;
END;
PROCEDURE AGUARDE;
VAR
	VET: ARRAY[1..20] OF STRING;
	CONT,CONT1: INTEGER;
BEGIN
	TEXTCOLOR(11);
	GOTOXY(30,21);
    	WRITE('AGUARDE PROCESSANDO');
	FOR CONT := 1 TO 20 DO
	BEGIN
		VET[CONT]:= '--';
	END;
	FOR CONT1:= 1 TO 8 DO
	BEGIN
	    IF CONT1 MOD 2 = 0 THEN
	    BEGIN
	        FOR CONT:= 1 TO 20 DO
	        BEGIN
	            DELAY(50);
	            TEXTCOLOR(YELLOW);
	            GOTOXY(CONT + 28,23);
	            WRITELN(VET[CONT]);
	        END;
	    END
	    ELSE
	    BEGIN
	        FOR CONT:= 1 TO 20 DO
	        BEGIN
	            DELAY(50);
	            TEXTCOLOR(LIGHTGREEN);
	            GOTOXY(CONT + 28,23);
	            WRITELN(VET[CONT]);
	        END;
	    END;
	END;   
END;

PROCEDURE TELA;
VAR
	HORI,VERT: ARRAY[1..76] OF STRING;
	CONT: INTEGER;
BEGIN
	TEXTBACKGROUND(11);
     TEXTCOLOR(15);
     FOR CONT:= 1 TO 76 DO
         HORI[CONT]:='_';
     GOTOXY(57,3); WRITELN('RONALDO R DA COSTA');
     GOTOXY(54,4);WRITELN('GEYSON BRENO M. FERREIRA');
     FOR CONT:=2 TO 25 DO
        VERT[CONT]:='|';
     FOR CONT:= 1 TO 76 DO
     BEGIN
         GOTOXY(CONT+2,1);
         WRITE(HORI[CONT]);
         GOTOXY(CONT+2,2);
         WRITE(HORI[CONT]);
         GOTOXY(CONT+2,27);
         WRITE(HORI[CONT]);
         GOTOXY(CONT+2,28);
         WRITE(HORI[CONT]);
     END;
     FOR CONT:=2 TO 25 DO
     BEGIN
	    GOTOXY(1,CONT); 
	    WRITELN(VERT[CONT]);
	    GOTOXY(2,CONT); 
	    WRITELN(VERT[CONT]);
         GOTOXY(79,CONT);
	    WRITELN(VERT[CONT]);
	    GOTOXY(80,CONT);
	    WRITELN(VERT[CONT]);
     END;
END;
PROCEDURE MONTA;
BEGIN
    CONT:= 0;
	FOR L:= 0 TO 9 DO
	BEGIN
		FOR C:= 0 TO 9 DO
		BEGIN
		    MAT1[L,C] := CONT;
		    CONT:= CONT + 1;
		END;
	END;
END;
PROCEDURE ESCREVE;
VAR
	L,C,CONTL,CONTC: INTEGER;
BEGIN
	GOTOXY(5,5);
     FOR L:= 0 TO 9 DO
	BEGIN
	    GOTOXY(6,l+16);
	    FOR C:= 0 TO 9 DO
	    BEGIN
		    TEXTCOLOR(11);
		    WRITE(MAT1[L,C],'  ');
		    TEXTCOLOR(YELLOW);
		    WRITE(MAT[L,C],'  ');
	    END;
	    WRITELN;
	    WRITELN;
	END;
END;
BEGIN
	CLRSCR;
	MONTA;
	TELA;
	FUNDO;
	TEXTBACKGROUND(11);
	TEXTCOLOR(15);
	GOTOXY(8,5);
	WRITELN('SOFTWARE APLICATIVO LEITOR DE MENTE VER 3.0 - BETA');
	GOTOXY(30,15);
	WRITELN('POR FAVOR! DIGITE O SEU NOME.');
	GOTOXY(38,17);
	READ(M);
	CLRSCR;
	TELA;
	GOTOXY(9,6);
	WRITELN(M,' PENSE NUM NUMERO DE 2 DIGITOS (EX: 54 )');
	GOTOXY(9,8);
	WRITELN('SUBTRAIA, DESSE NUMERO, SEUS 2 DIGITOS(EX: 54 - 5 - 4 = 45)');
	GOTOXY(9,10);
	WRITELN('OLHE NA TABELA SEGUINTE A LETRA CORRESPONDENTE AO SEU RESULTADO');
	GOTOXY(9,12);
	WRITELN('CONCENTRE-SE NA LETRA QUE ESTAR A DIREITA DO RESULTADO QUE VC OBTEVE');
	RANDOMIZE;
	NUM := RANDOM(21);
	VERIFICA(NUM);
	ESCREVE;
	GOTOXY(30,28);
	TEXTCOLOR(15);
	WRITELN('SE VC JA PENSOU TECLE ENTER PARA CONTINUA.');
	READKEY;
	CLRSCR;
	TELA;
	AGUARDE;
	CLRSCR;
	TELA;
	GOTOXY(30,15);
	WRITELN('A LETRA QUE VC OBSERVOU FOI:');
	RESULTADO(NUM,LETRA);
	GOTOXY(60,15);
	WRITELN(LETRA);
	GOTOXY(30,23);
	WRITELN('QUER TENTAR DE NOVO...');
	READKEY;
	CLRSCR;
	TELA;
	MARCA;
	READKEY;
END.	
				
		
