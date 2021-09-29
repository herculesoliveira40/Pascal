Program TentarRegistro ;
type registro_cliente  = record
			codigo_cliente   : integer;
			nome_cliente     : string;
			telefone_cliente : integer;
		end;
type registro_funcionario  = record
			codigo_funcionario   : integer;
			nome_funcionario     : string;
			telefone_funcionario : integer;
		end;		
type registro_produto    = record
			codigo_produto     : integer;
			nome_produto  		 : string;
			preco_produto			 : real;
			quantidade_produto : integer;
		end;	
{------------------------------------}
 type registro_venda = record
			codigo_venda   : integer;
      codigo_funcionario   : integer;
			codigo_cliente   : integer; 
      codigo_produto     : integer;
			quantidade_produto : integer;
			dia  : integer;
			mes  : integer;
			ano  : integer;
		end;      
{------------------------------------}




		
			
var
	cliente : array[1..10] of registro_cliente;	
	funcionario : array[1..10] of registro_funcionario;	
	produto : array[1..10] of registro_produto;	
	venda : array[1..10] of registro_venda;
	i : integer;
Begin
   writeln('Cadastrando Clientes'); 
   for i:=1 to 10 do
   begin
			writeln('Informe o codigo do cliente');   	
			readln(cliente[i].codigo_cliente);
			writeln('Informe o nome do cliente');
			readln(cliente[i].nome_cliente);
			writeln('Informe o telefone do cliente');
			readln(cliente[i].telefone_cliente);
			break;
   end;
   

/////////////////////////////////////////////////////////////////////////////////////////////

   writeln('Cadastrando Funcionarios'); 
   for i:=1 to 10 do
   begin
			writeln('Informe o codigo do funcionario');   	
			readln(funcionario[i].codigo_funcionario);
			writeln('Informe o nome do funcionario');
			readln(funcionario[i].nome_funcionario);
	//		writeln('Informe o telefone do funcionario');
	//		readln(funcionario[i].telefone_funcionario);
			break;
   end;
	 

/////////////////////////////////////////////////////////////////////////////////////////////	    
   
   writeln('Cadastrando Produtos');
   for i:=1 to 10 do
   begin
   		writeln('Informe o codigo do produto');
   		readln(produto[i].codigo_produto);
   		writeln('Informe o nome do produto');
   		readln(produto[i].nome_produto);
   		writeln('Informe o valor do produto');
   		readln(produto[i].preco_produto);
   		break;
   end;
  
End.