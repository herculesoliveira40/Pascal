Procedure RelatorioClientes;
Begin
	 writeln('Pessoa Fisica - Digite [1]');
	 writeln('Pessoa Juridica - Digite [2]');
	 readln(Op);
	 
	 Case Op of

	 1: Begin
   writeln('Informe seu CPF: ');
    readln(Cod);
      while (ValidaCliente(cod)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um codigo de cliente valido: ');
				readln(cod);
		  end;
			for C := 1 to 100 do
			Begin		
			  if (Cod = cliente[C].CPF) then
			  Begin
			   writeln('Seja bem vindo ',cliente[C].Nome);
			   writeln;
			      writeln('                            A Melhor Distribuidora Ltda.');
             writeln('                               CNPJ: 6969.0420.1133-0');
             writeln('');
             writeln(                         'NOTA FISCAL DE VENDA AO CONSUMIDOR');
             writeln('                                 2ª Via - Empresa'); 
             writeln('                                                                      Série “',NumeroDeSerie[C],'”');
             writeln('');
             writeln('Data e hora da emissão: ',Data[C],' ',Horario[C],'                       Nº do Pedido: ',NumeroDoPedido[C]);
				     writeln('');
             writeln('Quantidade  |    Discriminação das mercadorias       |     Preço Unitário   |   Valor total    |');
             for B := 1 to 100 do  
               Begin
                 if (Venda[D,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
                       writeln(Venda[D,B],'X               ',Produtos[F].Nome,'                     R$:',Produtos[F].ValorRep);
                        AuxTT := AuxTT + Venda[C,B];
                     End;
                   End;
			           End; 
			         End;
							 writeln('                                              R$',AuxTT);
			         AuxTT := 0;   
			  End;
			End;
		 End;
			
		2: Begin
			writeln('Informe seu CNPJ: ');
    	readln(Cod);
      while (ValidaEmp(cod)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um codigo de cliente válido: ');
				readln(cod);
		  end;
			for C := 1 to 10 do
			Begin		
			  if (Cod = Emp[C].CNPJ) then
			  Begin
			   writeln('Seja bem vindo ',Emp[C].Nome);
			   writeln;
			     writeln('                            A Melhor Distribuidora Ltda.');
             writeln('                               CNPJ: 6969.0420.1133-0');
             writeln('');
             writeln(                         'NOTA FISCAL DE VENDA AO CONSUMIDOR');
             writeln('                                 2ª Via - Empresa'); 
             writeln('                                                                      Série “',NumeroDeSerie[C],'”');
             writeln('');
             writeln('Data e hora da emissão: ',Data[C],' ',Horario[C],'                      Nº do Pedido: ',NumeroDoPedido[C]);
				     writeln('');
             writeln('Quantidade  |    Discriminação das mercadorias       |     Preço Unitário   |   Valor total    |');
             for B := 1 to 100 do  
               Begin
                 if (Venda[D,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
                       writeln(Venda[D,B],'X               ',Produtos[F].Nome,'                     R$:',Produtos[F].ValorRep);
                        AuxTT := AuxTT + Venda[C,B];
                     End;
                   End;
			           End;
			         End;
			   End;
			    writeln('                                              R$',AuxTT);
			    AuxTT := 0; 
			  End;
			 End;
			 End;
End;