Program OrdenarNomes;

Var vnum:array[1..11] of string;
i,j,menor :integer;
Var muda : string;

Begin
writeln('Digite 10  nomes');
for i:=1 to 10 do            
Begin
	writeln();
	writeln('	Digite o ',i,  ' Nome: 	');
	readln(vnum[i]);
End;

										 write(' Nomes Desordenados: ');    
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
writeln('Nomes Ordenados: ');
for i:=1 to 10 do       
Begin
	writeln(vnum[i], '; ');
End;
 
End.














