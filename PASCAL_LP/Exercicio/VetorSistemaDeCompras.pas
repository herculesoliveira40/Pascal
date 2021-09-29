Program VetorSistemaDeCompras ;
var escolha, i, j: integer;
var valor, vendatotal, quantidade : real;
vet: array [1..10] of integer;      ///////////////////STRING
cliente, produto: array [1..10] of string; 
Begin
repeat //
	writeln('____Escolha uma opção: ___');
	writeln('!------------------------!');   
	writeln('! 1 = Cadastrar Clientes !');
  writeln('! 2 = Cadastrar Produtos !');
  writeln('! 3 = Venda              !');
  writeln('! 4 = Relatório          !');
  writeln('! 5 = Sair               !');
  writeln('!________________________!');
  readln(escolha);
  
  
  
 	while (escolha < 1) or (escolha > 5)  do      {Validar entre 1 e 5}
	begin   
  writeln(' CODIGO invalido digite novamente, ');     
	readln(escolha);  
  end;
       		
   { ----------------------------------------}      		
		case escolha of 
	    1: begin
 				writeln(' Cadastrar Cliente '); 
				for i:= 1 to 10 do
				begin   
				if cliente[i,1] = '' then  	
					begin
						writeln('Informe  o codigo do cliente');
						readln(cliente[i,1]);
						writeln('Informe  o nome do cliente');
						readln(cliente[i,2]);						
						writeln('Informe  o telefone do cliente');
						readln(cliente[i,3]);					
					  break;
					end;
				end;		
			end;
	    2: begin
 				writeln(' Cadastrar Produtos '); 
				for j:= 1 to 10 do
				begin   
				if produto[j,1] = '' then  	
					begin
						writeln('Informe  o codigo do produto');
						readln(produto[j,1]);
						writeln('Informe  o nome do produto');
						readln(produto[j,2]);						
						writeln('Informe  o valor do produto');
						readln(produto[j,3]);					
					  break;
					end;
				end;				 			
			end;
	    3: begin
 				writeln(' Venda '); 
			{	writeln(' Informe o codigo do cliente'); 
				readln(cliente[i,1]);
				writeln(' Informe o codigo do produto'); 
				readln(produto[j,1]); 	
				writeln(' Informe a quantidade comprada'); 
				readln(quantidade); 
			//	vendatotal:= (quantidade * (produto[j,3]));		 }
			end;
	    4: begin
 				writeln(' Relatorio '); 			
			end;
 		  end;
	until (escolha) = 5;
			 begin
				textcolor(red);  writeln('	FINALIZANDO...	');   
			 end;  
      
End.