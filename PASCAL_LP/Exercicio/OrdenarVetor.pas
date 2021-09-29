Program OrdenarVetor ;

var i, menor, posi :integer;
  Nvet:Array [1..10] of integer;  
Begin 
		menor:= 99999999999; 
  for i:= 1 to 5 do       ///// 10
  	begin
  
    writeln('Digite o ', i, ' numero: ');
    readln( Nvet[i]);  
        end;  
 										 write(' Numeros: ');    //////////
									    for i:= 1 to 5 do      ///// 10
									  	begin 
											
											 write( Nvet[i], ', ');   
									
									
									     end; 
									         
     
    if Nvet[i] < menor then  
    begin
    menor:= Nvet[i];
    posi:= i;
		end;
    
                 

									     
									     writeln();
									     writeln('O menor numero é o: ', menor); {'.  Na posição: ', posi);  }
									     
End.