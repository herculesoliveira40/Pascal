Program VetorSistemaDeCompras ;
var
	produtos : array[1..10, 1..3] of string;
	clientes : array[1..10, 1..3] of string;
	vendas	 : array[1..10, 1..4] of string;
	resp, cod_cliente, nome_cliente : string;
	codigo,quantidade, i, j : integer;
	var  totalcliente, precoproduto, totalcomprascliente : real;
	 Erro:Integer;
													
Begin
	repeat
	writeln('____Escolha uma opção: ___');
	writeln('!------------------------!');   
	writeln('! 1 = Cadastrar Clientes !');
  writeln('! 2 = Cadastrar Produtos !');
  writeln('! 3 = Venda              !');
  writeln('! 4 = Relatório          !');
  writeln('! 5 = Sair               !');
  writeln('!________________________!');
  readln(codigo);
   
  
 	while (codigo < 1) or (codigo > 5)  do      {Validar entre 1 e 5}
	begin   
  writeln(' CODIGO invalido digite novamente, ');     
	readln(codigo);  
  end;
		
		case codigo of
			1:Begin			
				writeln(' -----> Cadastro do Cliente... <-----');
				writeln();
				for i:=1 to 10 do
				begin
					if clientes[i,1] = '' then
					begin
						 writeln('Informe o codigo do cliente: '); 
						 readln(clientes[i,1]);
						 writeln('Informe o nome do cliente: ');
						 readln(clientes[i,2]);
						 writeln('Informe o telefone do cliente: ');
						 readln(clientes[i,3]);						 
						 break;
					end;
				end; 
			end;
			2:Begin	
				writeln('-----> Cadastro de Produto... <-----');
					writeln();
				for i:=1 to 10 do
				begin
					if produtos[i,1] = '' then
					begin
						writeln('Informe o codigo do produto: ');	
						readln(produtos[i,1]);
						writeln('Informe o nome do produto: ');
						readln(produtos[i,2]);
						writeln('Informe o valor do produto: ');
						readln(produtos[i,3]);
						break;
					end;
				end;
			end;
			3:Begin
				writeln('-----> Venda... <-----');
				writeln();
				for i:=1 to 10 do
				begin
					if vendas[i,1] = '' then
					begin
						writeln('Informe o codigo da venda: ');
						readln(vendas[i,1]);
						writeln('Informe o codigo do cliente: ');
						readln(vendas[i,2]);
						writeln('Informe o codigo do produto: ');
						readln(vendas[i,3]);
						writeln('Informe a quantidade desejada: ');
						readln(vendas[i,4]);
						break;
					end;
				end;
			end;
			4:Begin
			  	writeln('-----> Relarorio... <-----');
			  	writeln();
				writeln('Informe o codigo do cliente: ');
				readln(cod_cliente);
				
				for i:=1 to 10 do
				begin
					if cod_cliente = vendas[i,2] then
					begin
						for j:=1 to 10 do
						begin
							if cod_cliente = clientes[j,1] then
							begin
								 nome_cliente := clientes[j,2];
								 break;
							end;
						end;
						
				 Val(produtos[i,3], precoproduto, Erro);  //converter para integer
				Val(vendas[i,4], quantidade, Erro);  //converter para integer 
				
				totalcliente:= (precoproduto * quantidade);
				totalcomprascliente:= totalcliente + totalcomprascliente;
				textcolor(white);		writeln(' - Nome do Cliente: ',nome_cliente);
				writeln('- Produto: ', produtos[i,2]);	
				writeln('- Quantidade: ', quantidade :9:0);
				writeln('- Valor do Produto: ', precoproduto :9:2);	
				writeln('- Total do Pedido: ', totalcliente:9:2);	
				writeln('- Total a Pagar: ', totalcomprascliente:9:2);	
					end;
				end;
			end;
			5:Begin
					writeln('--- Saiu do Sistema de Compras --- '); 
					    exit;   //halt;					
			end;
		End;
		writeln('Deseja realizar outra operação [S/N]');
		readln(resp); 
		clrscr;
	until UpCase(resp) = 'N'; 	writeln('--- Sistema de Compras Finalizado --- '); 
End.