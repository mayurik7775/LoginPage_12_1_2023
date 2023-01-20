//
//  ViewController.swift
//  LoginPage_12_1_2023
//
//  Created by Mac on 14/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var welcomeLabel: UILabel!


    @IBAction func loginButton(_ sender: Any) {
        
        var userName = UserNameTextField.text
        var password = passwordTextField.text
        
        if (userName == "Mayuri" && password == "Mayuri@3042"){
            print("Login Successfully")
            welcomeLabel.text = "Welcome"
            
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
            
            self.navigationController?.pushViewController(secondViewController, animated: true)
            
        }else{
            welcomeLabel.text = "Welcome"
            print("login fail")
           
        }
    }
    override  func viewDidLoad() {
        super.viewDidLoad()
        var userName = "Welcome"
    }
    
}

