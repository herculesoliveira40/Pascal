Program SomaXY;
var x, y, i, somax, somay: integer;
vet: array[1..10] of integer; 
vet2: array[1..10] of integer; 
Begin

	for x:= 1 to 5 do
	begin
		writeln('Digite um numero para o vetor X');
		readln(vet[x]);
		somax:= somax + vet[x]; 
//		writeln(somax);
	end;
	
	for y:= 1 to 5 do
	begin
		writeln('Digite um numero para o vetor Y');
		readln(vet2[y]);
		somay:= somay + vet2[y]; 
	//	writeln(somay);
	end;
			
	
											write('Vetores de X: ');
	for x:= 1 to 5 do
	begin  
		write(vet[x], ', ');
	 
	end;	          
									    writeln();
											write('Vetores de Y: ');
	for y:= 1 to 5 do
	begin
		write(vet2[y], ', ');
	
	end;		
											 writeln();
											 writeln('Soma de X e Y é: ', somax + somay);
		
End.