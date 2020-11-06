//
//  ViewController.swift
//  crazyButtons
//
//  Created by Ing. Raúl Adolfo Torres Vargas on 05/10/20.
//  Copyright © 2020 Ing. Raúl Adolfo Torres Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redColor = true, blueColor = true, blackColor = true, pinkColor = true, greenColor = true, grayColor = true, purpleColor = true, tealColor = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redColorBackground(_ sender: UIButton) {
        redColor = !redColor;
        if redColor{
            view.backgroundColor = .red;
        }else{
            view.backgroundColor = .white;
        }
    }
    @IBAction func blueColorBackground(_ sender: UIButton) {
        blueColor = !blueColor;
        if blueColor{
            view.backgroundColor = .blue;
        }else{
            view.backgroundColor = .white;
        }
    }
    
    @IBAction func blackColorBackground(_ sender: UIButton) {
        blackColor = !blackColor;
        if(blackColor){
            view.backgroundColor = .black
        }else{
            view.backgroundColor = .white;
        }
    }
    @IBAction func pinkColorBackground(_ sender: UIButton) {
        pinkColor = !pinkColor;
        if(pinkColor){
            view.backgroundColor = .systemPink;
        }else{
            view.backgroundColor = .white;
        }
    }
    @IBAction func purpleColorBackground(_ sender: UIButton) {
        purpleColor = !purpleColor;
        if(purpleColor){
            view.backgroundColor = .purple;
        }else{
            view.backgroundColor = .white;
        }
    }
    @IBAction func tealColorBackground(_ sender: UIButton) {
        tealColor = !tealColor;
        if(tealColor){
            view.backgroundColor = .systemTeal;
        }else{
            view.backgroundColor = .white;
        }
    }
    @IBAction func greenColorBackground(_ sender: UIButton) {
        greenColor = !greenColor;
        if(greenColor){
            view.backgroundColor = .green;
        }else{
            view.backgroundColor = .white;
        }
    }
    
    @IBAction func grayColorBackground(_ sender: UIButton) {
        grayColor = !grayColor;
        if(grayColor){
            view.backgroundColor = .gray;
        }else{
            view.backgroundColor = .white;
        }
    }
}
