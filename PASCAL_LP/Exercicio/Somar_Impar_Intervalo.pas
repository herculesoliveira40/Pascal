Program S1071 ;
var X, Y, cont, soma, impar: integer; 

Begin
		writeln('Informe um numero: ');
		readln(X); 
		writeln('Outro numero ');
		readln(Y);
		
		impar:= 0;
		

       
        
    	while (X < Y) do
      	     	begin  	
							  X:= X+1; 					    
	   if(X < Y)  then  
				 begin  
				         
							if (X mod 2 <> 0) then 
		    		  impar:= impar+X;   
     		 end
     			    
          else 
				 begin           
		    		  impar:= impar;   
     		 end; 
                  
          
		  	end;    
		  			  	
	          	writeln(impar);  
  End.  
  
  
  {SOMAR IMPAR, no INTERVALO ENTRE X e Y }



