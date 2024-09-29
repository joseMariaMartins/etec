programa
{
    inclua biblioteca Texto --> T

    funcao inicio()
    {
        cadeia nome, cidade, escola, filhos
        inteiro dia, mes, ano_n, ano_atual, mes_atual, dia_atual, idade, filhos_num = 0

        escreva("Qual é seu nome? ")
        leia(nome)
        escreva("Onde você mora?" )
        leia(cidade)  
        escreva("Onde você estuda? ")
        leia(escola)
        escreva("Em que dia você nasceu? ")
        leia(dia)
        escreva("Em que mês você nasceu? ")
        leia(mes)
        escreva("Em que ano você nasceu? ")
        leia(ano_n)
        escreva("Em que ano nos estamos? ")
        leia(ano_atual)
        escreva("Mês atual? ")
        leia(mes_atual)
        escreva("Dia atual? ")
        leia(dia_atual)
        escreva("Você tem filhos? ")
        leia(filhos)

        se (T.caixa_baixa(filhos) == "sim" ou T.caixa_baixa(filhos) == "s" ou T.caixa_baixa(filhos) == "tenho") {
            escreva("Quantos? ")
            leia(filhos_num)
        }

        limpa()

        idade = ano_atual - ano_n
        se (mes == mes_atual) {
            se (dia <= dia_atual) {
                escreva("Você tem " + idade + " anos completos de idade.")
            } senao {
                escreva("Você tem " + (idade - 1) + " anos completos de idade.")
            }
        } senao se (mes < mes_atual) {
            escreva("Você tem " + idade + " anos completos de idade.")
        } senao {
            escreva("Você tem " + (idade - 1) + " anos completos de idade.")
        }

        escreva("\nAgora já sei que seu nome é " + nome)
        escreva("\nQue mora em " + cidade)
        escreva("\nQue estuda na " + escola)

        se (T.caixa_baixa(filhos) == "sim" ou T.caixa_baixa(filhos) == "s" ou T.caixa_baixa(filhos) == "tenho") {
            escreva("\nE que tem " + filhos_num + " filhos.")
        } senao {
            escreva("\nE que não tem filhos.")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 801; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */