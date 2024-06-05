programa
{
	inteiro nivel_agua = 0
    inteiro volume_chuva = 0
    logico sistema_ativo = falso
    cadeia alerta_nivel = "O nivel da agua ultrapassou 5m."
    cadeia alerta_volume1 = "Atenção moradores do Rio Grande do Sul, o volume da chuva ultrapassou 100mm(nivel de perigo 3)."
    cadeia alerta_volume2 = "O volume da chuva ultrapassou 120mm (nivel de perigo 4)."
    cadeia alerta_barragem = "Atenção moradores do Rio Grande do Sul, a barragem 14 de Julho se rompeu,peguem o necessario e procurem abrigo em pontos alto."
    cadeia Nivel_Perigo[5]
    inteiro opcao,Perigo,i
    caracter barragem
    
    funcao inicio()
    {
        Nivel_Perigo[0] = "(Sem Perigo): Nenhuma inundação esperada. Condições normais.\n"
        Nivel_Perigo[1] = "(Perigo Leve): Possibilidade de pequenas inundações em áreas de baixa altitude. Pequeno impacto na vida cotidiana.\n"
        Nivel_Perigo[2] = "(Perigo Moderado): Inundações moderadas esperadas. Algumas estradas podem ser fechadas e pode haver interrupções nos serviços públicos.\n"
        Nivel_Perigo[3] = "(Perigo Considerável): Grandes inundações esperadas. Muitas estradas podem ser intransitáveis e pode haver grandes interrupções nos serviços públicos.\n"
        Nivel_Perigo[4] = "(Perigo Extremo): Inundações catastróficas esperadas. Danos extensos à infraestrutura e propriedades. Evacuação em grande escala pode ser necessária. \n"
        
        escreva("--------------------\n")
        escreva(" PROGRAMA BARREIRA \n")
        escreva("--------------------\n")
        escreva("Central,inicie a documentação \n")
        escreva ("[1]- Volume da chuva \n")
        escreva ("[2]- Barragem da Hidrelétrica \n")
        escreva ("[3]- Perigo \n")
        escreva("--------------------\n")
      
        leia (opcao) //opção de escolhas 
        se (opcao == 1){
            Chuvas()
        }
        senao se (opcao == 2){
            Barragem_Hidreletrica()
        }
        senao se (opcao == 3){
            Perigos_Chuva()
        }
    }
    
    funcao Chuvas()
    {
        escreva("\nInforme o volume da chuva em mm: \n")
        leia(volume_chuva)
 
       se (volume_chuva > 120 ){
       	 escreva(alerta_volume2)
       	sistema_ativo = verdadeiro
       }
       senao se (volume_chuva > 100 ){
       	 escreva(alerta_volume1)
       }

              senao se (volume_chuva < 100 ){
       escreva("\nCondições meteorológicas normais.\n")

              }
      escreva("\nInforme o nivel da agua \n")
         leia(nivel_agua)
       
      	se(nivel_agua > 5) {
      		 escreva(alerta_nivel)
		sistema_ativo = verdadeiro
        	
        
        }

       senao se (nivel_agua < 5 ){
       escreva("\n nivel da agua em condições normais.\n")
    }
        senao se (sistema_ativo) {
            escreva(alerta_nivel)
        } senao {
            escreva("\nCondições meteorológicas normais.\n")
        }
    }

    
    funcao Barragem_Hidreletrica()
    {
        escreva("Informe Se rompeu ou não: ")
        leia(barragem)
        sistema_ativo = verdadeiro
        
    }
    
    funcao Perigos_Chuva()
    { 
        para (i = 0;i< 1;i=i)
        {
            escreva("\n Digite o perigo ", i, ":")
            leia(i)
        }
        escreva("Perigo na posição ", i, " >", Nivel_Perigo[i])
    } 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */