Program Impar ;
var num: integer; 

   begin
     
   	writeln('digite um numero Entre 1 e 1000');
    readln(num); 
    
    while (num < 1) or (num > 1000) do
        num:= num+1; 
        begin
       
          
       if (num mod 2 <> 0) then     
			 writeln(num, ': É um numero IMPAR')
    
			 
			 else  			 
			  writeln(num, ': É um numero PAR');  
           
	 
	 end;
      
   	// textcolor(red); 
End.