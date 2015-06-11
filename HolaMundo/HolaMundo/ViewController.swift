//
//  ViewController.swift
//  HolaMundo
//
//  Created by Daniel Fuentes on 6/3/15.
//  Copyright (c) 2015 Daniel Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// Estas son propiedades que sirven como variables dentro de nuestro aplicativo
    @IBOutlet weak var lblMensaje: UILabel!
    @IBOutlet weak var btnAccion: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Palabra reservada para crear un metodo en swift es : func
    // Este metodo funciona cuando se da click sobre el boton muestra el mensaje

    @IBAction func boton(sender: UIButton){
        lblMensaje.text = "Hola Mensaje Principal"
    }
}

