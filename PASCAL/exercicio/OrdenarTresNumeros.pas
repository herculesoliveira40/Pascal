Program OrdenarTresNumeros ;
var n1, n2, n3: integer;
Begin
           writeln('Digite 3 valores: ');
           readln(n1,n2,n3);
           writeln();
        //  Hercules Oliveira das Mercês  clrscr;
           textcolor(blue);     writeln('             Ordenando......... : ');
	         
           if (n1 < n2) and (n1 < n3) then
           begin
            if (n2 < n3) then
	           begin
	            //  writeln(n1, n2,n3);
	              writeln(n1);
								writeln(n2);
								writeln(n3);
	           end
           else
           begin
            //  writeln(n1, n3, n2);
            	  writeln(n1);
								writeln(n3);
								writeln(n2);
           end;	           
           end           
	{------------------------------------------}                              
          else  if (n2  < n1) and (n2  < n3) then
           begin
            if (n1  < n3) then
	           begin
	          //    writeln(n2, n1, n3);
	              writeln(n2);
								writeln(n1);
								writeln(n3);						  
	           end
           else
           begin
          //    writeln(n2, n3, n1);  
	              writeln(n2);
								writeln(n3);
								writeln(n1);       
			     end;	           
           end
 	{------------------------------------------}           
       else 
           begin
            if (n1  < n2) then
	           begin
	          //    writeln(n3, n1, n2);
	              writeln(n3);
								writeln(n1);
								writeln(n2);	          
	           end
           else
           begin
          //    writeln(n3, n2, n1);
	              writeln(n3);
								writeln(n2);
								writeln(n1);          
           end;	           
           end;					 
	{------------------------------------------}
					  writeln();
					  writeln(' Numeros digitados anteriormente desordenados:');
					  writeln(n1);	writeln(n2); writeln(n3);          
End.