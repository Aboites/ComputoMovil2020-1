//
//  ViewController.swift
//  Login
//
//  Created by Rodrigo Aboites on 9/15/19.
//  Copyright © 2019 UNAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var userForgot: UIButton!
    @IBOutlet weak var pswdForgot: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == pswdForgot {
            segue.destination.navigationItem.title = "Contraseña olvidada"
        } else if sender == userForgot {
            segue.destination.navigationItem.title = "Usuario olvidado"
        } else {
            segue.destination.navigationItem.title = userTextField.text
        }
    }

    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "landingSegue", sender: userForgot)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "landingSegue", sender: pswdForgot)
    }
}

