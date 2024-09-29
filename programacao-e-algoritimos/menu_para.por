programa {
    inclua biblioteca Texto --> T

    inteiro num[10]
    inteiro i

    funcao inicio() {
        para(i = 0; i < 10; i++) {
            escreva("Escreva um número: ")
            leia(num[i])
        }
        limpa()
        escreva("\n============================***Informações***============================")
        escreva("\n\n         Os números informados foram: ")
        para(i = 0; i < 10; i++) {
            se(i == 9) {
                escreva(num[i], ". ")
            } senao {
                escreva(num[i], ", ")
            }
        }

        par()
        impar()
        maior_n()
        menor_n()
        soma()
        media()
    }

    funcao par() {
        escreva("\n\n         Números pares: ")
        inteiro ultimo_par = -1
        para(i = 0; i < 10; i++) {
            se (num[i] % 2 == 0) {
                ultimo_par = i
            }
        }
        para(i = 0; i < 10; i++) {
            se (num[i] % 2 == 0) {
                se (i == ultimo_par) {
                    escreva(num[i], ". ")
                } senao {
                    escreva(num[i], ", ")
                }
            }
        }
    }

    funcao impar() {
        escreva("\n\n         Números ímpares: ")
        inteiro ultimo_impar = -1
        para(i = 0; i < 10; i++) {
            se (num[i] % 2 == 1) {
                ultimo_impar = i
            }
        }

        para(i = 0; i < 10; i++) {
            se (num[i] % 2 == 1) {
                se (i == ultimo_impar) {
                    escreva(num[i], ". ")
                } senao {
                    escreva(num[i], ", ")
                }
            }
        }
    }

    funcao maior_n() {
        inteiro maior = num[0]
        inteiro posicao = 0

        para(i = 1; i < 10; i++) {
            se (num[i] > maior) {
                maior = num[i]
                posicao = i
            }
        }

        escreva("\n\n         O maior número é: ", maior, " na posição: ", posicao)
    }

    funcao menor_n() {
        inteiro menor = num[0]
        inteiro posicao = 0
        para(i = 1; i < 10; i++) {
            se (num[i] < menor) {
                menor = num[i]
                posicao = i
            }
        }

        escreva("\n\n         O menor número é: ", menor, " na posição: ", posicao)
    }

    funcao soma() {
        inteiro total = 0
        para(i = 0; i < 10; i++) {
            total = total + num[i]
        }
        escreva("\n\n         A soma dos números é: ", total)
    }

    funcao media() {
        inteiro media_n = 0, total = 0
        para(i = 0; i < 10; i++) {
            total = total + num[i]
        }
        media_n = total / 10
        escreva("\n\n         A média dos números é: ", media_n)
        escreva("\n\n=========================================================================")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 768; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */