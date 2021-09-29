                         Program ImparParNegativoPositivo ;
var N, N2: integer; r, e: string;

Begin
     
   	writeln('digite um numero: ');
    readln(N);  
     	    
       	     	while (N < 10000) do
  			     	
		begin
		
		  
		if (N mod 2 <> 0) and (N < 0) then    
			 begin 
			 e:=(': ODD NEGATIVE')     
			end 
			
		else if (N mod 2 <> 0) and (N > 0) then   {Impar}
				begin 			 
				  e:=(': ODD POSITIVE');  
	  	 end
			
		else if (N mod 2 = 0) and (N < 0) then 
				begin 			 
				  e:=(': EVEN NEGATIVE');  
	  	 end
		else if (N mod 2 = 0) and (N > 0) then                      {PAR}
				begin 			 
				  e:=(': EVEN POSITIVE');  
	  	 end				
			
  
		else  
			begin 			 
			   e:=(': NULL');                               {NULL}
  	 end;
  	 
 
     	textcolor(red);         	writeln(N,e);
     	
     	
     	N:= N+1;  
        	end;          
End.                     {Hercules Oliviera das Mercês}
            




















