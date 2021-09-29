Program Dobro ;
var x, y, i : integer;
var vet: array [1..11] of integer; 

Begin      
	
	
			 writeln('Digite um numero');
			 readln(y);
       while (y<0) or (y>50) do
       begin
       	writeln('Valor invalido, digite novamente');
       	readln(y);
       end;
 	 	
	    for i:= 1 to 10 do
	    	begin
	      if i = 1 then
	      begin 
	          vet[i]:= y;
	      
	      end
	      else   
	      begin
	        vet[i]:= y;
	      
	   
			     vet[i]:= vet[i-1 ] *2;
				end;
				end;
        for i:= 1 to 10 do
        begin
              writeln('vet[ ', i, '] = ', vet[i]);
        end;
  
End.