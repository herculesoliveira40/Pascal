Program DoisResto ;
var N, N2: integer; 

Begin
		writeln('Informe um numero para ver o resto: ');
		readln(N); 
  
	     	while (N < 1) or (N > 10000)  do      {Validar entre 1 e 10000}

		begin   
				
   		writeln('Digite novamente um numero para a tabuada, sendo o mesmo menor que 10.000 ');
    readln(N);  
      end;   		 
       		//   	N2:= 0;					 					 					  
       		//  	while (N2 < 100) do   
							  	FOR N2:=0 to 10000 do 	     {Intervalo até 10000}
					begin
						
					 
					  					  
		if (N2 mod N = 2) then   
       		begin       			
		    		writeln('Numero:', N2);  
						 
		    				   		  
         
              end;
            //  	N2:= N2+1;  	 		
     		  end; 
     		        		  
     						     		 
end.			

				 					 					        		