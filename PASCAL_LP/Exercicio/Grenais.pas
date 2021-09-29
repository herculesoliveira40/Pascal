Program Grenivis ;
var golsinter, golsgremio, resp, vitoriasgremio, vitoriasinter, empate, numerogrenais  : integer; 
//Hercules Oliveira das Mercês
Begin
    vitoriasgremio:= 0; vitoriasinter:= 0;  empate:= 0; numerogrenais:= 0;
	repeat
//	clrscr; 
		begin
		writeln('Quantos gols fez o INTER?');
		readln(golsinter);	
		writeln('Quantos gols fez o GREMIO?');
		readln(golsgremio);
				
		if (golsgremio > golsinter) then
		begin
			vitoriasgremio:= vitoriasgremio+1;
		//	writeln(' GREMIO ganhou');	
		end
	
		else if (golsinter > golsgremio) then
		begin
			vitoriasinter:= vitoriasinter+1; 
		//	writeln(' INTERNACIONAL ganhou');	
		end	
		
		else
		begin
			empate:= empate+1;
		//	writeln(' EMPATE ');	
		end;		
			numerogrenais:= numerogrenais+1;
		end;
								  
	  writeln('  '); writeln('  ');	writeln('	>>>>>  Novo Grenal?  Digite 1=SIM , ou 2=NAO <<<<< '); 
		readln(resp);
			  while (resp < 1) or (resp > 2)  do      {Validar resp entre 1 e 2}       
		begin   
		writeln('  '); writeln('  ');	writeln('Opção invalida. Para continuar:	Digite 1=SIM , ou 2=NAO <<<<< '); 
		readln(resp);  
    end;
	until (resp) = 2;  textcolor(white); writeln('  ');

	   writeln('* Numeros de Grenais: ', numerogrenais);
	   writeln('* Vitorias do INTER: ',vitoriasinter);
   	 writeln('* Vitorias do GREMIO: ', vitoriasgremio);
		 writeln('* EMPATES: ', empate);
		 		 
		if (vitoriasgremio > vitoriasinter) then
		begin			
			writeln('* GREMIO venceu mais ');	
		end	
		else if (vitoriasinter > vitoriasgremio) then
		begin
			writeln('* INTER venceu mais');	
		end			
		else
		begin
			writeln('* Não Houve vencedor');	
		end;		
	End. 	 
