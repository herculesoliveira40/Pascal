                         Program ImparParNegativoPositivo ;
var N, N2, cont: integer; r, e: string;

Begin
     
   	writeln('Quantos numeros quer ler? ');
    readln(N);  
          cont:= 0;

       	     	while (cont < N) do
       	  //	 	while (N < N2) do
       	  //   	FOR N2:=0 to N do
			     	
		begin
		
		  
		       
		
		      
{ ---------------.--------------------.----------------------- FORRRRRRRRRRRRRRRRRRRR  }	    
         textcolor(red);  writeln('Digite o ', cont+1, 'º numero: ');
					readln(N2);
	
		if (N2 mod 2 <> 0) and (N2 < 0) then    
			 begin 
			 e:=(': ODD NEGATIVE')     
			end 
			
		else if (N2 mod 2 <> 0) and (N2 > 0) then   {Impar}
				begin 			 
				  e:=(': ODD POSITIVE');  
	  	 end
	{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }				
		else if (N2 mod 2 = 0) and (N2 < 0) then 
				begin 			 
				  e:=(': EVEN NEGATIVE');  
	  	 end
		else if (N2 mod 2 = 0) and (N2 > 0) then                      {PAR}
				begin 			 
				  e:=(': EVEN POSITIVE');  
	  	 end				
			
 	{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }
  	 
  	 
		else  
			begin 			 
			   e:=(': NULL');                               {NULL}
  	 end;
 	{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }  	          
					    
		{	     	while (N < 10) do
			     	
		begin
		N:= N+1; 
			textcolor(red);    	writeln(N,e);
		 
		end; 	
	 
        }   
     	        	writeln(N2,e);
     	
     	
     	cont:= cont+1;  
        	end;          
End.
            