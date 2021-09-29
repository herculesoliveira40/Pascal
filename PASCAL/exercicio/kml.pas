Program KML ;
Var distancia, litro, kml: real;   Var r: string;
Begin
  
writeln('Informe a distancia percorrida em quilometros: (OBS Utilize . para separar) ');
readln(distancia);  
writeln('Informe consumo: ');
readln(litro); 
				
				kml:=  (distancia / (litro));  textcolor( red ); textbackground (blue);				
				
																{
															if   imc <= (18.5) then      
									              Begin									            					              
									                r:= ('Abaixo do peso, se alimente bem! ');									                  
									              End
									              
											else	if (imc >= 18.6) and (imc <=24.9) then						 
									 							Begin									             
									                 r:= ('Peso de uma pessoa saudavel, parabens! ');  									                
									              End

											else	if (imc >= 25) and (imc <=29.9) then						 
									 							Begin									             
									                 r:= ('Peso em excesso, bora da uma equilibrada ae!  ');  									                
									              End
									
											else	if (imc >= 30) and (imc <=34.9) then						 
									 							Begin
									                 r:= ('Obesidade Grau I, atividade fisica e alimentação saudavel! ');  
									              End			

											else	if (imc >= 35) and (imc <=39.9) then						 
									 							Begin
									                 r:= ('Obesidade Grau II, atividade fisica e alimentação saudavel! ');  
									              End	
									              
										//	else	if (imc >= 40) then	
											else					 
									 							Begin
									                r:= ('Obesidade Grau III, procure um nutricionista urgentemente :/ ');   
									              End;	
									              
													writeln(' Sua classificação é: ', r);	
													}									              
				                	writeln(' O KM/L é de: ',kml:2:2);
				                	
				                	
				                	{
				                	   	textcolor(blue); textbackground(green);  writeln('       Aperte qualquer tecla para sair       ');
   	           readln();
   	           }
End.