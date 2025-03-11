programa
{
	
   	real saldo = 150.00
    cadeia nome
    inteiro senhaCorreta = 3589  

	funcao inicio() {
    escreva("Por favor, informe seu nome: ")
    leia(nome)
    escreva("Olá ", nome, "! É um prazer ter você por aqui!\n")
    menu()
  }

		 funcao menu(){
        inteiro opcao
        
        escreva("\nEscolha uma opção:\n")
        escreva("1. Ver saldo\n")
        escreva("2. Ver extrato\n")
        escreva("3. Fazer saque\n")
        escreva("4. Fazer depósito\n")
        escreva("5. Fazer transferência\n")
        escreva("6. Sair\n")
        leia(opcao)

		escreva("A opção selecionada foi: " + opcao + "\n")

    	 escolha (opcao){
    caso 1:
        verSaldo()
    caso 2:
        verExtrato()
    caso 3:
        fazerSaque()
    caso 4:
        fazerDeposito()
    caso 5:
        fazerTransferencia()
    caso 6:
        sair()
    caso contrario:
        erro()
     } 
     }
     
	funcao verSaldo(){
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    menu()
	}
	
  funcao verExtrato(){
        escreva("Extrato da conta:\n")
        escreva("- Depósito: R$ 200,00\n")
        escreva("- Compra: Supermercado - R$ 50,00\n")
        escreva("- Compra: Restaurante - R$ 30,00\n")
        escreva("- Depósito: R$ 100,00\n")
        menu()
  }

  funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		} senao {
			saldo = saldo - saque
			verSaldo()
		}
    menu()
	}
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
    menu()
	}

   funcao fazerTransferencia(){
   
     inteiro conta
     real valorTransferencia
        
     escreva("Informe o número da conta para transferência: ")
     leia(conta)
        
     escreva("Informe o valor da transferência: ")
     leia(valorTransferencia)
        
     se (valorTransferencia <= 0 ou valorTransferencia > saldo){
         escreva("Operação não autorizada.\n")
         fazerTransferencia()
    } 
     senao {
     saldo = saldo - valorTransferencia
     escreva("Transferência de R$ ", valorTransferencia, " realizada para a conta ", conta, " com sucesso!\n")
     verSaldo()
        }
        menu()
  }

   funcao erro() {
		escreva("Opção Inválida. Escolha uma opção entre 1 e 6.\n")
		inicio()
	}

	funcao sair(){
		escreva(nome, ", foi um prazer ter você por aqui!\n")
	}

   
}