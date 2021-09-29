Program CompraVetor ;
var v, codigo, quantidade: integer;   
 var  total, subtotal, submenor, submaior,  posicaomaior, posicaomenor : real;
   resp : string;
vcod: array [1..5] of integer;

Begin

repeat
	writeln(' Loja de compras');
	writeln(' Codigo   - Produto - Preco '); 
	writeln(' Codigo 1 - Camisa - 15.00 R$');
	writeln(' Codigo 2 - Short - 35.50 R$');
	writeln(' Codigo 3 - Calça - 45.90 R$');
	writeln(' Codigo 4 - Sapato - 35.60 R$');
	writeln(' Escolha o codigo correspondente');
	readln(codigo);

begin
		writeln('Digite a quantidade de produto');
		readln(quantidade);
end;


	Case codigo of
			1: begin
				subtotal:= ( quantidade * 15.00  );   
				total:= (total + subtotal);
				end;
			2: begin
				subtotal:= ( quantidade * 35.50  ); 
				total:= (total + subtotal);  			
				end;	
			3: begin
				subtotal:= ( quantidade * 45.90  ); 
				total:= (total + subtotal);  						
				end;	
			4: begin
				subtotal:= ( quantidade * 35.60  );   
				total:= (total + subtotal);  								
				end;	
				
 		 Else Writeln ('Codigo  Invalida');               
     End; 

     	writeln('subtotal: ', subtotal:9:2); 

      if subtotal <= vcod[1] then
			begin
			 submenor:= subtotal;
			  posicaomenor:= v;
			end
			else if subtotal >= vcod[1] then
			begin
			 submaior:= subtotal;
			 posicaomenor:= v;
			end;			  
              

		writeln('	  DIGITE N para FINALIZAR a compra, OU 	Y para continuar. '); 
		readln(resp);	
		
until UpCase(resp) = 'N';
	begin
	writeln('Total: ', total:9:2);
	writeln('Posicao Menor Subtotal: ', posicaomenor:9:2);
	writeln('Posicao Maior Subtotal: ', posicaomaior:9:2);
		writeln('Menor Subtotal: ', submenor:9:2);
	writeln('Maior Subtotal: ', submaior:9:2);
	
	writeln(' 					FIM...');
	end;    
End.