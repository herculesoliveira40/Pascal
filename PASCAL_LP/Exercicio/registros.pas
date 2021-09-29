Program Pzim ;
type registro = record
			codigo   : integer;
			nome     : String;
			telefone : integer;
		end;
		
type reg_produtos = record
			codigo     : integer;
			descricao  : string;
			quantidade : integer;
			valor			 : real;
		end;		
var
	clientes : array[1..10] of registro;	
	produtos : array[1..10] of reg_produtos;	
	i : integer;
Begin
   writeln('Cadastrando Clientes'); 
   for i:=1 to 10 do
   begin
			writeln('Informe o codigo do cliente');   	
			readln(clientes[i].codigo);
			writeln('Informe o nome do cliente');
			readln(clientes[i].nome);
			writeln('Informe o telefone do cliente');
			readln(clientes[i].telefone);
			break;
   end;
   writeln('Cadastrando Produtos');
   for i:=1 to 10 do
   begin
   		writeln('Informe o codigo do produto');
   		readln(produtos[i].codigo);
   		writeln('Informe a descricao do produto');
   		readln(produtos[i].descricao);
   		writeln('Informe a quantidade do produto');
   		readln(produtos[i].quantidade);
   		writeln('Informe o valor do produto');
   		readln(produtos[i].valor);
   		break;
   end;
   //Desafio
   
   // Informe o codigo do produto
	 // Criar uma função que retorne o total dos produtos (Real)
   // Criar uma função que valide se o cliente existe (Booleano)
 
End.