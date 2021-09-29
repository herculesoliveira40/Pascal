Program AMD ;
type
		Registro = record
  	Codigo, Cpf, Tell, Numero, CVV, Cpftitu, Cep : integer;
  	Nome, Nometitu, Data, Comp : string;
End;
type
		RegEmp = Record
  	Codigo, Cnpj, Tel : integer;
  	Nome : string;
End;
type
		RegFunc = Record
  	Codigo, Cpf, Tell, Senha : integer;
  	Nome, Usuario : string;
End;
type
		Produto = Record
  	ValorRep, Valor, Codigo, DiaP : integer;
  	Nome : string;
End;

Var
		NumeroDoPedido, NumeroDeSerie, Data, Horario : Array [1..100] of String;
		VendasFunc, Venda, VendaEmp, QTD, QTDMESAUX, MesP, AnoP : Array [1..100, 1..100] of integer;
		Cliente : Array [1..100] of Registro;
		Funcionario : Array [1..100] of RegFunc;
		Emp : Array [1..100] of RegEmp;
		Produtos : Array [1..100] of Produto;
		Perfil, MesVenda, AnoVenda, QTDP, X : Array [1..100] of integer;
		A, B, C, D, E, H, F, M, O, Z : integer ; 
		Opcao, Cod, CodC, Op, Dia, Aux, Tempo, Temp, Mes, Ano, Hora, Minuto, Segundo,  DiaAux, MesAux, AnoAux, QTDAux, VendaAux, CompraAux, AuxTT, QTDAUXP, DiaVenc, MesVenc, AnoVenc, CompraR  : integer;
		AuxNum, AuxNu, DiaAuxi, MesAuxi, AnoAuxi,  HoraAux, MinutoAux, SegundoAux, EST : String;
		TT : Real;
		Resp : Char;
		miliSegundos: integer;

function ValidaProduto(Cod : Integer) : boolean;
		begin
		  for A:=1 to 100 do
		  begin
		    if (Cod = Produtos[A].Codigo) then
		    begin
		      ValidaProduto := true;
		      break;
		    end
		    else
		    begin
		      ValidaProduto := false;
		    end;
		  end;
		end;

function ValidaEmp(Cod : Integer) : boolean;
		begin
		  for A:=1 to 100 do
		  begin
		    if (Cod = Emp[A].CNPJ) then
		    begin
		      ValidaEmp := true;
		      break;
		    end
		    else
		    begin
		      ValidaEmp := false;
		    end;
		  end;
		end;

function ValidaFunc(Cod : Integer) : boolean;
		begin
		  for A:=1 to 100 do
		  begin
		    if (Cod = Funcionario[A].Codigo) then
		    begin
		      ValidaFunc := true;
		      break;
		    end
		    else
		    begin
		      ValidaFunc := false;
		    end;
		  end;
		end;

function ValidaCliente(Cod : Integer) : boolean;
		begin
		  for A:=1 to 100 do
		  begin
		    if (Cod = cliente[A].CPF) then
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

procedure CadastroFuncionario;
		Begin
		  Repeat
		  for A := 1 to 100 do
		  Begin
		    if (Funcionario[A].Nome = '') then
		    Begin
		      Funcionario[A].Codigo := A;
		      writeln('     Preencha os Dados: ');
		      writeln;
		      write('Nome: ');
		      readln(Funcionario[A].Nome);
		      write('CPF: ');
		      readln(Funcionario[A].Cpf);
		      write('Telefone: ');
		      readln(Funcionario[A].Tell);
		      clrscr;
		      writeln('Funcionário Cadastrado com Sucesso!!');
		      writeln('');
		      writeln('O Código de cadastro é: ',Funcionario[A].Codigo);
		      Break;
		    End;
		  End;   
		  writeln('Deseja Cadastrar outro Funcionario? [S/N]');
		  readln(Resp);
		  Until UpCase (Resp) = 'N'; 
		End;                 

procedure Cadastro;
		Begin  
		  Repeat
		  for A := 1 to 100 do
		  Begin
		    if (Cliente[A].Nome = '') then
		    Begin
		      writeln('       Preencha os Dados: ');
		      writeln;
		      write('Nome: ');
		      readln(Cliente[A].Nome);
		      write('CPF: ');
		      readln(Cliente[A].Cpf);
		      write('Telefone: ');
		      readln(Cliente[A].Tell);
		      clrscr;
		      writeln('Cliente Cadastrado com Sucesso!!');
		      writeln('');
		      Break;
		    End;
		  End;
		  writeln('Deseja Cadastrar outro Cliente? [S/N]');
		  readln(Resp);
		  Until UpCase (Resp) = 'N'; 
		End;

procedure RegistroEmp;
		Begin
		  Repeat
		  for A := 1 to 100 do
		  Begin
		    if (Emp[A].Nome = '') then
		    Begin
		      writeln('            Preencha os dados: ');
		      writeln;
		      write('Nome da Empresa: ');
		      readln(Emp[A].Nome);
		      write('CNPJ: ');
		      readln(Emp[A].Cnpj);
		      write('Telefone: ');
		      readln(Emp[A].Tel);
		      clrscr;
		      writeln('Empresa cadastrada com sucesso!!');
		      writeln('');
		      Break;
		    End;
		  End;
		  writeln('Deseja Cadastrar outra Empresa? [S/N]');
		  readln(Resp);
		  Until UpCase (Resp) = 'N'; 
		End;

procedure Cadastroproduto;
		Begin
		  Repeat
		  for A := 1 to 10 do
		  Begin
		    if (Produtos[A].Nome = '') then
		    Begin
		      for B := 1 to 10 do
		      Begin
		        Randomize;
		        D := Random(100);
		        for C := 1 to 10 do
		        Begin
		          if (D = Produtos[C].Codigo) then
		          Begin
		            Break;
		          End;
		        End;
		        if (Produtos[B].Codigo = 0) then
		        Begin
		          Produtos[B].Codigo := D;
		        End;
		      End;
		      writeln('            Preencha os dados: ');
		      writeln;
		      write('Nome do Produto: ');
		      readln(Produtos[A].Nome);
		      write('Valor Adquirido: ');
		      readln(Produtos[A].Valor);
		      write('Quantidade Adquirida: ');
		      readln(QTD[A,1]);
		      QTDP[A] := QTDP[A] + QTD[A,1]; 
		      writeln;
		      writeln('Data da Compra: ');
		      write('Dia: ');
		      readln(Produtos[A].DiaP);
		      write('Mês: ');
		      readln(MesP[A,1]);
		      write('Ano: ');
		      readln(AnoP[A,1]);
		      writeln;
		      write('Valor de Repasse: ');
		      readln(Produtos[A].ValorRep);
		      writeln;
		      writeln('Produto Cadastrado com Sucesso!!');
		      Break;
		    End;
		  End;
		  writeln('Deseja Cadastrar outro Produto? [S/N]');
		  readln(Resp);
		  Until UpCase (Resp) = 'N'; 
		End;
		
		
Procedure AbastecerEstoque;
Begin
  writeln('Informe o nome do produto');
  readln(Est);
  for A := 1 to 100 do
  Begin
    if (Est = Produtos[A].Nome) then
    Begin
       write('Quantidade Adquirida: ');
       for M := 1 to 100 do
       Begin
         if (QTD[A,M] = 0) then
         Begin
		       readln(QTD[A,M]);
		       QTDP[A] := QTDP[A] + QTD[A,M];
		       writeln('Data da Compra: ');
		       write('Dia: ');
		       readln(Produtos[A].DiaP);
		       write('Mês: ');
		       readln(MesP[A,M]);
		       write('Ano: ');
		       readln(AnoP[A,M]);
		       Break;
		       writeln;
		     End;
		   End;
    End;
  End;
End;

Procedure Cartao;
		Begin
		  for A := A to A do
		  Begin
		    writeln('       Preencha os dados: ');
		    writeln;
		    writeln('Número do cartão: ');
		    readln(Cliente[A].Numero);
		    writeln('Data de validade (Ex: AA/MM/AAAA)');
		    readln(Cliente[A].Data);
		    writeln('Código de segurança: ');
		    readln(Cliente[A].CVV);
		    writeln('Nome do titular: ');
		    readln(Cliente[A].NomeTitu);
		    writeln('CPF do titular: ');
		    readln(Cliente[A].CpfTitu);
		    writeln;
		    writeln('Pagamento esta sendo processado...');
		    writeln('Tecle Enter Para Continuar');
		    readln;
		  End;
		End;

Procedure VendasAtacado;
		Begin
		      Repeat;
		      Randomize;
		      CodC := Random(20);
		      if (CodC > 0) then
		      Begin
		        Resp := 'S';
		      end;
		      until (Resp) = 'S';
		      while ValidaFunc(codC) = false do
					begin
					Repeat;
		      Randomize;
		      CodC := Random(20);
		      E := CodC;
		      if (CodC > 0) then
		      Begin
		        Resp := 'S';
		      end;
		      until (Resp) = 'S';
				  end;
				  
		    
		   writeln('Informe seu código de cliente: ');
		    readln(Cod);
		      while (ValidaEmp(cod)) = false do
					begin
					  writeln('Cliente não encontrado');
					  writeln('Informe um codigo de cliente válido: ');
						readln(cod);
				  end;
					for A := 1 to 100 do
					Begin		
					  if (Cod = Emp[A].CNPJ) then
					  Begin 
					   D := A;
					   writeln('Seja bem vindo ',Emp[A].Nome);
					   writeln;
					     
					     for E := 1 to 100 do
					     Begin
					      if (E = CodC) then
					      Begin
						     for A := 1 to 100 do
						     Begin
						       if (VendasFunc[E,A] = 0) then
						       Begin                  
						         VendasFunc[E,A] := Cod;
						       End;
						     End;
						    End;
						   End;
					   Break;
					  End;
					End;

  Repeat
  writeln('    Central de Vendas    ');
  writeln('');
  for F := 1 to 100 do
  Begin
    if (Produtos[F].Nome <> '') then
    Begin
      writeln(Produtos[F].Codigo,' - ',Produtos[F].Nome,'   R$',Produtos[F].ValorRep);
    End;
  End;
  
 writeln('Informe o Código do produto desejado: ');
  readln(cod);
  writeln('');
      while (ValidaProduto(cod)) = false do
			begin
			  writeln('Produto não encontrado.');
			  writeln('Informe um codigo de produto valido: ');
				readln(cod);
		  end;
      for B := 1 to 100 do
			Begin		
			  if (Cod = Produtos[B].Codigo) then
			  Begin
			   Break;
			  End;
      End;
      B := B;
      O := Cod;
      
  for D := D to D do
  Begin
    for B := B to B do
    Begin
      writeln('Informe a quantidade desejada (minimo de 20 itens)');
      readln(C);
      QTDP[B] := QTDP[B] - C;
      if (QTDP[B] < 0) then
      Begin
        writeln('Não temos a quantidade desejada');
        writeln('Deseja fazer outra compra?[S/N]');
        readln(Resp);
        Break;
      End;
      if (QTDP[B] >= 0) then
      Begin
        for O := O to O do
        Begin
          X[D] := X[D] + 1;
          QTDMESAUX[D,B] := QTDMESAUX[D,B] + C;
          VendaEmp[D,O] := VendaEmp[D,O] + C;
        End;
        writeln(''); 
      End;
    End;
  End;
  if (QTDP[B] >= 0) then
  Begin
	  writeln('Deseja comprar algo mais? [S/N]');	
	  readln(Resp);
	End;  
	if (Resp = 'S') then
	Begin
	  clrscr;
	End;
	Until UpCase (Resp) = 'N';
	
	  if (QTDP[B] >= 0) then
	  Begin
	    Dia := Dia + 1;
	    if (Dia = 32) then
	    Begin
	      Dia := 1;
	      Mes := Mes + 1;
	    End;  
	    if (Mes = 13) then
	    Begin
	      Mes := 1;
	      Ano := Ano + 1;
	    End;
	    
	    DiaVenc := Dia + 3;
	    MesVenc := Mes;
	    AnoVenc := Ano;
	    
	    if (DiaVenc = 33) then
	    Begin
	      DiaVenc := 2;
	      MesVenc := MesVenc + 1;
	    End;
	    
	    if (DiaVenc = 34) then
	    Begin
	    DiaVenc := 3;
	    MesVenc := MesVenc + 1;
	    End;
	    
	    if (MesVenc = 13) then
	    Begin
	      AnoVenc := AnoVenc + 1;
	    End;

	Str (Mes,MesAuxi);
	Str (Dia,DiaAuxi);
	Str (Ano,AnoAuxi);
	
	for D := D to D do
	Begin
		if (Dia <= 9) then
	  Begin
	   DiaAuxi := '0' + DiaAuxi; 
	  End;
	  
		if (Mes <= 9) then
	  Begin
	    MesAuxi := '0' + MesAuxi;
	  End;
	  
	  Data[D] := DiaAuxi + '/' + MesAuxi + '/' + AnoAuxi;
	End;
	
	    Randomize;
	    Hora := Random (23);
	    Randomize;
	    Minuto := Random (59);
	    Randomize;
	    Segundo := Random (59);

	    Str (Hora,HoraAux);
	    Str (Minuto,MinutoAux);
	    Str (Segundo,SegundoAux);
	    
			if (Hora <= 9) then
	    Begin
	      HoraAux := '0' + HoraAux;
	    End;
	    if (Minuto <= 9) then
	    Begin
	      MinutoAux := '0' + MinutoAux;
	    End;
	    if (Segundo <= 9) then
	    Begin
	      SegundoAux := '0' +  SegundoAux;
	    End;
	    
	   For D := D to D do
	   Begin
	     Horario[D] := HoraAux + ':' + MinutoAux + ':' + SegundoAux; 
	   End;
	
	for A := 1 to 4 do
   Begin
     randomize;
     H := Random(9);
     Str(H, AuxNu);
     AuxNum := AuxNum + AuxNu;
   End;
   
	 for D := D to D do
   Begin
     NumeroDoPedido[D] := AuxNum;
   End;
   AuxNum := '';
   AuxNu := '';
       
	 for A := 1 to 3 do
   Begin
     randomize;
     H := Random(9);
     Str(H, AuxNu);
     AuxNum := AuxNum + AuxNu;
   End;
   
	 for D := D to D do
   Begin
     NumeroDeSerie[D] := AuxNum;
   End;
   AuxNum := '';
   AuxNu := '';
	

  
	writeln('Informe o CEP: ');
  readln(Cliente[A].Cep);
  writeln('');
  writeln('Informe o numero e completemento: ');
  readln(Cliente[A].Comp);
  writeln('');
			     writeln('  ORDEM DE PAGAMENTO  ');
           writeln(' Data e hora da emissão: ',Data[D],' ',Horario[D]);
            for D := D to D do
             Begin
               for B := 1 to 100 do  
               Begin
                 if (VendaEmp[D,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin                              
											 writeln(' Quantidade: ',VendaEmp[D,B]);             
                       writeln(' Produto: ', Produtos[F].Nome);
                       writeln(' Preço unitário: R$',Produtos[F].ValorRep);
                       writeln('');
										   AuxTT := AuxTT + (VendaEmp[D,B] * Produtos[F].ValorRep);
										   Break;
										 End;
                   End;
			           End; 
			         End;
			         writeln (' Valor total à pagar: R$',AuxTT);
			         writeln(' Vencimento: ', DiaVenc,'/',MesVenc,'/',AnoVenc);
			         AuxTT := 0;
			        writeln('Tecle Enter Para Continuar');
			       readln;
			      End;
			    end;
			  end;


Procedure VendasVarejo;
Begin
  
          Repeat;
		      Randomize;
		      CodC := Random(20);
		      if (CodC > 0) then
		      Begin
		        Resp := 'S';
		      end;
		      until (Resp) = 'S';
		      while ValidaFunc(codC) = false do
					begin
					Repeat;
		      Randomize;
		      CodC := Random(20);
		      if (CodC > 0) then
		      Begin
		        Resp := 'S';
		      end;
		      until (Resp) = 'S';
				  end;
		      E := CodC;

  
  writeln('Informe seu CPF: ');
    readln(Cod);
      while (ValidaCliente(cod)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um codigo de cliente valido: ');
				readln(cod);
		  end;
			for A := 1 to 100 do
			Begin		
			  if (Cod = cliente[A].CPF) then
			  Begin
			   D := A;
			   writeln('Seja bem vindo ',cliente[A].Nome);
			   cod := cliente[A].CPF;
			   writeln;
			   
			   for E := 1 to 100 do
			   Begin
			    if (E = CodC) then
			    Begin
			     for A := 1 to 100 do
			     Begin
			       if (VendasFunc[E,A] = 0) then
			       Begin                  
			         VendasFunc[E,A] := Cod;
			         Break;
			       End;
			     End;
			    End;
			   End;
			   Break;
			  End;
			End;
  
  Repeat
  writeln('   Central de Vendas    ');
  writeln('');
  for F := 1 to 100 do
  Begin
    if (Produtos[F].Nome <> '') then
    Begin
      writeln(Produtos[F].Codigo,' - ',Produtos[F].Nome,'   R$',Produtos[F].ValorRep);
    End;
  End;
  
writeln('Informe o Código do produto desejado: ');
  readln(cod);
  writeln('');
      while (ValidaProduto(cod)) = false do
			begin
			  writeln('Produto não encontrado.');
			  writeln('Informe um codigo de produto valido: ');
				readln(cod);
		  end;
      for B := 1 to 100 do
			Begin		
			  if (Cod = Produtos[B].Codigo) then
			  Begin
			   Break;
			  End;
      End;
      B := B;
      O := Cod;
      
  for D := D to D do
  Begin
    for B := B to B do
    Begin
      writeln('Informe a quantidade desejada (maximo de 20 itens)');
      readln(C);
      QTDP[B] := QTDP[B] - C;
      if (QTDP[B] < 0) then
      Begin
        writeln('Não temos a quantidade desejada');
        writeln('Deseja fazer outra compra?[S/N]');
        readln(Resp);
      End;
      if (QTDP[B] >= 0) then
      Begin
        for O := O to O do
        Begin
          X[D] := X[D] + 1;
          QTDMESAUX[D,B] := QTDMESAUX[D,B] + C;
          Venda[D,O] := Venda[D,O] + C;
        End;
        writeln('Salvo');
        writeln(''); 
      End;
    End;
  End;
  if (QTDP[B] >= 0) then
  Begin
	  writeln('Deseja comprar algo mais? [S/N]');	
	  readln(Resp);
	End;  
	if (Resp = 'S') then
	Begin
	  clrscr;
	End;
	Until UpCase (Resp) = 'N';
	
	if (QTDP[B] >= 0)  then
	Begin
	    Dia := Dia + 1;
	    if (Dia = 32) then
	    Begin
	      Dia := 1;
	      Mes := Mes + 1;
	    End;  
	    if (Mes = 13) then
	    Begin
	      Mes := 1;
	      Ano := Ano + 1;
	    End;
	    DiaVenc := Dia + 3;
	    MesVenc := Mes;
	    AnoVenc := Ano;
	    
	    if (DiaVenc = 33) then
	    Begin
	      DiaVenc := 2;
	      MesVenc := MesVenc + 1;
	    End;
	    
	    if (DiaVenc = 34) then
	    Begin
	    DiaVenc := 3;
	    MesVenc := MesVenc + 1;
	    End;
	    
	    if (MesVenc = 13) then
	    Begin
	      AnoVenc := AnoVenc + 1;
	    End;
	    
			MesVenda[D] := Mes;
			AnoVenda[D] := Ano;
	Str (Mes,MesAuxi);
	Str (Dia,DiaAuxi);
	Str (Ano,AnoAuxi);
	
	for D := D to D do
	Begin
		if (Dia <= 9) then
	  Begin
	   DiaAuxi := '0' + DiaAuxi; 
	  End;
	  
		if (Mes <= 9) then
	  Begin
	    MesAuxi := '0' + MesAuxi;
	  End;
	  
	  Data[D] := DiaAuxi + '/' + MesAuxi + '/' + AnoAuxi;
	End;
	
	    Randomize;
	    Hora := Random (23);
	    Randomize;
	    Minuto := Random (59);
	    Randomize;
	    Segundo := Random (59);

	    Str (Hora,HoraAux);
	    Str (Minuto,MinutoAux);
	    Str (Segundo,SegundoAux);
	    if (Hora <= 9) then
	    Begin
	      HoraAux := '0' + HoraAux;
	    End;
	    if (Minuto <= 9) then
	    Begin
	      MinutoAux := '0' + MinutoAux;
	    End;
	    if (Segundo <= 9) then
	    Begin
	      SegundoAux := '0' +  SegundoAux;
	    End;
	    
	   For D := D to D do
	   Begin
	     Horario[D] := HoraAux + ':' + MinutoAux + ':' + SegundoAux; 
	   End;
	
	for A := 1 to 4 do
   Begin
     randomize;
     H := Random(9);
     Str(H, AuxNu);
     AuxNum := AuxNum + AuxNu;
   End;
   for D := D to D do
   Begin
     NumeroDoPedido[D] := AuxNum;
   End;
   AuxNum := '';
   AuxNu := '';
   for A := 1 to 3 do
   Begin
     randomize;
     H := Random(9);
     Str(H, AuxNu);
     AuxNum := AuxNum + AuxNu;
   End;
   for D := D to D do
   Begin
     NumeroDeSerie[D] := AuxNum;
   End;
   AuxNum := '';
   AuxNu := '';
   
	
  
	writeln('Informe o CEP: ');
  readln(Cliente[D].Cep);
  writeln('');
  writeln('Informe o numero e completemento: ');
  readln(Cliente[D].Comp);
  writeln('');
  		   writeln('  ORDEM DE PAGAMENTO  ');
			   writeln;
			       writeln('Data e hora da emissão: ',Data[D],' ',Horario[D]);
				     writeln('');
             for D := D to D do
             Begin
               for B := 1 to 100 do  
               Begin
                 if (Venda[D,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
											 writeln(' Quantidade: ',Venda[D,B]);                        
                       writeln(' Produto: ',Produtos[F].Nome);
                       writeln(' Preço unitário: R$',Produtos[F].ValorRep);
										   writeln('');
										 AuxTT := AuxTT + (Venda[D,B] * Produtos[F].ValorRep);
										 Break;
										 End;
                   End;
			           End;
			         End;
			         writeln (' Valor total à pagar: R$',AuxTT);
	   				   writeln(' Vencimento: ', DiaVenc,'/',MesVenc,'/',AnoVenc);
			         AuxTT := 0; 
			        writeln('Tecle Enter Para Continuar');
			       readln;
			      End;
       End;
  End;
 




Procedure RelatorioFuncionario;
Begin
	writeln ('  Relátorio Funcionários  ');
	writeln;
  writeln('Informe seu codigo de funcionario: ');
  readln(CodC);
    while (ValidaFunc(codC)) = false do
		begin
		  writeln('Funcionario não encontrado.');
		  writeln('Informe um codigo valido: ');
		  readln(CodC);
		end;
		E := CodC;
		for E := E to E do
		Begin	
			 for A := 1 to 100 do
			 Begin
			   for C := 1 to 100 do
			   Begin
			    if (Cliente[C].CPF > 0) then
			    Begin			    
			     if (VendasFunc[E,A] = Cliente[C].CPF) then
			     Begin	
			       writeln('Venda realizada dia ',Data[C],' às ',Horario[C],' para o Cliente CPF ',Cliente[C].CPF);
             for B := 1 to 100 do
             Begin
               if (Venda[C,B] > 0) then
               Begin
                 for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
				               writeln(' Quantidade: ',Venda[C,B]);
				               writeln(' Produto: ',Produtos[F].Nome);
				               writeln(' Valor unitário: R$:',Produtos[F].ValorRep );
				               AuxTT := AuxTT + (Venda[C,B] * Produtos[F].ValorRep);
				               writeln('');
				             End;
				           End;
				       End;
			       End;
			     End;
			    End;
       End;
		  End;
		  if (AuxTT > 0) then
	    Begin
		    writeln('Total da Compra - R$ ',AuxTT);
		    AuxTT := 0;
		  End;
		End;
		E := CodC;
    for E := E to E do
		Begin	
			 for A := 1 to 100 do
			 Begin
			   for C := 1 to 100 do
			   Begin
			    if (Emp[C].CNPJ > 0) then
			    Begin
			     writeln('primeiro ',Emp[C].CNPJ);
			     if (VendasFunc[E,A] = Emp[C].CNPJ) then
			     Begin
			     writeln('Segundo ',Emp[C].CNPJ);
			       writeln('Venda realizada dia ',Data[C],' às ',Horario[C],' para a empresa CNPJ ', Emp[C].CNPJ);
             for B := 1 to 100 do
             Begin
               if (VendaEmp[C,B] > 0) then
               Begin 
                 for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
				               writeln(' Quantidade: ',VendaEmp[C,B]);
				               writeln(' Produto: ',Produtos[F].Nome);
				               writeln(' Valor unitário: R$:',Produtos[F].ValorRep );
				               AuxTT := AuxTT + (VendaEmp[C,B] * Produtos[F].ValorRep);
				               writeln('');
				             End;
				           End;
				       End;
			       End;
			     End;
			    End;
       End;
		  End;
		  if (AuxTT > 0) then
	    Begin
		    writeln('Total da Compra - R$ ',AuxTT);
		    AuxTT := 0;
		  End;
    End;
  End;


Procedure RelatorioClientes;
Begin
	 writeln ('  Relátorio Clientes  ');
	 writeln;
	 writeln(' 1 Pessoa Fisica');
	 writeln(' 2 Pessoa Juridica');
	 readln(Op);
	 
	 Case Op of

	 1: Begin
   writeln('Informe o CPF: ');
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
			       writeln('Data e hora da compra: ',Data[C],' ',Horario[C]);
				     writeln('');
             for B := 1 to 100 do  
               Begin
                 if (Venda[C,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
                       AuxTT := AuxTT + (Venda[C,B] * Produtos[F].ValorRep);
											 writeln(' Quantidade: ',Venda[C,B]);                        
                       writeln(' Produto: ',Produtos[F].Nome);
                       writeln(' Preço unitário: R$',Produtos[F].ValorRep);
										 End;
                   End;
			           End; 
			         End;
			         writeln(' Valor pago: R$',AuxTT);
			         AuxTT := 0;   
			  End;
			End;
		 End;
			
		2: Begin
			writeln('Informe o CNPJ: ');
    	readln(Cod);
      while (ValidaEmp(cod)) = false do
			begin
			  writeln('Cliente não encontrado.');
			  writeln('Informe um codigo de cliente válido: ');
				readln(cod);
		  end;
			for C := 1 to 10 do
			Begin		
			  if (Cod  = Emp[C].CNPJ) then
			  Begin
			       writeln('Data e hora da compra: ',Data[C],' ',Horario[C]);
				     writeln('');
             for B := 1 to 100 do  
               Begin
                 if (VendaEmp[C,B] > 0) then
                 Begin
                   for F := 1 to 100 do
                   Begin
                     if (B = Produtos[F].Codigo) then
                     Begin
                       AuxTT := AuxTT + (VendaEmp[C,B] * Produtos[F].ValorRep);
											 writeln(' Quantidade: ',VendaEmp[C,B]);                   
                       writeln(' Produto: ',Produtos[F].Nome);
                       writeln(' Preço unitário: R$',Produtos[F].ValorRep);
                       
                     End;
                   End;
			           End;
			         End;
			    writeln(' Valor pago: R$',AuxTT);
			    AuxTT := 0; 
			   End;
			  End;
			 End;
			 End;
End;


Procedure RelatorioMensal;
Begin
	writeln ('  Relátorio Mensal  ');
	writeln;
  writeln('	1 Compras');
  writeln('	2 Vendas');
  writeln('	3 Receita');
  readln(Op);
  Case Op of
  
   1: Begin
  		 writeln (' COMPRAS ');
  		 writeln;
       writeln('Informe o Mês da Busca');
       readln(F);
       M := F;
      for A := 1 to 100 do
      Begin
        if (MesP[A,M] = F) then
        Begin 
          write('PRODUTOS: ');
          writeln(Produtos[A].Nome);
          write('QUANTIDADE: ');
          for M := 1 to 100 do
          Begin 
            if (MesP[A,M] = F) then
            Begin
              QTDAUXP := QTDAUXP + QTD[A,M];
              Break;
            End;
          End;
          writeln(QTDAUXP);
          write('VALOR UNITÁRIO: ');                      
          writeln(Produtos[A].Valor);
          write('VALOR TOTAL: ');
          writeln(QTDAUXP * Produtos[A].Valor);
          QTDAUXP := 0;
          writeln('');
        End;
      End;
    End;
    
  2: Begin
  		 writeln (' Vendas ');
  		 writeln;
       writeln('Informe o Mês da Busca');
       readln(F);
      for A := 1 to 100 do
      Begin
        if (MesVenda[A] = F) then
        Begin
				  for C := 1 to 100 do
				  Begin
				    if (Produtos[C].Nome <> '') then
				    Begin
              write('PRODUTOS: ');
              writeln(Produtos[C].Nome);                                    
              write('QUANTIDADE: ');
                for B := 1 to 100 do
                Begin
                  if (MesVenda[B] = F) then
                  Begin
                    QTDAUXP := QTDAUXP + QTDMESAUX[B,C];
                  End;
                End;
              writeln(QTDAUXP);
              write('VALOR UNITÁRIO: ');
              writeln(Produtos[C].ValorRep);
              write('VALOR TOTAL: ');
              writeln(QTDAUXP * Produtos[C].ValorRep);
              QTDAUXP := 0;
              writeln('');
            End;
          End;
        End;
      End;
    End;
     
  3: Begin
       writeln(' RECEITAS ');
       writeln;
       writeln('Informe o Mês da Busca');
       readln(F);
       M := F;
       for A := 1 to 100 do 
       Begin
         if (MesP[A,M] = F) then
         Begin
           CompraR := CompraR + QTD[A,M];
         End;
           CompraAux := CompraAux + (CompraR * Produtos[A].Valor);
           CompraR := 0;
       End;
		       for C := 1 to 100 do
		       Begin
		         if (Produtos[C].Nome <> '') then
	           Begin;
               for B := 1 to 100 do
               Begin
                 if (MesVenda[B] = F) then
                 Begin
                   QTDAUXP := QTDAUXP + QTDMESAUX[B,C];  
                 End;
               End;
             End;
             VendaAux := VendaAux + (QTDAUXP * Produtos[C].ValorRep);
             QTDAUXP:= 0;
		       End;
       write('COMPRAS: ');
       writeln(CompraAux);
       write('VENDAS: ');
       writeln(VendaAux);
       write('RECEITA DO MÊS: ');
       writeln(VendaAux - CompraAux);
       QTDAux := 0;
       CompraAux := 0;
       VendaAux := 0;
     End;
  End;
End;

Procedure RelatorioAnual;
Begin
	writeln ('  Relátorio Anual  ');
	writeln;
	writeln('	1 Compras');
  writeln('	2 Vendas');
  writeln('	3 Receita');
  readln(Op);

  Case Op of
  
  1: Begin
  		 writeln (' COMPRAS ');
  		 writeln;
       writeln('Informe o Ano da Busca');
       readln(F); 
      for A := 1 to 100 do
      Begin
        for M := 1 to 100 do
        Begin
        if (AnoP[A,M] = F) then
        Begin 
          write('PRODUTOS: ');
          writeln(Produtos[A].Nome);
          write('QUANTIDADE: ');
          for M := 1 to 100 do
          Begin
            if (AnoP[A,M] = F) then
            Begin
              QTDAUXP := QTDAUXP + QTD[A,M];
            End;
          End;
          writeln(QTDAUXP);
          write('VALOR UNITÁRIO: ');
          writeln(Produtos[A].Valor);
          write('VALOR TOTAL: ');
          writeln(QTDAUXP * Produtos[A].Valor);
          writeln('');
        End;
        QTDAUXP := 0;
        End;
      End;
    End;
    
  2: Begin
  		 writeln (' Vendas ');
  		 writeln;
       writeln('Informe o Ano da Busca');
       readln(F);
      for A := 1 to 100 do
      Begin
        if (AnoVenda[A] = F) then
        Begin
				  for C := 1 to 100 do
				  Begin
				    if (Produtos[C].Nome <> '') then
				    Begin
              write('PRODUTOS: ');
              writeln(Produtos[C].Nome);                                    
              write('QUANTIDADE: ');
                for B := 1 to 100 do
                Begin
                  if (AnoVenda[B] = F) then
                  Begin
                    QTDAUXP := QTDAUXP + QTDMESAUX[B,C];
                  End;
                End;
              writeln(QTDAUXP);
              write('VALOR UNITÁRIO: ');
              writeln(Produtos[C].ValorRep);
              write('VALOR TOTAL: ');
              writeln(QTDAUXP * Produtos[C].ValorRep);
              QTDAUXP := 0;
              writeln('');
            End;
          End;
        End;
      End;
    End;
     
  3: Begin
       writeln(' RECEITAS ');
       writeln;
       writeln('Informe o Ano da Busca');
       readln(F);
       for A := 1 to 100 do 
       Begin
         for M := 1 to 100 do
         Begin
           if (AnoP[A,M] = F) then
           Begin
             CompraR := CompraR + QTD[A,M];
           End;
           CompraAux := CompraAux + (CompraR * Produtos[A].Valor);
           CompraR := 0;
         End;  
       End;
		       for C := 1 to 100 do
		       Begin
		         if (Produtos[C].Nome <> '') then
	           Begin;
               for B := 1 to 100 do
               Begin
                 if (AnoVenda[B] = F) then
                 Begin
                   QTDAUXP := QTDAUXP + QTDMESAUX[B,C];  
                 End;
               End;
             End;
             VendaAux := VendaAux + (QTDAUXP * Produtos[C].ValorRep);
             QTDAUXP:= 0;
		       End;
       write('COMPRAS: ');
       writeln(CompraAux);
       write('VENDAS: ');
       writeln(VendaAux);
       write('RECEITA DO MÊS: ');
       writeln(VendaAux - CompraAux);
       QTDAux := 0;
       CompraAux := 0;
       VendaAux := 0;
     End;
  End;
End;

Begin
Dia := 1;
Mes := 1;
Ano := 2020;

  writeln('  -  A Melhor Distribuidora (AMD)  -  ');
  miliSegundos := 1700;
  Delay (miliSegundos);
	Repeat
	writeln;
  writeln('   - Menu Principal -    ');
  writeln;
  writeln(' 1 - Cadastros');
  writeln(' 2 - Vendas');
  writeln(' 3 - Relatórios');
  writeln;
  writeln(' 4 - Sair');
  readln(Op);
  clrscr;
  
  Case Op of
    
    1: Begin
          Repeat
            writeln('   -  Menu Cadastros  -   ');
            writeln;
            writeln('1 - Cadastrar Funcionário');
            writeln('2 - Cadastrar Cliente');
            writeln('3 - Cadastrar Empresa');
            writeln('4 - Cadastrar Produto');
            writeln;
            writeln('5 - Voltar para o Menu Principal');
            readln(Op);
            clrscr;
  
            Case Op of
     
              1: Begin
                   CadastroFuncionario;
                   clrscr;
                 End;
    
  		        2: Begin
  		             Cadastro;
  		             clrscr;
  		           End;
		
  		        3: Begin
  		             RegistroEmp;
  		             clrscr;
  		           End;
		
  		        4: Begin
  		             writeln('Deseja cadastrar um novo produto ou abastecer estoque');
  		             writeln('[1] Cadastrar');
  		             writeln('[2] Abastercer');
  		             readln(Op);
  		               Case Op of
  		             
  		               1: Begin
  		                    Cadastroproduto;
									      End;
									    
									   2: Begin
									        AbastecerEstoque; 
									      End; 
											End;  
											
  		             clrscr;
   		           End;
		   
  		        5: Begin
  		             Resp := 'P';
  		           End;   
			 	 	    
          End;
          Until UpCase (Resp) = 'P'; 
       End;
    
		2: Begin
		     Repeat
  		     writeln('  -  Menu Vendas  -  ');
  		     writeln;
           writeln('1 - Varejo'); 
           writeln('2 - Atacado');
           writeln;
           writeln('3 - Voltar para o Menu Principal');
           readln(Op);
           clrscr;
  
           Case Op of
      
             1: Begin
                  VendasVarejo;
                  clrscr;
                End;
    
  		       2: Begin
  		            VendasAtacado;
  		            clrscr;
  		          End;
		          
  		       3: Begin
  		            Resp := 'P';
  		          End;
			 	 	    
           End;
         Until UpCase (Resp) = 'P'; 
		   End;
		
		3: Begin
		     Repeat
		       writeln('   -   Menu Relatórios   -   ');
		       writeln;
           writeln('1 - Relatório de Funcionários');
           writeln('2 - Relatório de Clientes');
           writeln('3 - Relatório Mensal');
           writeln('4 - Relatório Anual'); 
					 writeln;          
           writeln('5 - Voltar para o Menu Principal');
           readln(Op);
           clrscr;
  
           Case Op of
     
             1: Begin
                  RelatorioFuncionario;
                  writeln('Tecle Enter Para Continuar');
                  readln;
                  clrscr;
                End;
      
  		       2: Begin
  		            RelatorioClientes;
  		            writeln('Tecle Enter Para Continuar');
                  readln;
  		            clrscr;
  		          End;
		
   		       3: Begin
   		            RelatorioMensal;
   		            writeln('Tecle Enter Para Continuar');
                  readln;
   		            clrscr;
  		          End;
		
   		       4: Begin
   		            RelatorioAnual;
   		            writeln('Tecle Enter Para Continuar');
                  readln;
   		            clrscr;
  		          End;
		   
  		       5: Begin
  		            Resp := 'P';
  		          End;
  		            	   	 	    
           End;
         Until UpCase (Resp) = 'P'; 
		   End;
		
		4: Begin
		     Resp := 'S';
		   End;
			 	 	    
  End; 
	Until UpCase (Resp) = 'S'; 
	
End.