//
//  ViewController.swift
//  SwiftApp1
//
//  Created by Iwan Hartono on 17/10/18.
//  Copyright © 2018 Iwan Hartono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let viewTest = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        viewTest.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        viewTest.isHidden = true
        
        self.view.addSubview(viewTest)
        
        //labelMain.text = "Tokopedia Dream Tracker"
        
//        self.btnLogin.backgroundColor = UIColor.red
//        self.btnLogin.layer.cornerRadius = 3
        
        
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
        labelMain.text = "Login Clicked"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

