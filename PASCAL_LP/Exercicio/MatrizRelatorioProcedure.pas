Program RelatorioProcedureMatriz ;
var i : integer;
var media : real;
nome: array[1..5, 1..5 ] of string;
notas: array[1..5, 1..5 ] of real;
Procedure Relatorio();
	begin
	     writeln('Alo');
	     	for i:=1 to 3 do
	     	begin
	     	media:= (( notas[i,1] + notas[i,2])/2);
	     	writeln('Aluno: ', nome[i,1], ' - Nota 1: ', notas[i,1]:2:2, ' - Nota 2: ', notas[i,2]:2:2,' - Media: ', media:2:2); 
	     	end;
	end;
Begin
		for i:=1 to 3 do
		begin
		 writeln('Informe o nome do Aluno', i,':');
		 readln(nome[i,1]);
		 writeln('Informe a primeira nota do aluno ', i,':');
		 readln(notas[i,1]);
		 writeln('Informe a segunda nota do aluno ', i,':');
		 readln(notas[i,2]);
		 writeln('');		
		end;
		 
    Relatorio();
End.