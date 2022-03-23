//
//  main.swift
//  BloodyEmotional
//
//  Created by Gabriela Souza Batista on 15/03/22.
//

import Foundation

// local onde o usuário vai permitir perguntas acerca do seu periodo menstrual
func firstContact() {
    let firstInput = """
Olá, seja muito bem-vinda(o) ao seu calendário menstrual! Aqui iremos te falar seu próximo ciclo menstrual, próximo período fértil e quais os sentimentos que podem surgir nesses dias, pra te ajudar a identificar algumas coisas!

Primeiro você terá que responder algumas perguntinhas, pode ser?
Digite:
[1] Sim, desejo continuar!
[2] Não, encerrar!
"""
    print(firstInput)
}
firstContact()

// fazer while para quando a opçao for não, o codigo voltar para o começo.
// while
if let escolha = readLine()
{
    if let resposta = Int(escolha) {
        if (resposta == 1) {
            print("Ótimo, vamos dar continuidade à próxima pergunta (e última), não vai demorar muito.")
        }
        if (resposta == 2){
            print("Você decidiu não prosseguir para as próximas perguntas. Mas tudo bem, se decidir mudar de ideia estaremos aqui.")
        }
        if (resposta != 1 && resposta != 2){
            print("Por favor, digite um número válido")
        }
    }
    else{
        print("Por favor, digite um valor válido")
    }
}


print("**************************************************************************************************")


print(
    """
    A última pergunta vai ser um pouco pessoal, mas nada que te faça se sentir constrangida(o), okay?
    
    - Qual foi o seu último ciclo menstrual? Ou seja, último dia da sua menstruação.
    
    OBS.: Coloque a data no seguinte formato: dd/mm/aa

    """)
print("**************************************************************************************************")

// entrada da data do usuário
let input = readLine()! // entrada da data exemplo: 22/03/2022

let formatter = DateFormatter()
formatter.dateFormat = "dd/MM/yy"

guard let inputDate = formatter.date(from: input) else {
        fatalError("DATA INVÁLIDA")
    }


// data de input > acrescentar 24 dias
var dateMenstruacao = DateComponents()
dateMenstruacao.day = 24  // inicio do proximo ciclo

//data de input > acrescentar 8 dias
var datePeriodoFertil1 = DateComponents()
datePeriodoFertil1.day = 8 // dia 1 dentro da média a partir dos 14 dias do final do ciclo

var datePerdiodoFertil2 = DateComponents()
datePerdiodoFertil2.day = 9 // dia 2 dentro da media a partir dos 14 dias do final do ciclo

var datePerdiodoFertil3 = DateComponents()
datePerdiodoFertil3.day = 10//dia 2 dentro da media a partir dos 14 dias do final do ciclo

let customDateMenstruacao = Calendar.current.date(byAdding: dateMenstruacao, to: inputDate)!
let customDatePeriodo1 = Calendar.current.date(byAdding: datePeriodoFertil1, to: inputDate)!
let customDatePeriodo2 = Calendar.current.date(byAdding: datePerdiodoFertil2, to: inputDate)!
let customDatePeriodo3 = Calendar.current.date(byAdding: datePerdiodoFertil3, to: inputDate)!

//print(inputDate) - retornar os valores

print("Seu ciclo menstrual irá começar no dia: \(formatter.string(from: customDateMenstruacao))")

print("Seu próximo período fértil terá maior probabilidade entre os dias: \(formatter.string(from: customDatePeriodo1)), \(formatter.string(from: customDatePeriodo2)) e \(formatter.string(from: customDatePeriodo3))")

//print(formatter.string(from: customDate)) -> forma de mostrar no console de um jeito melhor para o usuário
