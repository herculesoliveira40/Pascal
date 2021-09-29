Program NotasMatrizProcedure ; 
var media : real;
nome: array[1..5] of string;
notas : array[1..5, 1..5] of real;
var i : integer;    
Procedure Relatorio;
	begin
	 	for i:= 1 to 3 do
 		begin
 		media:= ((notas[i,1] + notas[i,2] ) /2);
		writeln('Nomes: ', nome[i], ' - Nota 1: ', notas[i,1]:3:2, ' - Nota 2: ', notas[i,2]:3:2, ' - Media: ',media:3:2 );
	
		writeln( );
	  	end;
	end;				


Begin  
 		for i:= 1 to 3 do   
 		begin 		
  	 writeln('Digite seu nome:');
			readln(nome[i]); 
						
			
  	 writeln('Digite sua 1 notas:');
			readln(notas[i,1]);   
			
  	 writeln('Digite sua 2 notas:');
			readln(notas[i,2]);  
			end;
		 
   Relatorio();
   
End.














{
 Program Pzim ; 
var prova1, prova2, media : real;
nome: array[1..5] of string;
notas : array[1..5, 1..5] of real;
var i,j, k : integer;    
Procedure Relatorio;
	begin
	 	for i:= 1 to 5 do
 		begin
		writeln('Nomes: ', nome[i]);
		end;
		for j:= 1 to 5 do
		begin
		writeln('Nota 1: ', notas[j,1],'Nota 2: ', notas[j,2] );
	  	end;
	end;				


Begin  
 		for i:= 1 to 5 do   
 		begin 		
  	 writeln('Digite seu nome:');
			readln(nome[i]); 
		end;				
		for j:= 1 to 5 do
 		begin 		
  	 writeln('Digite sua 1 notas:');
			readln(notas[j,1]);   
  	 writeln('Digite sua 2 notas:');
			readln(notas[j,2]);  
		end;   
   Relatorio();
   
End.  
}   