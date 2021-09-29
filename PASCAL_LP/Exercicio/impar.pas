Program Impar ;
var num: integer; 

Begin
   num:= 0;
while (num < 100) do

   begin
     
  // 	writeln('digite um numero até acertar :D');
   // readln(num);  
        num:= num+1;
        
          
       if (num mod 2 <> 0) then     
			 writeln(num, ': É um numero IMPAR')
    
			 
			 else  			 
			  writeln(num, ': É um numero PAR'); 
     
            
	 
	 
	 end;
      
   	// textcolor(red);    writeln('num !!!'); 
End.