Program Impar ;
var num: integer; 

Begin
   num:= 0;
while (num < 100) do

   begin
     
  // 	writeln('digite um numero at� acertar :D');
   // readln(num);  
        num:= num+1;
        
          
       if (num mod 2 <> 0) then     
			 writeln(num, ': � um numero IMPAR')
    
			 
			 else  			 
			  writeln(num, ': � um numero PAR'); 
     
            
	 
	 
	 end;
      
   	// textcolor(red);    writeln('num !!!'); 
End.