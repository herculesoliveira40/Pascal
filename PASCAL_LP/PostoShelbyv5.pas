Program PostoPasc ;
// Hercules Oliveira  :  http://dontpad.com/postopasc

	type registro_cliente  = record
				codigo_cliente   : integer;
				nome_cliente     : string;
				telefone_cliente : string;
				cpf_cnpj_cliente : string; 
				venda_cliente		 : real;
			end;
	type registro_funcionario  = record
				codigo_funcionario   : integer;
				nome_funcionario     : string;
				venda_funcionario		 : real;
				admissao_funcionario : string;
			end;		
	type registro_produto    = record
				codigo_produto     : integer;
				nome_produto  		 : string;
				preco_produto			 : real;	
			end;	
	
	type registro_venda 						 = record
	      codigo_venda  						 : string;
				quantidade_produto_vendido : real;
				mes												 : string;
			end;     
	
				
								var       { ** Variaveis **  }
	menu1,menu2, menu3, rm : integer;     
	i, j, c, cd, f, fu, p, pu, v, auxp, auxf, auxc : integer;
	total, totalzao, vrecebido : real;
	janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro: real;
	resp : string;
	
		Data : array[1..10, 1..10] of word;    
		Tempo : array[1..10, 1..10] of word; 
		
		cliente : array[1..10] of registro_cliente;	
		funcionario : array[1..10] of registro_funcionario;	
		produto : array[1..10] of registro_produto;	
		venda:    array[1..10] of registro_venda;	
	  // Matriz Data

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  function CalcularTroco(n1: real; n2: real) : real;
begin
	 	 CalcularTroco:= ( n1- n2);
end;

function ValidarFuncionario(auxf : Integer) : boolean;
		begin
		  for j:=1 to 100 do
		  begin
		    if (auxf <= funcionario[fu].codigo_funcionario) then       // <= fu ou = [v]  funcionario[A] ??
		    begin
		      ValidarFuncionario := true;
		      break;
		    end
		    else
		    begin
		      ValidarFuncionario := false;
		    end;                                                                          
		  end;
		end;
		
function ValidarCliente(auxc : Integer) : boolean;
		begin
		  for j:=1 to 100 do
		  begin
		    if (auxc <= cliente[cd].codigo_cliente) then                       // <=cd ou = [v] 
		    begin
		      ValidarCliente := true;
		      break;
		    end
		    else
		    begin
		      ValidarCliente := false;
		    end;
		  end;
		end;
		
function ValidarProduto(auxp : Integer) : boolean;
		begin
		  for j:=1 to 100 do
		  begin
		    if (auxp <= produto[pu].codigo_produto) then                 // <= pu     ou = [v] 
		    begin
		      ValidarProduto := true;
		      break;
		    end
		    else
		    begin
		      ValidarProduto := false;
		    end;
		  end;
		end;
	
		
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      

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
	
	  while (menu2 < 1) or (menu2 > 4)  do      { ** Laco While - Validar entre 1 e 4 **}
		begin   
		  writeln(' OPÇÃO inválida digite novamente, ');     
			readln(menu2);  
	  end; 
	  case menu2 of                 { ** Condicao Case **  }
	
	    1: begin  
	    	writeln('Cadastrar Clientes: ');  
			   for c:=1 to 10 do         { ** Laco FOR - 1 a 10 **}
			   begin
			  	 if cliente[c].nome_cliente = '' then
						begin							
							writeln('Informe o nome do cliente');
							readln(cliente[c].nome_cliente);
							writeln('Informe o CPF ou CNPJ');
							readln(cliente[c].cpf_cnpj_cliente);
							writeln('Informe o telefone do cliente');
							readln(cliente[c].telefone_cliente);
								Delay(1100); writeln(' .............. Cliente cadastrado com sucesso! ..............');
								cliente[c].codigo_cliente:= c;
								writeln('Código do cliente: ', cliente[c].nome_cliente, ' é: ', cliente[c].codigo_cliente);
				      cd:= c;
							break;
						end;	
			   end;															 
	    end;
	
	    2: begin
				writeln('Cadastrar Funcionários: '); 
			   for f:=1 to 10 do         { ** Laco FOR - 1 a 10 **}
			   begin
					if funcionario[f].nome_funcionario = '' then
						begin
							writeln('Informe o nome do funcionário: ');
							readln(funcionario[f].nome_funcionario);
							writeln('Informe data de admissao do funcionario: ', funcionario[f].nome_funcionario);
							readln(funcionario[f].admissao_funcionario);
              	Delay(1100); writeln('.............. Funcionário cadastrado com sucesso .............. ! ');
              	funcionario[f].codigo_funcionario:= f;
              	writeln('Código do Funcionário: ', funcionario[f].nome_funcionario, ' é: ', funcionario[f].codigo_funcionario);
							fu:= f;
							break;
						end;
			   end;			
	    end;
	
	    3: begin
	     		writeln('Cadastrar Produtos: ');
				   for p:= 1 to 10 do         { ** Laco FOR - 1 a 10 **}
				   begin
				    if produto[p].nome_produto = '' then
						begin
				   		writeln('Informe o nome do produto: ');
				   		readln(produto[p].nome_produto);
				   		writeln('Informe o valor do produto: ');
				   		readln(produto[p].preco_produto);
				   		  produto[p].codigo_produto:= p;
				   			Delay(1100); writeln(' .............. Produto cadastrado com sucesso! ..............');
				   			writeln('Código do Produto: ', produto[p].nome_produto, ' é: ', produto[p].codigo_produto);				   			
				   		pu:= p;
				   		break;
  				 end; 
				 end;  		
	    end;                
	    
	  
			4: begin  
						writeln(' <--- Voltar para o Menu Principal - '); 
							
					end;
				end;    
			 End;
		 
	 
 /////////////////
  Procedure MostrarClientes;
	Begin
	writeln(''); writeln('');
  writeln('   Clientes Cadastratos: ');
  			   for c:=1 to cd do         { ** Laco FOR - 1 a 10 **}
					   begin
					  //			textcolor(white);
					  	    writeln('--------------------------------------------------------------------');
									writeln(' | Codigo do cliente: ', cliente[c].codigo_cliente, ' | Nome do cliente: ', cliente[c].nome_cliente, ' | ');
						 end;
						 			writeln('####################################################################');
	 End;	

	/////////////////
  Procedure MostrarFuncionarios;
	Begin	
	writeln(''); writeln('');
	writeln('  Funcionários Cadastratos: '); 
			   for f:=1 to fu do         { ** Laco FOR - 1 a 10 **}			  
						begin
				//		textcolor(blue);
							writeln('--------------------------------------------------------------------');
							writeln('| Codigo do funcionário: ', funcionario[f].codigo_funcionario, ' | Nome do funcionário: ', funcionario[f].nome_funcionario, ' | ');
						 end;
						 	writeln('####################################################################');
	 End;
 /////////////////	  
  Procedure MostrarProdutos;
	Begin 
	writeln(''); writeln('');
	writeln('   Produtos Cadastratos: '); 
			   for p:=1 to pu do         { ** Laco FOR - 1 a Ultima posição do P **}
					   begin
				//	   textcolor(red); 
					   		writeln('--------------------------------------------------------------------');
					   		writeln(' | Codigo do Produto: ', produto[p].codigo_produto, ' | Nome do Produto: ',produto[p].nome_produto, ' | Preço do Produto: ', produto[p].preco_produto:4:2, ' |');					  
	  				 end;
	           		writeln('####################################################################');  	writeln('');
	
	End;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
	Procedure Meses;
	Begin
	         		  if (venda[v].mes = '01' ) then
	      		  begin
	      		 	 janeiro:= (total + janeiro);
	      		  end
						else if	(venda[v].mes = '02' ) then      		
	      		  begin
	      		 	 fevereiro:= (total + fevereiro);
	      		  end    
						else if	(venda[v].mes = '03' ) then      		
	      		  begin
	      		 	 marco:= (total + marco);
	      		  end	
						else if	(venda[v].mes = '04' ) then      		
	      		  begin
	      		 	 abril:= (total + abril);
	      		  end														
						else if	(venda[v].mes = '05' ) then      		
	      		  begin
	      		 	 maio:= (total + maio);
	      		  end							
						else if	(venda[v].mes = '06' ) then      		
	      		  begin
	      		 	 junho:= (total + junho);
	      		  end							
						else if	(venda[v].mes = '07' ) then      		
	      		  begin
	      		 	 julho:= (total + julho);
	      		  end							
						else if	(venda[v].mes = '08' ) then      		
	      		  begin
	      		 	 agosto:= (total + agosto);
	      		  end							  		
						else if	(venda[v].mes = '09' ) then      		
	      		  begin
	      		 	 setembro:= (total + setembro);
	      		  end
						else if	(venda[v].mes = '10' ) then      		
	      		  begin
	      		 	 outubro:= (total + outubro);
	      		  end
						else if	(venda[v].mes = '11' ) then      		
	      		  begin
	      		 	 novembro:= (total + novembro);
	      		  end
						else if	(venda[v].mes = '12' ) then      		
	      		  begin
	      		 	 dezembro:= (total + dezembro);
	      		  end;
	
	End;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	 
	Procedure Vendas;        { ** Procedure **  }
  Begin
   		
 ////////////////////
 				   for v:= 1 to 10 do         { ** Laco FOR - 1 a 10 **}   			 
				   begin    
				    if venda[v].codigo_venda = '' then      // venda[v].mes
						begin   		
				                     // TUdo [v]  ?
			writeln('Informe o código do funcionário');   	
			readln(auxf);
			while (ValidarFuncionario(auxf)) = false do
			begin
			  writeln('Funcionario não encontrado.');
			  writeln('Informe um código de funcionário valido: ');
				readln(auxf);
		  end;
			
			Delay(1500); writeln(' ........... Olá Funcionário: ', funcionario[auxf].nome_funcionario , '...........');	                     
     	writeln('Informe o código do cliente');   	
			readln(auxc);
			while (ValidarCliente(auxc)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um código de cliente valido: ');
				readln(auxc);
		  end;		
	//		writeln('Codigo da vendaa: ', venda[v].codigo_venda);
    	writeln('Informe o código do Combustível: ');    // DO combustivel
			readln(auxp); 
			while (ValidarProduto(auxp)) = false do
			begin
			  writeln('Produto não encontrado.');
			  writeln('Informe um código de produto valido: ');
				readln(auxp);
		  end;                   
	GetTime(Tempo[v,1], Tempo[v,2],Tempo[v,3], Tempo[v,4]);
  GetDate(Data[v,1], Data[v,2],Data[v,3], Data[v,4]);
    	writeln('Informe a quantidade em litros: ');   
			readln(venda[v].quantidade_produto_vendido);       // Litros


    	writeln('Informe o mês: ');    
			readln(venda[v].mes);			   
			total:= (produto[auxp].preco_produto * venda[v].quantidade_produto_vendido);
			Meses;
		  writeln(''); writeln('');
		 	writeln('    Combustível vendido: ', produto[auxp].nome_produto, ' - Litros: ', venda[v].quantidade_produto_vendido:6:2,' L', ' - Vendido pelo Funcionário: ', funcionario[auxf].nome_funcionario);   
			writeln('    Subtotal do cliente ', cliente[auxc].nome_cliente, ' são: ', total:6:2 ,  ' R$' );	
      
					cliente[auxc].venda_cliente:= (cliente[auxc].venda_cliente+ total);
					funcionario[auxf].venda_funcionario:= (funcionario[auxf].venda_funcionario+ total);	
      		totalzao:= (total+totalzao);
       writeln('   Data da Venda: ', Data[v,3],'/', venda[v].mes,'/', Data[v,1], ' As: ', Tempo[v,1], ':', Tempo[v,2], ':', Tempo[v,3]);		
      		
          
      		
							break;					
						end;
			   end;			
	 //   end;			
							
						
	End;	 
	      //	readln(menu3);


	 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 


	Procedure Relatorio;        { ** Procedure **   OU FUNCAO}
  Begin
        writeln(' -----> Menu Relatórios <----- ');
				writeln('!------------------------------------------!');   
    		writeln('! [1] - Relatório por Cliente              !');
    		writeln('! [2] - Relatório por Funcionário          !');
    		writeln('! [3] - Relatório Anual                    !');
    		writeln('! [4] - Relatório Mensal                   !');
    		writeln('! [5] <--- Voltar para o Menu Principal    !');   
			  writeln('!__________________________________________!'); 
    		writeln('Informe o código relatório que deseja');
    		readln(menu3);
        	  while (menu3 < 1) or (menu3 > 5)  do      { ** Laco While - Validar entre 1 e 5 **}
		begin   
		  writeln(' OPCAO inválido digite novamente, ');     
			readln(menu3);  
	  end; 
    	  case menu3 of                 { ** Condicao Case **  }
	
	    1: begin
				MostrarClientes;  
	    	writeln('_____________Relatório por Cliente_____________'); 
						writeln(' Informe o Cliente para consultar: ');
						readln(auxc);
						while (ValidarCliente(auxc)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um código de cliente valido: ');
				readln(auxc);
		  end;		
						writeln('Total comprado pelo cliente: ', cliente[auxc].nome_cliente, ' é: R$',  cliente[auxc].venda_cliente:6:2);		   				  
				//  writeln('Total comprado pelo cliente: ', cliente[1].nome_cliente, ' é: R$',  cliente[1].venda_cliente:6:2);
			//	  writeln('Total comprado pelo cliente: ', cliente[2].nome_cliente, ' é: R$',  cliente[2].venda_cliente:6:2);
				
	    end;
	
	    2: begin
	    			MostrarFuncionarios;
						writeln('_____________Relatório por Funcionário_____________');
						writeln(' Informe o Funcionário para consultar: ');
						readln(auxf);
						while (ValidarFuncionario(auxf)) = false do
			begin
			  writeln('Funcionário não encontrado.');
			  writeln('Informe um código de funcionário valido: ');
				readln(auxf);
		  end;
						writeln('Total vendido pelo funcionário: ', funcionario[auxf].nome_funcionario , ' é: R$', funcionario[auxf].venda_funcionario:6:2);
			 //   writeln('Total vendido pelo funcinario: ', funcionario[1].nome_funcionario , ' é: R$', funcionario[1].venda_funcionario:6:2);
			//    writeln('Total vendido pelo funcinario: ', funcionario[2].nome_funcionario , ' é: R$', funcionario[2].venda_funcionario:6:2);
	    end;
	
	    3: begin
	     		writeln('_____________Relatório Anual_____________');
	     								      
				 		writeln('Vendas de janeiro : ', janeiro:6:2, 'R$');
						writeln('Vendas de fevereiro : ', fevereiro:6:2, 'R$');
						writeln('Vendas de marco : ', marco:6:2, 'R$');
						writeln('Vendas de abril : ', abril:6:2, 'R$');
						writeln('Vendas de maio : ', maio:6:2, 'R$');
						writeln('Vendas de junho : ', junho:6:2, 'R$');
						writeln('Vendas de julho : ', julho:6:2, 'R$');
						writeln('Vendas de agosto : ', agosto:6:2, 'R$');
						writeln('Vendas de setembro : ', setembro:6:2, 'R$');
						writeln('Vendas de outubro : ', outubro:6:2, 'R$');
						writeln('Vendas de novembro : ', novembro:6:2, 'R$');
						writeln('Vendas de dezembro : ', dezembro:6:2, 'R$');     
	    			writeln('Super total: ', totalzao:6:2);
	    end;                
	    	  
			4: begin  
		
						writeln(' _____________Relatório Mensal_____________'); 
						writeln(' Informe o Mês para consultar: ');
						readln(rm);
					/////////////////////////////////////////////////	
						case rm of
							    01: begin  
							    		writeln('Vendas de janeiro : ', janeiro:6:2, 'R$'); 
							    end;
							    02: begin  
							    	writeln('Vendas de fevereiro : ', fevereiro:6:2, 'R$'); 
							    end;						
							    03: begin  
							    		writeln('Vendas de marco : ', marco:6:2, 'R$'); 
							    end;
							    04: begin  
							    		writeln('Vendas de abril : ', abril:6:2, 'R$'); 
							    end;
							    05: begin  
							    		writeln('Vendas de maio : ', maio:6:2, 'R$'); 
							    end;
							    06: begin  
							    		writeln('Vendas de junho : ', junho:6:2, 'R$'); 
							    end;							    							    							    
							    07: begin  
							    		writeln('Vendas de julho : ', julho:6:2, 'R$'); 
							    end;
							    08: begin  
							    		writeln('Vendas de agosto : ', agosto:6:2, 'R$'); 
							    end;
							    09: begin  
							    		writeln('Vendas de setembro : ', setembro:6:2, 'R$'); 
							    end;
							    10: begin  
							    		writeln('Vendas de outubro : ', outubro:6:2, 'R$'); 
							    end;
							    11: begin  
							    		writeln('Vendas de novembro : ', novembro:6:2, 'R$'); 
							    end;
							    12: begin  
							    		writeln('Vendas de dezembro : ', dezembro:6:2, 'R$'); 
							    end;							    

				end;			
			end;
			
			
			5: begin  
						writeln(' <--- Voltar para o Menu Principal - '); 
							
			end;			
		end;		
							
	End;	 
	 
////////////////////////////////////////////////////////////////
Procedure apagadepois;
begin
writeln('Nao faz nada isso apagadepois');
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Begin 
		      textcolor(12);GOTOXY(34,12);  							
					write( chr(6),' POSTO SHELBY ', chr(184)); 
			    textcolor(15); gotoxy(22,16);  
				write('Aguarde enquanto o sistema é inicializado');
					textbackground(14);GOTOXY(34,14); write('               '); delay(700); textbackground(9); GOTOXY(34,14); 
					write('  '); delay(1000);  GOTOXY(36,14); write('   '); 
					delay(1500); GOTOXY(39,14); write(' '); delay(1500); GOTOXY(40,14); 
			    write('     '); delay(1000);  GOTOXY(45,14); write('    '); delay(1000); textbackground(0); 
					clrscr; 
	repeat               			{ ** Laco Repeat **  }
	  writeln('____Escolha uma opção: ___');    
		writeln('!-------------------------!');   
		writeln('! [1] = Cadastros         !');
	  writeln('! [2] = Vendas            !');
	  writeln('! [3] = Relatórios        !');
	  writeln('! [4] = Sair              !');
	  writeln('!_________________________!');	   
	  readln(menu1);
	
	  while (menu1 < 1) or (menu1 > 4)  do      { ** Laco While - Validar entre 1 e 4 **}
		begin   
		  writeln(' OPCAO invalido digite novamente, ');    
			readln(menu1);  
	  end;                    
	  writeln(''); writeln('');
	  
	  case menu1 of                 { ** Condicao Case **  }
	
	    1: begin
	    
	    		Cadastro;    

	    end;
	
	    2: begin
	            writeln(' -----> Menu Vendas <----- ');
    					writeln(' ');
   
	         MostrarClientes;
	         MostrarFuncionarios;           //
	         MostrarProdutos;
				   Vendas;   
					writeln('Informe o valor dado pelo cliente: ');	
					readln(vrecebido);
					writeln('Troco do cliente ', cliente[c].nome_cliente, ' é: ',  CalcularTroco(vrecebido,total):3:2, 'R$');	
					if (vrecebido <  total)then
						begin
						 	writeln(cliente[c].nome_cliente, ' Falta: ', CalcularTroco(vrecebido,total):3:2, 'R$');
						end 
			    else
			    	writeln('');	writeln('Obrigado Volte sempre!!! ', chr(1), chr(3));	
			 ////////    writeln('Super total: ', totalzao:6:2);	    
			  end;
	
	    3: begin
			
          Relatorio;
 		
	    end;                	    
	  
			4: begin		
						      
						      textcolor(12);GOTOXY(34,12);  							
									write( chr(6),' POSTO SHELBY ', chr(184)); 
							    textcolor(15); gotoxy(22,16);  
								write('		Finalizando o Sistema...');
									textbackground(14);GOTOXY(34,14); write('               '); delay(700); textbackground(9); GOTOXY(34,14); 
									write('  '); delay(1000);  GOTOXY(36,14); write('   '); 
									delay(1500); GOTOXY(39,14); write(' '); delay(1500); GOTOXY(40,14); 
							    write('     '); delay(1000);  GOTOXY(45,14); write('    '); delay(1000); textbackground(0); 
									clrscr;
									
  
  				  writeln( '! *---  Finalizado Sistema  ---* !'); 
  				   writeln( 'By:  Hercules Oliveira');
						exit;   //halt;					
			end;
		End;
			writeln('Aperte qualquer tecla + ENTER para confirmar');     	{ ** Fim repeat Until **  }   
			readln(resp); 
			clrscr;
	until UpCase(resp) = 'A1BB2CCC3DDDD4EEEEE5'; 	writeln('--- Sistema de Compras Finalizado --- '); 
	   readkey();     //
End.