Program Pzim ;

var i, resp, menor, posi :integer;
  Nvet:Array [1..10] of integer;
Begin 
		menor:= 99999999999; 
  for i:= 1 to 10 do
  	begin
  
    writeln('Digite o ', i, ' numero: ');
    readln( Nvet[i]);
     
     
    if Nvet[i] < menor then
    begin
    menor:= Nvet[i];
    posi:= i;
		end;
    
    end;
									    for i:= 1 to 10 do
									  	begin      
									 write( Nvet[i], ', ');
									
									     end; 
									     
									     
									     writeln();
									     writeln('O menor numero é o: ', menor, '.  Na posição: ', posi);
End.