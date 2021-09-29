 Program SistemaEleitoral ;
var menu, voto : integer;
var Alberto, Daniela,  Vitor : integer; 
	// Hercules Oliveira das Merces ; RA: 019.676006
Begin
 repeat 
  clrscr;  
	  
	writeln('                         Menu Principal:: ');
	writeln('                         Escolha: ');
	writeln('1 = Registrar Votos');
	writeln('2 = Apuração dos Votos');
	writeln('3 = Finalizar a Eleição');
	readln(menu);  

	     	while (menu < 1) or (menu > 3)  do      {Validar MENU entre 1 e 3}
         
		begin   
				
   		writeln('Digite novamente Ae no primeiro while ');
	writeln('1 = Registrar Votos');
	writeln('2 = Apuração dos Votos');
	writeln('3 = Finalizar a Eleição');
	readln(menu);  
      end; 	

					  if (menu=1) then    
           Begin
               textcolor(white);          
							 													writeln(' Digite 1 = para Candidato Alberto: ');
                                     	  writeln(' Digite 2 = para Candidata Daniela: ');
                                			  writeln(' Digite 3 = para Candidato Vitor: ');
                                			  writeln(' Digite 4 = para menu anterior: '); 
            													  readln(voto);  
						                
						                   	while (voto < 1) or (voto > 4)  do      {Validar VOTO entre 1 e 4}
         
		begin   
				
   		writeln('Digite novamente no primeiro while ');
							 													writeln(' Digite 1 = para Candidato Alberto: ');
                                     	  writeln(' Digite 2 = para Candidata Daniela: ');
                                			  writeln(' Digite 3 = para Candidato Vitor: ');
                                			  writeln(' Digite 4 = para voltar ao Menu Principal: '); 
	readln(voto);  
      end; 	   														
														
														    if (voto = 1) then
						                    begin   
						                        writeln(' Você votou no Candidato Alberto: ');
						                        Alberto:= Alberto+1;
						                    end
						                    else if (voto = 2) then
						                    begin  
						                        writeln(' Você votou na Candidata Daniela: ');                             {Registrar Votos}
						                        Daniela:= Daniela+1;						                    
						                    end
						                    
						                    else if (voto = 3) then
						                    begin    
						                        writeln(' Você votou no Candidato Vitor: ');
						                        Vitor:= Vitor+1;						                    
						                    end;  
//	{Magica aqui}			   writeln(' Aperte qualquer tecla para retornar ao menu anterior: ');              		   
	//	 readkey; 
																end    
						
			else  if (menu=2) then
				 Begin
               textcolor(red);      	writeln( ' A quantidade de votos de Alberto foi:', Alberto);          {Apuração dos Votos}
                                      writeln( ' A quantidade de votos de Daniela foi:', Daniela);
                                      writeln(  ' A quantidade de votos de Vitor foi:', Vitor );
                                      textcolor(white);      writeln(' Aperte qualquer tecla para retornar ao menu anterior: ');              		   
		 readkey;                          
              End;   

					until (menu=3);      
                    Begin
               textcolor(blue);      	writeln(' Finalizando... ');                   {Finalizar}
               
                 if ( Alberto > Vitor) and  ( Alberto > Daniela)  then
                  begin
                      writeln( '  Alberto venceu a eleicao com: ', Alberto, ' votos! ');
                  end
           			else  if ( Daniela > Alberto) and  ( Daniela > Vitor)  then
                  begin
                      writeln( '  Daniela venceu a eleicao com: ', Daniela, ' votos! ');
                  end  
									  
									else  if ( Vitor > Alberto) and  ( Vitor > Daniela)  then
                  begin
                      writeln( '  Vitor venceu a eleicao com: ', Vitor, ' votos! ');
                  end 	           
                else
                  begin
                      writeln( '                  Houve EMPATE!');
                  end;                  
              End;   
    
End. 
