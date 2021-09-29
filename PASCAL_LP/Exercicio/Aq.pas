Program OrdenarVetor;

Var vnum:array[1..10] of integer;
i,j,menor,muda:integer;

Begin
writeln('Digite 5  numeros');
for i:=1 to 10 do      
Begin
	writeln();
	writeln('	Digite o ',i,  ' Numero: 	');
	readln(vnum[i]);
End;

										 write(' Numeros: ');    
									    for i:= 1 to 10 do      
									  	begin 
											
											 write( vnum[i], ', ');   
									
									
									     end; 
for i:=1 to 10 do       
Begin
	menor:=i;
	for j:=i+1 to 10 do        
	Begin
		if vnum[j]<vnum[menor] then menor:=j; 
	End;
	if vnum[i]<>vnum[menor] then 
	Begin
		muda:=vnum[i]; 
		vnum[i]:=vnum[menor];
		vnum[menor]:=muda;
	End;
End;

 writeln();
write('Numeros Ordenados: ');
for i:=1 to 10 do       
Begin
	write(vnum[i], ', ');
End;
 
End.