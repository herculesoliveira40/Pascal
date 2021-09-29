Program Loja ;
var quantidade, total,tquantidade: real;								 var peca: integer; 							var resp: string;

Begin
	repeat  
	writeln('		!---------------------------------!');   
	writeln('		!    MENU DE COMPRAS::::::::::::: !');		
	writeln('		! CODIGO: (1) / Calça- R$: 55.50  !');
	writeln('		! CODIGO: (2) / Camisa- R$: 35.15 !');
	writeln('		! CODIGO: (3) / Sapato- R$: 60.30 !');
	writeln('		! CODIGO: (4) / Short- R$: 30.20  !');
	writeln('		!---------------------------------!');  
	textcolor (white); writeln('		Informe o codigo do produto para comprar: '); 
	readln(peca);
	     	while (peca < 1) or (peca > 4)  do      {Validar entre 1 e 4}

		begin   
   		writeln(' CODIGO invalido digite novamente, ');     
    readln(peca);  
       		end; 
					 					 			 	
	writeln('		Informe a quantidade que será comprada do item: '); 
	readln(quantidade);   
	
		case peca of
			1: begin
				total:= (total + (quantidade * 55.50));   			
				end;
			2: begin
				total:= (total + (quantidade * 35.15));  					
				end;	
			3: begin
				total:= (total + (quantidade * 60.30)); 						
				end;	
			4: begin
				total:= (total + (quantidade * 30.20)); 								
				end;	
       //   Else Writeln ('Digite a operação Novamente. Invalida');               
     End;    
           tquantidade:= (tquantidade+quantidade);	 
		writeln('	  DIGITE N para FINALIZAR a compra, OU 	Y para continuar. '); 
		readln(resp);	
		writeln('		Valor até agora é: ', total:2:2, 'R$');   
	until UpCase(resp) = 'N';
		 begin
		textcolor(red);  writeln('	FINALIZANDO...	');   
		writeln(' Quantidade de produtos comprados: ', tquantidade:2:0 );		
		writeln('		O total a pagar: ', total:5:2, 'R$');
		 end;
End.