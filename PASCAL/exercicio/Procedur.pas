Program Procedur ;
var
	notas : array[1..5, 1..3] of real;
	i,j : integer;
	
	procedure CadastrarNotas;
	Begin
	 for i:= 1 to 5 do
		 begin
		 writeln('Informe as notas dos alunos');
		 readln(notas[i]);
		 for j:= 1 to 3 do
	   begin
	  	writeln(notas[i,j]); 
	 	
		 end;
	  end;
	end;

  procedure ListarNotas;
  	Begin
	 for i:= 1 to 5 do
		 begin
		 writeln('Notas dos alunos');
		 for j:= 1 to 3 do
	   begin
	  	writeln(notas[i,j]); 
	 	
		 end;
	  end;
	end;
	
	
	
    procedure BuscarNotas(nota : real);
  	Begin
	 for i:= 1 to 5 do
		 begin
		 for j:= 1 to 3 do
	   begin
	  	writeln('Nota: ', notas[i,j], ' Encontrada'); 
	 	
		 end;
	  end;
	end;
	



Begin;	
	
CadastrarNotas();	
ListarNotas();	
BuscarNotas(5);

  
End.