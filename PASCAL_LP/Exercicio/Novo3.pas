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
	//		quantidade_produto : integer;
		end;	

 type registro_venda = record
			codigo_venda   : integer;
      codigo_funcionario   : integer;
			codigo_cliente   : integer; 
      codigo_produto     : integer;
			quantidade_produto_vendido : integer;
			dia  : integer;
			mes  : integer;
			ano  : integer;
		end;     

			
							var       { ** Variaveis **  }
menu1,menu2, menu3, menu4, quantidade, codigoproduto, opcao : integer;
total, totcomb, litroscomb : real;
resp : string;
	cliente : array[1..10] of registro_cliente;	
	funcionario : array[1..10] of registro_funcionario;	
	produto : array[1..10] of registro_produto;	
	venda:    array[1..10] of registro_venda;	
	i : integer;
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure Cadastro;       { ** Procedure **  }
	Begin
  writeln(' ---------> Menu Cadastro <--------- ');
		writeln('!---------------------------------------!');   
    writeln('! [1] - Cadastrar Clientes              !');
    writeln('! [2] - Cadastrar Funcionários          !');
    writeln('! [3] - Cadastrar Produtos              !');
    writeln('! [4] <--- Voltar para o Menu Principal !');
	  writeln('!_______________________________________!');  
    	  readln(menu2);
	
	  while (menu2 < 1) or (menu2 > 4)  do      { ** Laco Case - Validar entre 1 e 4 **}
		begin   
		  writeln(' OPCAO invalido digite novamente, ');     
			readln(menu2);  
	  end; 
	  case menu2 of                 { ** Laco Case **  }
	
	    1: begin  
	    	writeln('Cadastrar Clientes');
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
				 
	    end;
	
	    2: begin
				writeln('Cadastrar Funcionários');
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
			  				
	    end;
	
	    3: begin
	     		writeln('Cadastrar Produtos');
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
	    						
	    end;                
	    
	  
			4: begin  
						writeln(' <--- Voltar para o Menu Principal - '); 
							
			end;
		end;    
	 End;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

///////////////////////////////////////////////////////////////////////////

Begin 
textcolor(white);
	repeat               			{ ** Laco Repeat **  }
		writeln('____Escolha uma opção: ___');
		writeln('!-------------------------!');   
		writeln('! [1] = Cadastros         !');
	  writeln('! [2] = Vendas            !');
	  writeln('! [3] = Relatórios        !');
	  writeln('! [4] = Sair              !');
	  writeln('!_________________________!');	   
	  readln(menu1);
	
	  while (menu1 < 1) or (menu1 > 4)  do      { ** Laco Case - Validar entre 1 e 4 **}
		begin   
		  writeln(' OPCAO invalido digite novamente, ');     
			readln(menu1);  
	  end;                    
	  writeln(''); writeln('');
	  
	  case menu1 of                 { ** Laco Case **  }
	
	    1: begin
	    Cadastro;    
	    //	writeln('Cadastros'); 
	    end;
	    2: begin
	  //  Vendas;    
	      	writeln('Vendas'); 	
	    end;
	    3: begin
       //   Relatorio;
	     		writeln('Relatorios');
					 
	    						for i:=1 to 10 do
	    						   begin
   		writeln('Informe o codigo do produto');
   		readln(produto[i].codigo_produto);
   		writeln('Informe a quantidade do produto');
   		readln(venda[i].quantidade_produto_vendido);
      writeln('Total: ',produto[i].codigo_produto * venda[i].quantidade_produto_vendido);
   		break;
   end;					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 	
	    end;                
			4: begin
						textcolor(red);
						writeln('!------------------------------------------!');   
  				  writeln( '! *---  Finalizado Sistema de Compras ---* !'); 
	  				writeln('!__________________________________________!');
						exit;   //halt;					
			end;
		End;
			writeln('Deseja realizar outra operação [ S / N]');     	{ ** Fim repeat Until **  }
			readln(resp); 
			clrscr;
	until UpCase(resp) = 'N'; 	writeln('--- Sistema de Compras Finalizado --- ');  

End.  