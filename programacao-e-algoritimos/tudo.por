programa {
	inclua biblioteca Matematica --> M
	inclua biblioteca Texto --> T
	inclua biblioteca Util --> U
	funcao inicio() {
		inteiro opcao = 0

		faca {
			limpa()

			escreva("========================")
			escreva("\n *** Menu Principal ***")
			escreva("\n========================")
			escreva("\n[1] Todos os Calculos")
			escreva("\n[2] Entrevista")
			escreva("\n[3] Cálculo Escolhido")
			escreva("\n[4] ìmpar Par")
			escreva("\n[5] Comparar Números")
			escreva("\n[6] Gerar Números")
			escreva("\n[7] Tabuada")
			escreva("\n[8] Fim")
			escreva("\n========================")

			escreva("\nDigite sua opção: ")
			leia(opcao)
			limpa()
			
			escolha(opcao) {
				caso 1:
					calculos()
					pare
				caso 2:
					entrevista()
					pare
				caso 3:
					calculo_e()
					pare
				caso 4:
					impar_par()
					
					pare
				caso 5:
					compara_numero()
					pare
				caso 6:
					gerar_n()
					pare
				caso 7:
					tabuada()
					pare
				caso 8:
					pare
				caso contrario:
					escreva("\n\n[ *** Opção Inválida *** ]")
					U.aguarde(2000)
			}
		} enquanto  (opcao!=8)
	}
	funcao gerar_n() {
			     inteiro ini, fim, passo
    cadeia opcao

    faca {
        escreva("Digite de onde você deseja iniciar a contagem: ")
        leia(ini)
        escreva("Digite o passo da contagem: ")
        leia(passo)
        escreva("Digite o final da sua contagem: ")
        leia(fim)

        faca {
            escreva(ini)

            se (ini + passo > fim) {
                escreva(".") 
            } senao {
                escreva(", ") 
            }

            U.aguarde(1000) 

            ini += passo 

        } enquanto (ini <= fim)

        U.aguarde(3000)

        escreva("\nDeseja continuar contando números? (S/N): ")
        leia(opcao)

        opcao = T.caixa_alta(opcao) 

    } enquanto (opcao == "S")

    escreva("Voltando ao menu...\n")
    U.aguarde(2000)

	}
	funcao impar_par() {
		inteiro num, res
		cadeia opcao
		faca { 
		escreva("Digite um número ")
		leia(num)
		res = num % 2
		se (res == 0) {
			escreva("O número digitado é par." )
			U.aguarde(5000)
		} senao {
			escreva("O número digitado é impar. ")
			U.aguarde(5000)
		}  U.aguarde(3000)

       escreva("\nDeseja continuar verificando os números? (S/N): ")
       leia(opcao)
       opcao = T.caixa_alta(opcao)

    } enquanto (opcao == "S") 
  
    escreva("Voltando ao menu...\n")
    U.aguarde(2000) 
	} 
	funcao entrevista() {
		cadeia nome, casa, escola = "" , filhos, fazer_dnv, estuda, opcao
		inteiro dia_nas, mes_nas, ano_nas, ano_atual, mes_atual, dia_atual, filhos_quant, filhos_quantr=0, filhos_ver=0, idade
		
	faca {

		limpa()
		
			escreva("Qual é seu nome? ")
			leia(nome)
			escreva("\nOnde você mora? ")
			leia(casa)
			escreva("\nVocê estuda? ")
			leia(estuda)
			
			se (T.caixa_baixa(estuda)=="sim" ou T.caixa_baixa(estuda)=="estudo" ou T.caixa_baixa(estuda)=="s") {
					escreva("\nOnde você estuda? ")
					leia(escola)
				}
			
			escreva("\nEm que dia você nasceu? ")
			leia(dia_nas)
			escreva("\nEm que mês você nasceu? (escreva o mês em número) ")
			leia(mes_nas)
			escreva("\nEm que ano você nasceu? ")
			leia(ano_nas)
			escreva("\nEm que ano nós estamos? ")
			leia(ano_atual)
			escreva("\nMês atual? ")
			leia(mes_atual)
			escreva("\nDia atual? ")
			leia(dia_atual)
			escreva("\nVocê tem filhos? ")
			leia(filhos)

			se (T.caixa_baixa(filhos)=="sim" ou T.caixa_baixa(filhos)=="tenho" ou T.caixa_baixa(filhos)=="s" ) {
					escreva("\nQuantos? ")
					leia(filhos_ver)
				}
 
			filhos_quant =  filhos_ver + filhos_quantr
			idade = ano_atual - ano_nas
			
			limpa()

			escreva("\nAgora já sei que seu nome é " + nome)
			escreva("\nQue mora em " + casa)
			
			se (T.caixa_baixa(estuda)=="sim" ou T.caixa_baixa(estuda)=="estudo" ou T.caixa_baixa(estuda)=="s") {
					escreva("\nQue estuda na " + escola)
				} senao {
						escreva("\nQue não estuda")
					}
					
			se (mes_atual > mes_nas) {
					escreva("\nVocê tem " + idade + " anos")
				} senao se (mes_atual == mes_nas e dia_atual >= dia_nas) {
						escreva("\nVocê tem " + idade + " anos")
					} senao {
							escreva("\nVocê tem	" + (idade - 1) + " anos")
						}
			se (filhos_quant == 1) {
					escreva("\nE que tem " + filhos_quant + " filho")
				} senao se (filhos_quant > 1) {
						escreva("\nE que tem " + filhos_quant + " filhos")
					} senao {
							escreva("\nE que não possui filhos")
						}
			escreva("\nDeseja fazer a entrevista novamente? (S/N): ")
       leia(opcao)
       opcao = T.caixa_alta(opcao)

    } enquanto (opcao == "S") 
  
    escreva("Voltando ao menu...\n")
    U.aguarde(2000) 
	}
	funcao tabuada() {
		    inteiro numero, limite
		    cadeia opcao
    faca {
    escreva("Digite o número para o qual você deseja ver a tabuada: ")
    leia(numero)
    
    escreva("Até qual número você deseja calcular a tabuada de " + numero + "? ")
    leia(limite)
    
    para (inteiro i = 1; i <= limite; i++) {
        escreva(numero + " x " + i + " = " + (numero * i) + "\n")
    }

    U.aguarde(3000)

    	escreva("\nDeseja fazer a entrevista novamente? (S/N): ")
       leia(opcao)
       opcao = T.caixa_alta(opcao)

    } enquanto (opcao == "S") 
  
    escreva("Voltando ao menu...\n")
    U.aguarde(2000) 
	}
	funcao compara_numero() {
		real num1, num2
		cadeia opcao

		escreva("Digite um número ")
		leia(num1)
		escreva("\nMim de outro número ")
		leia(num2)
		faca {
		se (num1 > num2) {
			escreva("\nO número " + num1 + " é maior que o número " + num2)
			}
			senao se (num1 < num2) {
				escreva("\nO número " + num1 + " é menor que o número " + num2)
				} senao se (num2 > num1)
					{
					escreva("\no número " + num2 + " é maior que o número " + num1)
					} senao se (num2 < num1)
						{
						escreva("\no número " + num2 + " é menor que o número " + num1)
						}
						senao {
							escreva("\nEles são iguais")
							}
			U.aguarde(5000)	
				escreva("\nDeseja fazer a entrevista novamente? (S/N): ")
       leia(opcao)
       opcao = T.caixa_alta(opcao)

    } enquanto (opcao == "S") 
  
    escreva("Voltando ao menu...\n")
    U.aguarde(2000) 		
	}
	funcao calculos() {
		real num1, num2, soma, sub, multi, divi
		cadeia opcao
		limpa()
		faca {
 		escreva("Escreva o primeiro número ")
 		leia(num1)
 		escreva("Escreva o segundo número ")
 		leia(num2)
 		
 		soma = num1 + num2
 		sub = num1 - num2
 		multi = num1 * num2
 		divi = num1 / num2
 		
 		escreva("\n")
 		
 		escreva("\n" + num1 + " + " + num2 + " = " + soma)
 		U.aguarde(3000)
 		escreva("\n" + num1 + " - " + num2 + " = " + sub)
 		U.aguarde(3000)
 		escreva("\n" + num1 + " x " + num2 + " = " + multi)
 		U.aguarde(3000)
 		escreva("\n" + num1 + " ÷ " + num2 + " = " + divi)
    			escreva("\nDeseja fazer a entrevista novamente? (S/N): ")
       leia(opcao)
       opcao = T.caixa_alta(opcao)

    } enquanto (opcao == "S") 
  
    escreva("Voltando ao menu...\n")
    U.aguarde(2000) 
	}	
	funcao calculo_e() {
    real n1, n2, res
    cadeia operacao, opcao

    faca {
        limpa()
        escreva("Escreva um número: ")
        leia(n1)
        escreva("\nEscreva outro número: ")
        leia(n2)

        escreva("\nQual operação você deseja realizar? \nEscolha uma dessas: +  -  *  /  ^\n")
        leia(operacao)

        se (operacao == "+") {
            res = n1 + n2
            escreva("\nO resultado de " + n1 + " + " + n2 + " é igual a " + res)
        } senao se (operacao == "-") {
            res = n1 - n2
            escreva("\nO resultado de " + n1 + " - " + n2 + " é igual a " + res)
        } senao se(operacao == "*") {
            res = n1 * n2
            escreva("\nO resultado de " + n1 + " * " + n2 + " é igual a " + res)
        } senao se (operacao == "/") {
            res = n1 / n2
            escreva("\nO resultado de " + n1 + " / " + n2 + " é igual a " + res)
        } senao se (operacao == "^") {
            res = M.potencia(n1, n2) 
            escreva("\nO resultado de " + n1 + " ^ " + n2 + " é igual a " + res)
        } senao {
            escreva("\nOperação inválida!")
        }

        escreva("\nDeseja realizar outro cálculo? (S/N): ")
        leia(opcao)
        opcao = T.caixa_alta(opcao) 

    } enquanto (opcao == "S") 
    
    escreva("Voltando ao menu...\n")
    U.aguarde(2000)
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6825; 
 * @DOBRAMENTO-CODIGO = [62, 295];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */