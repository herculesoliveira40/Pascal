   program ABC;
	 Var salario, salarioreajuste,dif : real;  Var r: string;
   
   Begin
// Writeln ('Informe seu salario: 1- Entre 0 e 400, 2- Entre 400.01 e 800, 3-Entre 800.01  e 1200, 4- Acimda de 2000 ');              
  		
				Writeln ('Informe seu salario:' );				
				Readln (salario);		
					
  			Writeln;
  			 	textcolor( white ) ; 
   //  Case salario Of
								
											if   salario <= 400 then
									              Begin
									              salarioreajuste:= salario + (salario*0.15);									              
									            //    Writeln ('Reajuste de : 15%');
									                  r:= ('Reajuste de : 10%');  
									              End
									   
											else if (salario > 400) and (salario <=800) then 
											         Begin
									           		salarioreajuste:= salario + (salario*0.12);
									             //   Writeln ('Reajuste de : 12%'); 	
															 			r:= ('Reajuste de : 10%');  					                
									              End
																								 
											else	if (salario > 800) and (salario <=1200) then						 
									 							Begin
									              salarioreajuste:= salario + (salario*0.10);
									             //   Writeln ('Reajuste de : 10%');  
									                  r:= ('Reajuste de : 10%');  
									              End
									   
											else	if (salario > 1200) and (salario <=2000) then						 
									 							Begin
									              salarioreajuste:= salario + (salario*0.07);									            
									              //  Writeln ('Reajuste de : 7%'); 
									                  r:= ('Reajuste de : 10%');  
									              End
											else	if (salario < 2000) then						 
									 							Begin
									              salarioreajuste:= salario + (salario*0.05); 									              								
									              //  Writeln ('Reajuste de : 05%');
									              r:= ('Reajuste de : 05%');
									              End;															
         
        									//	  Else;
					
															//			 	begin
														 //Writeln ('Informe um valor valido')	 
																	 
													  //   End;                 
													 													 textcolor( red );
																									    writeln ('Seu novo salario ajustado é: ', salarioreajuste:0:2, ' RS');   
																									    	 dif:= salarioreajuste-salario;
																									    	  textcolor( lightcyan ); 
																									    writeln ('Diferença de: ', dif:0:2, ' RS');  
																									    writeln( r ); 
   End.    

