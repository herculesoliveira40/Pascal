Program Pzim ;

var op,i, resp, maior, posi :integer;
  Nvet:Array [1..10] of integer;
Begin  
  for i:= 1 to 10 do
  	begin
  
    writeln('Digite o ', i, ' numero: ');
    readln( Nvet[i]);
     
     
    if Nvet[i] > maior then
    begin
    maior:= Nvet[i];
    posi:= i;
		end;
    
    end;
									    for i:= 1 to 10 do
									  	begin      
									 write( Nvet[i], ', ');
									
									     end; 
									     
									     
									     writeln();
									     writeln('O maior numero é o: ', maior, '.  Na posição: ', posi);
End.