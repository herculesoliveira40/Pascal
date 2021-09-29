Program Tabuada ;
var N, N2, cont: integer; 

Begin
		writeln('Informe um numero para a tabuada: ');
		readln(N); 
  
	     	while (N < 1) or (N > 10000)  do      {Validar entre 1 e 10000}

		begin   
   		writeln('Digite novamente um numero para a tabuada, sendo o mesmo menor que 10.000 ');
    readln(N);  
       		end;   
									textcolor(blue);
		       		 	  writeln('Digite 1- Para multiplicaçaõ, Digite 2- Para divisão, Digite 3- Para subtração, Digite 4- Para soma: ');
									readln(N2);
					  			  
					    cont:= 1;
      	     	while (cont <= 10) do

		begin
     Case N2 Of
          1 : Begin
               textcolor(red);      	writeln(N,'x', cont,'=', (N*cont));
              End;   
          2 : Begin
               textcolor(red);      	writeln(N,'/', cont,'=', (N/cont));
              End;
          3 : Begin
               textcolor(red);      	writeln(N,'-', cont,'=', (N-cont));
              End;
          4 : Begin
               textcolor(red);      	writeln(N,'+', cont,'=', (N+cont));
              End;							   
          Else Writeln ('Digite a operação Novamente. Invalida');
     End;
 
     	cont:= cont+1;  
        	end;          
End.