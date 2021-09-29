PROGRAM Agenda_Telefonica;

(*
 * Agenda telefonica com inclusao, edicao e exclusao de Contatos.
 *
 * @author Marcelo de Andrade <marcelinhodeandrade@hotmail.com>
 * @version 1.0
 * @date 21/11/2010
 *
 *)
 
USES CRT;
 
VAR
   i, j, k, TotalContatos, menu : integer;
   aux, ProcuraContato: string;
   nomes	: array[1..10] of string;
   
   Registro: ARRAY[1..10] OF RECORD
			 nome, email: string [30];
             telefone	: string[11];            
			 END;
	 
BEGIN

{*
** Inicia-se a variavel i para contar a quantidade de registros.
*}
	i:= 1;

REPEAT

	writeln('=========================================');
	writeln(' Agenda telefonica ');
	writeln('=========================================');
	writeln;
	writeln('1 - Adicionar Contato.');
	writeln('2 - Pesquisar Contato.');	
	writeln('3 - Exibir Contatos.');
	writeln('4 - Ordenar contatos em ordem crescente.');
	writeln('5 - Ordenar contatos em ordem decrescente.');
	writeln('6 - Alterar Contato.');
	writeln('7 - Remover Contato.');
	writeln('8 - Sair.');
	writeln;
	write('Opcao desejada: '); readln(menu);
	writeln;
	writeln('=========================================');
		
	CASE menu OF
	
// Caso 1 	
		1: BEGIN
		
			writeln('Novo Contato');
			writeln;
			write('Nome:    : '); readln(Registro[i].nome);
			write('Telefone : '); readln(Registro[i].telefone);
			write('E-mail:  : '); readln(Registro[i].email);
			writeln;
			writeln('Contato salvo... Pressione qualquer tecla.');
			readln;
			clrscr;
			
			i:= i + 1;
			
		END;
		
// Caso 2		
		2: BEGIN
			write('Informe o nome ou email do contato: ');  readln(ProcuraContato);
			writeln('=========================================');
			IF ( ProcuraContato <> '' ) THEN
			BEGIN
				FOR j := 1 TO 10 DO
				BEGIN
					IF ( (ProcuraContato = Registro[j].nome) OR (ProcuraContato = Registro[j].email)  ) THEN
					BEGIN
						writeln('Nome     : ', Registro[j].nome);
						writeln('Telefone : ', Registro[j].telefone);
						writeln('Email    : ', Registro[j].email);
						writeln('-----------------------------------------');
					END;
				END;
				
				IF ( (ProcuraContato <> Registro[j].nome) OR (ProcuraContato <> Registro[j].email)  ) THEN
					writeln('Contato nao encontrado.');
					
			END;
			
			readln;
			clrscr;
		END;
		
// Caso 3 		
		3: BEGIN
		
			TotalContatos := 0;
			
				FOR j := 1 TO 10 DO
				BEGIN
					IF (Registro[j].nome <> '') THEN
					BEGIN
							writeln('Nome     : ', Registro[j].nome);
							writeln('Telefone : ', Registro[j].telefone);
							writeln('email    : ', Registro[j].email);
							writeln('-----------------------------------------');
							TotalContatos := TotalContatos + 1;
					END;		
				END; 

			writeln('Total de Contatos: ', TotalContatos);
			writeln('Capacidade disponivel: ', 10 - TotalContatos);
						   
			readln;
			clrscr;		

		END;
// Caso 4
		4: BEGIN
			
			FOR j := 1 TO 9 DO
			BEGIN			
				  FOR k := j+1 TO 10 DO
				  BEGIN

								IF ( Registro[j].nome > Registro[k].nome ) THEN
								BEGIN
								// Ordena os nomes
									aux					:= Registro[j].nome;
									Registro[j].nome	:= Registro[k].nome;
									Registro[k].nome	:= aux;
								// Ordena os telefones
									aux						:= Registro[j].telefone;
									Registro[j].telefone	:= Registro[k].telefone;
									Registro[k].telefone	:= aux;
								// Ordena os emails
									aux					:= Registro[j].email;
									Registro[j].email	:= Registro[k].email;
									Registro[k].email	:= aux;									
								END;
			
				   END;			        
			END;
			
          writeln('Dados organizados!');
          readln;
		  clrscr;
		   
		END;
// Caso 5
		5: BEGIN
			
			FOR j := 1 TO 9 DO
			BEGIN			
				  FOR k := j+1 TO 10 DO
				  BEGIN

								IF ( Registro[j].nome < Registro[k].nome ) THEN
								BEGIN
								// Ordena os nomes
									aux					:= Registro[j].nome;
									Registro[j].nome	:= Registro[k].nome;
									Registro[k].nome	:= aux;
								// Ordena os telefones
									aux						:= Registro[j].telefone;
									Registro[j].telefone	:= Registro[k].telefone;
									Registro[k].telefone	:= aux;
								// Ordena os emails
									aux					:= Registro[j].email;
									Registro[j].email	:= Registro[k].email;
									Registro[k].email	:= aux;									
								END;
			
				   END;			        
			END;
			
          writeln('Dados organizados!');
          readln;
		  clrscr;
		   
		END;
//			
		6: BEGIN
			  write('Informe o nome do contato que deseja alterar: ');  readln(ProcuraContato);
			  writeln('=========================================');
			  FOR j := 1 TO 10 DO
			  BEGIN
				 IF (ProcuraContato = Registro[j].nome) THEN
				 BEGIN
								write('Nome     [ ',Registro[j].nome,']     : '); readln( Registro[j].nome );
								write('Telefone [ ',Registro[j].telefone,'] : '); readln( Registro[j].telefone );
								write('Email    [ ',Registro[j].email,']    : '); readln( Registro[j].email );
								writeln('-----------------------------------------');
				 END;
			  END;
			  readln;
			  clrscr;
		END;
//
		7 : BEGIN
		
				  Write('Informe o nome do contato que deseja excluir: ');  readln(ProcuraContato);
				  writeln('=========================================');
				  for j := 1 TO 10 DO
				  BEGIN
					 IF (ProcuraContato = Registro[j].nome) THEN
					 BEGIN
						Registro[j].nome		:= '';
						Registro[j].telefone	:= '';
						Registro[j].email		:= '';
						
						writeln('Contato deletado!');
						readln;
					 END;
				  END;
					readln;
					clrscr;
				END;
//

	END;
	
UNTIL ( menu = 8 );
	readln;
END.