Program Pzim ;
var
	notas : array[1..5, 1..3] of real;
	nota : real;
	i, j : integer;
	
	procedure CadastrarNotas;
	Begin
		for i:=1 to 5 do
		Begin
			writeln('Informe as notas do aluno ',i);
			for j:=1 to 3 do
			begin
				readln(notas[i,j]);   
			end;
		End;	
	End;
	
	procedure ListarNotas;
	begin
		for i:=1 to 5 do
		begin
			writeln('Notas do aluno ',i);
			for j:=1 to 3 do
			begin
				 writeln(notas[i,j]);
			end;
		end;
	end;
	
	procedure BuscarNotas(nota : real);
	begin
		for i:=1 to 5 do
		begin
			for j:=1 to 3 do
			begin
				 if nota = notas[i,j] then
				 begin
				 		writeln('Nota ',notas[i,j],' encotrada.');
				 end;
			end;
		end;
	end;
	
	
Begin
	CadastrarNotas;
	ListarNotas;
	writeln('Informe a nota que deseja pesquisar');
	readln(nota);
	BuscarNotas(nota);
End.