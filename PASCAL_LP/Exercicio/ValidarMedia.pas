              Program Pzim ;

var 
	nota1, nota2, nota3, soma, media:real;
Begin  
	writeln('Digite sua primeira nota:');
	readln (nota1); 	
 	while ((nota1 < 0) or (nota1 > 10)) do 
		begin
			textcolor(red);    	writeln('Digite novamente primeira nota (valida somente maior que 0 e Menor ou igual a 10:)');
			readln (nota1);
		end; 


	writeln('Digite sua segunda nota nota:');
	readln (nota2);	
 	while ((nota2 < 0) or (nota2 > 10)) do 
		begin
			textcolor(red);    	writeln('Digite novamente segunda nota (valida somente maior que 0 e Menor ou igual a 10:)');
			readln (nota2);
		end;
		 	 	
	writeln('Digite sua teceira nota nota:');
	readln (nota3);	
 	while ((nota3 < 0) or (nota3 > 10)) do 
		begin
			textcolor(red);    	writeln('Digite novamente teceira nota (valida somente maior que 0 e Menor ou igual a 10:)');
			readln (nota3);
		end; 
		
		
		  
			media:= (nota1+nota2+nota3)/3;                
	                  






	  
	   if (media >= 6) then
	   begin
			 writeln('A media é: ', media:0:2, ' Aprovado Direto :D ');
		end	

		else if (media < 6)  and (media >= 3) then
	 begin	 	
		writeln('A media é: ', media:0:2, ' Recuperacao :X ');	 
	 end
	                                          	 
		else if (media < 3)  then
		begin
			writeln('A media é: ', media:0:2, ' Reprovado Direto ;-;');	 
		end
	
	
	{			
	else
		begin
		   writeln('Enquanto as notas forem menor que zero, mostrar na tela a seguinte informação “Notas invalidas, por favor informar nota maior ou igual a zero”');
		end; 	
 }
End.