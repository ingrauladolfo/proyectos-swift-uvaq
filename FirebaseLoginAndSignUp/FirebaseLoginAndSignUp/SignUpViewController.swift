//
//  SignUpViewController.swift
//  FirebaseLoginAndSignUp
//
//  Created by Ing. Raúl Adolfo Torres Vargas on 26/10/20.
//  Copyright © 2020 Ing. Raúl Adolfo Torres Vargas. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        if email.text?.isEmpty == true {
            print("No text in email field")
            return
        }
        if password.text?.isEmpty == true {
            print("No text in password field")
            return
        }
        signUp()
    }
    
    @IBAction func alreadyHaveAnAccountLogInTapped(_ sender: Any) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard?.instantiateViewController(withIdentifier: "login")
        vc?.modalPresentationStyle = .overFullScreen
        present(vc!, animated: true)
    }
    func signUp(){
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult, error) in
            guard let user = authResult?.user, error == nil else{
                print("Error \(error?.localizedDescription)")
                return
            }
            let stroyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "mainHome")
            vc?.modalPresentationStyle = .overFullScreen
            self.present(vc!, animated: true)
        }
    }

    
}
