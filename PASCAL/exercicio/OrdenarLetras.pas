Program OrdenarLetras;

var i, j :integer;
var menor, troca : string; 
  vletras:Array [1..10] of string;  
Begin 
		menor:= 'a'; 
	//	menor:= 99999999999; 
  for i:= 1 to 5 do       ///// 10
  	begin
  
    writeln('Digite o ', i, ' Nome: ');
    readln( vletras[i]);  
        end;  
 										 write(' Nome: ');    //////////
									    for i:= 1 to 5 do      ///// 10
									  	begin 
											
											 write( vletras[i], ', ');   
														//////////////////////////////////////////////									     
									
									     end; 
																	if vletras[i] < menor then  
															    begin
															    menor:= vletras[i];
															   
																	end;       
														//////////////////////////////////////////////	     								     
						 writeln();
						write('Nomes Ordenados: ');
						for i:=1 to 5 do       
						Begin
							write(vletras[i], ', ');
						End;									 
									     
End.
	 {
	 								IF ( Registro[j].nome > Registro[k].nome ) THEN
								BEGIN
								// Ordena os nomes
									aux					:= Registro[j].nome;
									Registro[j].nome	:= Registro[k].nome;
									Registro[k].nome	:= aux;
	 }

{
 if vletras[j] < vletras[i] then
               begin
                    troca := v[i];
                    v[i] := v[j];
                    v[j] := troca;
               end;

}



{
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


}


{

For I := 1 to 9 do
         For J := I +1 to 10 do
             If(NOME[I] > NOME[J]) then
                Begin
                  X := NOME[I];
                  NOME[I] := NOME[J];
                  NOME[J] := X;
                End;


}

