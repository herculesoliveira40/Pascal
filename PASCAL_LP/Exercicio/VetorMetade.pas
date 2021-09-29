Program Metade ;
var x, y, i : integer;
var n: array [1..100] of real; 

Begin      
			  x:=1;	
			 writeln('Digite um numero: ');
			 readln(y);
			 n[x]:= y; 
			  
      { while (y<0) or (y>100) do
       begin
       	writeln('Valor invalido, digite novamente');
       	readln(y);   }
				    	    
        for i:= 1 to 99 do
        begin             
              writeln('N [', i, '] = ', n[x] :9:4); 
              n[x]:= n[x]/ 2;           
        end; 
End.