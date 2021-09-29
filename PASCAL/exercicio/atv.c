#include<stdio.h>
#include<string.h>
int i;
typedef struct dados
{
	int matricula[10];
	char nome[10];
	char curso[20];
	float nota1;
	float nota2;
	float nota3;
}dados;
preencher(dados x[], int y)
{
	for(i=0;i<y;i++)
	{
	printf("Digite a sua matricula\n");
	scanf("%d",&x[i].matricula);	
	printf("Digite seu nome\n");
	scanf("%s",&x[i].nome);
	printf("Digite seu curso\n");
	scanf("%s",&x[i].curso);
	printf("Digite sua sua nota\n");
	scanf("%f",&x[i].nota1);
	printf("Digite sua sua nota\n");
	scanf("%f",&x[i].nota2);
	printf("Digite sua sua nota\n");
	scanf("%f",&x[i].nota3);
	}
}
imprimir(dados x[],int y)
{

	for(i=0;i<y;i++)
	{
	
	printf("Matricula: %d \n Nome: %s\n Curso: %s\n Nota1: %.2f\n Nota2: %.2f\n Nota3: %.2f\n",x[i].matricula , x[i].nome, x[i].curso, x[i].nota1, x[i].nota2, x[i].nota3);
	
	} 

}
main()
{
	dados v[4];
	int x, n=1;
	int escolha;
	while (n!=0)
	{
	printf("1. Cadastrar Alunos\n");
	printf("2. Imprimir todos os dados dos alunos\n");
	scanf("%d", &escolha);
	switch (escolha)
	{
		case 1: preencher(v,50);
		break;
		case 2: imprimir (v,50);
		break;
		default:
			printf("Código inválido!\n");
	}
	printf("digite 0 para sair e 1 para continuar\n");
	scanf("%d", &n);
	}
	
}


