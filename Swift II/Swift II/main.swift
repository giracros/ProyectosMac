//
//  main.swift
//  Swift II
//
//  Created by Daniel Fuentes on 6/1/15.
//  Copyright (c) 2015 Daniel Fuentes. All rights reserved.
//

//Importa componentes de Foundation
import Foundation
//Constantes
let CONSTANTE = 5
//Variables
var numeroDecimal:Double
var numeroEntero:Int
//Asignacion
numeroDecimal = 99.9
numeroEntero = 5
//Operaciones
numeroEntero = numeroEntero + CONSTANTE
//Condicionales

if numeroEntero < 12{

    println("Hola Mundo blablablablablabl")

}

else

{


    println("Chao")
}



//Resultado se puede mostrar de dos maneras distintas, la diferencia es el numero de caracteres que usan 
// Primera forma
println("Numero Constante: " + CONSTANTE.description)
// Segunda Forma
println("Numero Decimal: \(numeroDecimal)")
println("Numero Entero: \(numeroEntero.description)")