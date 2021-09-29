Program PostoPasc ;
// Gabriel Xavier, Hercules Oliveira  :  http://dontpad.com/postopasc
//v1.0

							var       { ** Variaveis **  }
menu1,menu2, menu3, menu4, quantidade, codigoproduto, opcao, i, p, c, f : integer;  	
	clientes : array[1..10, 1..5] of string;
	funcionarios : array[1..10, 1..5] of string;
	produtos : array[1..10, 1..5] of string;
	 
total, totcomb, litroscomb : real;
resp : string;

///////////////////////////////////////////////////////////////////////////

        

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
		    	for i:= 1 to 10 do
		    	begin
			    	writeln('Informe codigo do cliente: '); 
			    	readln(clientes[i,1]);
			    	writeln('Informe nome do cliente: '); 
			    	readln(clientes[i,2]);
			    	writeln('Informe CPF ou CNPJ'); 
			    	readln(clientes[i,3]);
			    	writeln('Informe o telefone'); 
			    	readln(clientes[i,4]);
					  break;
					end;												 
	    end;
	
	    2: begin  
	    	writeln('Cadastrar Funcionario'); 
		    	for i:= 1 to 10 do
		    	begin
			    	writeln('Informe codigo do cliente: '); 
			    	readln(clientes[i,1]);
			    	writeln('Informe nome do funcionario: '); 
			    	readln(clientes[i,2]);
					  break;
					end;												 
	    end;
	
	    3: begin
	     		writeln('Cadastrar Produtos');
				   for i:=1 to 10 do         { ** Laco FOR - 1 a 10 **}
				   begin
				 
				   if produtos[i,1] = '' then
					begin
				   		writeln('Informe o codigo do produto');
				   		readln(produtos[i,1]);
				   		writeln('Informe o nome do produto');
				   		readln(produtos[i,2]);
				   		writeln('Informe o valor do produto');
				   		readln(produtos[i,3]);
				   		break;
  			 end;   		
	    end;                
	     end;
	  
			4: begin  
						writeln(' <--- Voltar para o Menu Principal - '); 
							
			end;
		end;    
	 End;
	 
	 
	Procedure Vendas;        { ** Procedure **  }
  Begin
        writeln(' -----> Menu Vendas <----- ');
    		writeln(' ');
    	{	writeln('[1] - Gasolina Comum');
    		writeln('[2] - Gasolina Aditivada');
    		writeln('[3] - Etanol');
    		writeln('[4] - Diesel S-10');
    		writeln('Informe o codigo do produto que deseja');
    		readln(opcao);
    		writeln('Informe a quantidade de litros');
    		readln(litroscomb);   }
    		 for i:=1 to 10 do         { ** Laco FOR - 1 a 10 **}
				   begin

				   		writeln(produtos[i,1]);
				   		writeln(produtos[i,2]);
				   		writeln(produtos[i,3]);
				   		end;
    		
							//***
		//		readln(menu3);			
	End;	 
	 
	 
///////////////////////////////////////////////////////////	 



	Procedure Relatorio;        { ** Procedure **   OU FUNCAO}
  Begin
        writeln(' -----> Menu Relatorios <----- ');
				writeln('!------------------------------------------!');   
    		writeln('! [1] - Relatorio por cliente              !');
    		writeln('! [2] - Relatorio por Funcionario          !');
    		writeln('! [3] - Relatorio Anual                    !');
    		writeln('! [4] - Relatorio Mensal                   !');
    		writeln('! [5] <--- Voltar para o Menu Principal    !');   
			  writeln('!__________________________________________!'); 
    		writeln('Informe o codigo relatorio que deseja');
    		readln(menu4);
        	  while (menu4 < 1) or (menu4 > 5)  do      { ** Laco Case - Validar entre 1 e 5 **}
		begin   
		  writeln(' OPCAO invalido digite novamente, ');     
			readln(menu4);  
	  end; 
    	  case menu4 of                 { ** Laco Case **  }
	
	    1: begin  
	    	writeln('Relatorio por cliente'); 
				 
	    end;
	
	    2: begin
				writeln('Relatorio por Funcionario');
			
	    end;
	
	    3: begin
	     		writeln('Relatorio Anual');
	    		
	    end;                
	    
	  
			4: begin  
						writeln('Relatorio Mensal'); 
							
			end;
			
			
			5: begin  
						writeln(' <--- Voltar para o Menu Principal - '); 
							
			end;			
		end;		
							
	End;	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure apagadepois;
begin
writeln('Nao faz nada isso apagadepois');
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////s


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
	   // 	writeln('Cadastros'); 
		//  break;
	    end;
	
	    2: begin
	        Vendas;
	    //  	writeln('Vendas');
	  //  break;  	
	    end;
	
	    3: begin
          Relatorio;
	     	//	writeln('Relatorios');
	  //  break; 		
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