//
//  SignUpViewController.swift
//  DreamTracker
//
//  Created by Iwan Hartono on 26/10/18.
//  Copyright © 2018 Iwan Hartono. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var labelFormMessage: UILabel!
    @IBOutlet weak var txtUsername: UITextField! {
        didSet {
            txtUsername.layer.cornerRadius =  3
            txtUsername.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
            txtUsername.layer.borderWidth = 1
            let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 2.0))
            txtUsername.leftView = leftView
            txtUsername.leftViewMode = .always
        }
    }
    
    @IBOutlet weak var txtPassword: UITextField! {
        didSet {
            txtPassword.layer.cornerRadius =  3
            txtPassword.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
            txtPassword.layer.borderWidth = 1
            let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 2.0))
            txtPassword.leftView = leftView
            txtPassword.leftViewMode = .always
        }
    }
    
    @IBOutlet weak var txtPasswordConfirm: UITextField! {
        didSet {
            txtPasswordConfirm.layer.cornerRadius =  3
            txtPasswordConfirm.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
            txtPasswordConfirm.layer.borderWidth = 1
            let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 2.0))
            txtPasswordConfirm.leftView = leftView
            txtPasswordConfirm.leftViewMode = .always
        }
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
//        if let username = usernameTextField.text,
//            let pass = passTextField.text,
//            !username.isEmpty,
//            !pass.isEmpty {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let homeViewController = storyboard.instantiateViewController(withIdentifier: "homeIdentifier")
//            self.present(homeViewController, animated: true, completion: nil)
//        }
        
        if let username = txtUsername.text,
            let pass = txtPassword.text,
            let confirm = txtPasswordConfirm.text,
            !username.isEmpty,
            !pass.isEmpty,
            !confirm.isEmpty {
            if pass != confirm {
                labelFormMessage.textColor = #colorLiteral(red: 0.8352941176, green: 0, blue: 0, alpha: 1)
                labelFormMessage.text = "Password confirmation does not match"
            }
            else {
                labelFormMessage.textColor = #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.2862745098, alpha: 1)
                labelFormMessage.text = "OK"
            }
        } else {
            labelFormMessage.textColor = #colorLiteral(red: 0.8352941176, green: 0, blue: 0, alpha: 1)
            labelFormMessage.text = "Please fill all data"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancel(_ sender: Any) {
        //self.navigationController?.popViewController(animated: true)
        
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
