Program Pzim ;
var
	clientes : array[1..10, 1..3] of string;
	resp, cod_cliente, nome_cliente, nome_produto, valor_produto, codigoC : string;
	codigo, i, j : integer;
	total, valor_convert, quant_convert : real;
	c : word;
	
	procedure MenuPrincipal;
	begin
		  writeln('Menu Princial');
			writeln('1 - Cadastrar Clientes');
			writeln('2 - Pesquisar Cliente');
			writeln('3 - Vendas');
			writeln('4 - Relatórios');
			writeln('5 - Sair');			
	end;
	
	procedure CadastrarClientes;
	begin
	 		writeln('Rotina de Cadastro do Cliente');
			for i:=1 to 10 do
			begin
				if clientes[i,1] = '' then
				begin
					 writeln('Informe o codigo do cliente'); 
					 readln(clientes[i,1]);
					 writeln('Informe o nome do cliente');
					 readln(clientes[i,2]);
					 writeln('Informe o telefone do cliente');
					 readln(clientes[i,3]);						 
					 break;
				end;
			end; 
	end;
	
	function ValidaCliente(codigo : string) : boolean;
	begin
		 for i:=1 to 10 do
		 begin
		 		if codigo = clientes[i,1] then
		 		begin
		 			 ValidaCliente := true;
		 			 break;
		 		end
		 		else
		 		begin
		 			ValidaCliente := false;
		 		end;
		 end;
	end;
	
Begin
	repeat
		
		MenuPrincipal;
		
		writeln('Informe o codigo');
		readln(codigo);
		case codigo of
			1:Begin
				//Cadastrar Clientes
				CadastrarClientes;
			end;
			2:Begin
					writeln('Informe o codigo que deseja pesquisar');
					readln(codigoC);
					while ValidaCliente(codigoC) = false do
					begin
					   writeln('Cliente não encontrado');
					   writeln('Informe o codigo que deseja pesquisar');
						 readln(codigoC);
					end;										
			end;
			3:Begin
				
			end;
			4:Begin
				
			end;
			5:Begin
				//Sair
			end;
		End;
		writeln('Deseja realizar outra operação [S/N]');
		readln(resp);
		clrscr;
	until UpCase(resp) = 'N';	  
End.