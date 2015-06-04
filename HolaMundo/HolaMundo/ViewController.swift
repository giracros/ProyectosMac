//
//  ViewController.swift
//  HolaMundo
//
//  Created by Daniel Fuentes on 6/3/15.
//  Copyright (c) 2015 Daniel Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    @IBAction func boton(sender: UIButton){
        lblMensaje.text = ("Hola Mensaje Principal")
    }
}

