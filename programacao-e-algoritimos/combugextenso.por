programa {
	inclua biblioteca Texto --> T
	funcao inicio() {
		cadeia unidade [] ={"zero", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez", "onze", "doze", "quatorze", "quinze", "dezesseis", "dezessete", "dezoito", "dezenove"},
			  dezena [] ={"", "", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"},
			  centena [] ={"", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"}, vresp			 
		inteiro n, ne, nd, nd2, ne2, ne3, nd3

		faca {
			limpa()

			escreva("Me de um número de 0 a 1000: ")
			leia(n)
				ne = n / 10
				nd = n % 10
				ne2 = n / 100
				nd2 = n % 100
				ne3 = nd2 /10
				nd3 = nd2 % 10
			limpa()

			se (n<0 e n>1000) {
				escreva("******Tá chapando parça, Tem isso aqui não******")	
			} se (n == 1000) {
				escreva("mil")
			} se (n == 100) {
				escreva("cem")
			} se (n < 20) {
				escreva(unidade[n])
			} se (n >= 20 e n < 100) {	
				escreva(dezena[ne])
				se (nd == 0) {
					pare
				} senao {
					escreva(" e " + unidade[nd])
				}
			} se (n > 100 e n < 1000) {
				escreva(centena[ne2])
				se (nd2 == 0) {
					pare
				} senao {
					se (nd2 < 20) {
						escreva(" e " + unidade[nd2])
					} senao {
						escreva(" e " + dezena[ne3])
						se (nd3 != 0) {
							escreva(" e " + unidade[nd3])
						}
					}
				}
			}
			
			escreva("\n\nGostaria de fazer novamente? ")
			leia(vresp)
			
		    } enquanto(T.caixa_baixa(vresp) == "sim" ou T.caixa_baixa(vresp) == "gostaria" )
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 7, 10, 1}-{ne, 7, 13, 2}-{nd, 7, 17, 2}-{nd2, 7, 21, 3}-{ne2, 7, 26, 3}-{ne3, 7, 31, 3}-{nd3, 7, 36, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */