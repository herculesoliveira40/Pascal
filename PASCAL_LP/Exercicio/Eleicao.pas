 Program SistemaEleitoral ;
var menu, voto : integer;
var Alberto, Daniela,  Vitor : integer; 

Begin
 repeat 
  clrscr;  
	  
	writeln('                         Menu Principal:: ');
	writeln('                         Escolha: ');
	writeln('1 = Registrar Votos');
	writeln('2 = Apura��o dos Votos');
	writeln('3 = Finalizar a Elei��o');
	readln(menu);  
	//////////////////////////////////////////////////////////////////////////	
	     	while (menu < 1) or (menu > 3)  do      {Validar MENU entre 1 e 3}
         
		begin   
				
   		writeln('Digite novamente Ae no primeiro while ');
	writeln('1 = Registrar Votos');
	writeln('2 = Apura��o dos Votos');
	writeln('3 = Finalizar a Elei��o');
	readln(menu);  
      end; 	
//////////////////////////////////////////////////////////////////////////	
	
	
					  if (menu=1) then    
           Begin
               textcolor(white);          
							 													writeln(' Escolha 1 = para Candidato Alberto: ');
                                     	  writeln(' Escolha 2 = para Candidata Daniela: ');
                                			  writeln(' Escolha 3 = para Candidato Vitor: ');
                                			  writeln(' Escolha 4 = para menu anterior: '); 
            													  readln(voto);  
						                
						                   	while (voto < 1) or (voto > 4)  do      {Validar VOTO entre 1 e 4}
         
		begin   
				
   		writeln('Digite novamente no primeiro while ');
							 													writeln(' Escolha 1 = para Candidato Alberto: ');
                                     	  writeln(' Escolha 2 = para Candidata Daniela: ');
                                			  writeln(' Escolha 3 = para Candidato Vitor: ');
                                			  writeln(' Escolha 4 = para menu anterior: '); 
	readln(voto);  
      end; 	   
														
														
														    if (voto = 1) then
						                    begin
						                        writeln(' Voc� votou no Candidato Alberto: ');
						                        Alberto:= Alberto+1;
						                    end
						                    else if (voto = 2) then
						                    begin
						                        writeln(' Voc� votou na Candidata Daniela: ');                             {Registrar Votos}
						                        Daniela:= Daniela+1;						                    
						                    end
						                    
						                    else if (voto = 3) then
						                    begin
						                        writeln(' Voc� votou no Candidato Vitor: ');
						                        Vitor:= Vitor+1;						                    
						                    end;
																end
//////////////////////////////////////////////////////////////////////////								
			else  if (menu=2) then
				 Begin
               textcolor(red);      	writeln( ' A quantidade de votos de Alberto foi:', Alberto);          {Apura��o dos Votos}
                                      writeln( ' A quantidade de votos de Daniela foi:', Daniela);
                                      writeln(  ' A quantidade de votos de Vitor foi:', Vitor );
                                      
              End;   
            
 //////////////////////////////////////////////////////////////////////////	 
               
 
		 writeln(' Aperte 4 para retornar ao menu anterior: '); 
   	  //  readkey;          { ----------->     SE LIGA Aqui krl SLKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK  <------ }
			       
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
                      writeln( '  Daniela venceu a eleicao com: ', Daniela, ' votos! ');
                  end 	           
                else
                  begin
                      writeln( '                   EMPATE!');
                  end;                  
              End;   
             
      
End. 
