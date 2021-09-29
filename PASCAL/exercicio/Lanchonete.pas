Program Lanchonete ;
var quantidade, total,tquantidade: real;								 var peca: integer; 							var resp: string;

Begin
	repeat  
	writeln('		!--------------------------------------------!');   
	writeln('		!               MENU DE COMPRAS::::::::::::: !');		
	writeln('		! CODIGO: (1) / Cachorro Quente :  R$: 4.00  !');
	writeln('		! CODIGO: (2) / X-Salada : R$: 4.50          !');
	writeln('		! CODIGO: (3) / C-Bacon: R$: 5.00            !');
	writeln('		! CODIGO: (4) / Torrada Simples: R$: 2.00    !');
	writeln('		! CODIGO: (5) / Refrigerante: R$: 1.50       !');
	writeln('		!--------------------------------------------!');   
	textcolor (white); writeln('		Informe o codigo do produto para comprar: '); 
	readln(peca);
	     	while (peca < 1) or (peca > 5)  do      {Validar entre 1 e 5}

		begin   
   		writeln(' CODIGO invalido digite novamente, ');     
    readln(peca);  
       		end; 
					 					 			 	
	writeln('		Informe a quantidade que será comprada do item: '); 
	readln(quantidade);   
	
		case peca of
			1: begin
				total:= (total + (quantidade * 4.00));   			
				end;
			2: begin
				total:= (total + (quantidade * 4.50));  					
				end;	
			3: begin
				total:= (total + (quantidade * 5.00)); 						
				end;	
			4: begin
				total:= (total + (quantidade * 2.00)); 								
				end;	
			5: begin
				total:= (total + (quantidade * 1.50 )); 								
				end;				
       //   Else Writeln ('Digite a operação Novamente. Invalida');               
     End;    
           tquantidade:= (tquantidade+quantidade);	 
		writeln('	  DIGITE N para FINALIZAR a compra, OU 	Y para continuar. '); 
		readln(resp);	
		
			   	while (resp <> 'y') and (resp <> 'Y') and  (resp <> 'n') and (resp <> 'N')  do     
			///////////////////// Validar MENU entre Y e N
         
		begin   
				
   		writeln('Digite novamente Ae  ');
			writeln('	  DIGITE N para FINALIZAR a compra, OU 	Y para continuar. '); 

	readln(resp);  
      end; 	       
		
		writeln('		Valor até agora é: ', total:2:2, 'R$');   
		
	until UpCase(resp) = 'N';
		 begin
		textcolor(red);  writeln('	FINALIZANDO...	');   
		writeln(' Quantidade de itens comprados: ', tquantidade:5:0 );		
		writeln('		O total a pagar: ', total:5:2, 'R$');
		 end;
End.