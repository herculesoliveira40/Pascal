                         Program Impar ;
var N, N2: integer; r, e: string;

Begin
     
   	writeln('digite um numero ');
    readln(N);  
       //   N2:= N+10;
       N2:= N+N;   
       	    
       	     	while (N < 10000) do
       	  //	 	while (N < N2) do
       	  //   	FOR N2:=0 to N do
			     	
		begin
		
		  
		       
		
		      
{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }	    
          
		if (N mod 2 <> 0) and (N < 0) then    
			 begin 
			 e:=(': ODD NEGATIVE')     
			end 
			
		else if (N mod 2 <> 0) and (N > 0) then   {Impar}
				begin 			 
				  e:=(': ODD POSITIVE');  
	  	 end
	{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }				
		else if (N mod 2 = 0) and (N < 0) then 
				begin 			 
				  e:=(': EVEN NEGATIVE');  
	  	 end
		else if (N mod 2 = 0) and (N > 0) then                      {PAR}
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
     	textcolor(yellow);         	writeln(N,e);
     	
     	
     	N:= N+1;  
        	end;          
End.
            




















