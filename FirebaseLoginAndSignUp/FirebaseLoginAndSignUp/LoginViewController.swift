//
//  LoginViewController.swift
//  FirebaseLoginAndSignUp
//
//  Created by Ing. Raúl Adolfo Torres Vargas on 26/10/20.
//  Copyright © 2020 Ing. Raúl Adolfo Torres Vargas. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        validateFields()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "signUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    func validateFields(){
        if email.text?.isEmpty == true{
                   print("No text in email field")
                   return
               }
        if password.text?.isEmpty == true {
                   print("No text in password field")
               }
        login()
    }
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) {    [weak self] authResult , err in
            guard let strongSelf = self else {return}
            if let err = err{
                print(err.localizedDescription )
            }
            self?.checkUserInfo();
        }
    }
    func checkUserInfo(){
        if Auth.auth().currentUser != nil{
            print(Auth.auth().currentUser?.uid)
            let stroyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = self.storyboard?.instantiateViewController(identifier: "mainHome")
                   vc?.modalPresentationStyle = .overFullScreen
            self.present(vc!, animated: true)
        }
    }

}
