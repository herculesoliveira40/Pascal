Program Pzim ;
var
	vet1 : array[1..10] of integer;
	vet2 : array[1..10] of integer;
	uniao : array[1..10] of integer;	
	i, j : integer;
Begin
   //add vetor 1
   for i:=1 to 10 do
	 begin
	 		writeln('Informe o valor ',i);
	 		readln(vet1[i]);	 		
	 end; 
	 
	 //add vetor 2
   for i:=1 to 10 do
	 begin
	 		writeln('Informe o valor ',i);
	 		readln(vet2[i]);	 		
	 end; 
	 
	 //pesquisar vetores
	 for i:=1 to 10 do
	 begin
	 		for j:=1 to 10 do
	 		begin
	 				if vet1[i] = vet2[j] then
	 				begin
	 					uniao[i] := vet1[i];
	 					writeln('União: ',uniao[i]);
	 				end;
	 		end;
	 end;
	 
End.