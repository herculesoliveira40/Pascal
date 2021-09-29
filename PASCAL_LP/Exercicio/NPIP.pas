Program Impar ;
var num, num2: integer; r, e: string;

Begin
     
   	writeln('digite um numero Menor que 10000');
    readln(num); 
    
     	while (num > 10000) do
		begin
			textcolor(red);    	writeln('Digite novamente Entre 1 e 10.000:)');
			readln (num);  
			 num:= num+1; 
		end; 
     
{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }	    
          
       if (num mod 2 <> 0) then    
			 begin 
			 e:=(': ODD')     {Impar}
			end 
   	 else if  (num = 0) then 
			begin 			 
			  e:=(': ');  
  	 end
  	 else  
			begin 			 
			  e:=(': EVEN');   {PAR}
  	 end;
  	 
  	        
   { ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }
          
       if (num < 0) then  
			 begin   
			 					r:=(' NEGATIVE');
			 end
   	 else if (num > 0) then 			 
			 begin   
			 					r:=(' POSITIVE');  
			 end  
			
			else
			 begin   
			 					r:=(' NULL');  
			 end; 			 	 
          
      //writeln(num,e,r);     
{ ---------------------------------------------------------- FORRRRRRRRRRRRRRRRRRRR  }          
          Begin
   num2:= 10;
  
while (num <= num2) do
     
   begin    
  textcolor(red);  writeln(num,e,r);    
        num:= num+1;
      
        
       
              
   end;           
       
   	 textcolor(red);     
   	  end;
   	// textcolor(red); 
End.
            




















