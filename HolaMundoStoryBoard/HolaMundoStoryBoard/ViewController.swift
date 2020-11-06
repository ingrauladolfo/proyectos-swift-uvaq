//
//  ViewController.swift
//  HolaMundoStoryBoard
//
//  Created by Ing. Raúl Adolfo Torres Vargas on 01/10/20.
//  Copyright © 2020 Ing. Raúl Adolfo Torres Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var showHelloWorl: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showHelloWorld(_ sender: Any) {
        mylabel.text = "Hola Mundo";
    }
    @IBAction func eraseData(_ sender: Any) {
        mylabel.text = "Bienvenidos"
    }
}

