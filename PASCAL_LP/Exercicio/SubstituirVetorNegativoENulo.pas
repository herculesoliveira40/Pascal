Program SubstituirVetorNegativoENulo ;
var x, y : integer;
var vet: array [1..11] of integer; 

Begin


	    for x:= 1 to 5 do
	    	begin
			    writeln('Digite o ', x, ' numero');
			    readln(vet[x]);
	        writeln('           Guardado: X', '[', x, ']  = ',  vet[x]); 
				end;
	
       	    for x:= 1 to 5 do  
	    	begin
	    		if  ( vet[x] <= 0 ) then
						begin
						vet[x]:= 1 ;
					 end
					else ; 
	    	
	   	textcolor(red); writeln('        MUDANÇA ...');   
		writeln('X', '[', x, ']  = ', vet[x]);  	
	end;	    
  
End.