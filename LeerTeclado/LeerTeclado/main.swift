//
//  main.swift
//  LeerTeclado
//
//  Created by Daniel Fuentes on 6/3/15.
//  Copyright (c) 2015 Daniel Fuentes. All rights reserved.
//

import Foundation



println("Ingrese un numero")

// metodo para leer de teclado
func input() -> NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

var valor = input()
var resultado = valor.integerValue

// Operaciones

resultado = resultado + 450

if(resultado < 500){println("chafa!")}else{println("hola mundo!")}

println("El Dato que ingreso es: \(resultado)")

