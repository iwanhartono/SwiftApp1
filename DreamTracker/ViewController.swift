//
//  ViewController.swift
//  DreamTracker
//
//  Created by Iwan Hartono on 17/10/18.
//  Copyright © 2018 Iwan Hartono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelMain: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var labelFormMessage: UILabel!
    @IBOutlet weak var barBtnSignUp: UIBarButtonItem!
    
    @IBOutlet weak var usernameTextField: UITextField! {
        didSet {
            usernameTextField.layer.cornerRadius =  3
            usernameTextField.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
            usernameTextField.layer.borderWidth = 1
            let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 2.0))
            usernameTextField.leftView = leftView
            usernameTextField.leftViewMode = .always
        }
    }
    
    @IBOutlet weak var passTextField: UITextField! {
        didSet {
            passTextField.layer.cornerRadius =  3
            passTextField.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.8352941176, blue: 0.8352941176, alpha: 1)
            passTextField.layer.borderWidth = 1
            let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 2.0))
            passTextField.leftView = leftView
            passTextField.leftViewMode = .always
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //performSegue(withIdentifier: "signUpSegue", sender: self)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let viewTest = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        viewTest.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        viewTest.isHidden = true
        
        self.view.addSubview(viewTest)
        
        //self.btnLogin.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        //self.btnLogin.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.btnLogin.layer.cornerRadius = 3
        
//        let font = UIFont.systemFont(ofSize: 20);
//        barBtnSignUp.setTitleTextAttributes([FontAttributeName: font], forState:UIControlState.Normal)
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        labelFormMessage.text = "Please fill Username and Password"
        
        if let username = usernameTextField.text,
            let pass = passTextField.text,
            !username.isEmpty,
            !pass.isEmpty {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let homeViewController = storyboard.instantiateViewController(withIdentifier: "homeIdentifier")
                self.present(homeViewController, animated: true, completion: nil)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let viewcontroller = segue.destination as? HomeViewController {
//            viewcontroller.username = usernameTextField.text
//        }
    }

//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "homeSegue" {
//            if let username = usernameTextField.text,
//                let pass = passTextField.text,
//                !username.isEmpty,
//                !pass.isEmpty {
//                    return true
//                }
//        }
//        return false
//    }
}

