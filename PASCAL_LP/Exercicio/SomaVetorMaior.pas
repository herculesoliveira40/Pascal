Program Pzim ;

var i, maior, posi, soma :integer;
  Nvet:Array [1..10] of integer;
Begin 
		maior:= -99999999999; 
  for i:= 1 to 10 do
  	begin
  
    writeln('Digite o ', i, ' numero: ');
    readln( Nvet[i]);
    soma:= soma+Nvet[i]; 
     
    if Nvet[i] > maior then
    begin
    maior:= Nvet[i];
    posi:= i;
		end;
    
    end;
									   { for i:= 1 to 5 do
									  	begin      
									 write( Nvet[i], ', ');
									
									     end;          }
									     
									     
									     writeln();
									     writeln('Soma é: ', soma);
									     writeln('O maior numero é o: ', maior, '.  Na posição: ', posi);
									     
End.