//
//  LoginController.swift
//  Myapp
//
//  Created by Deemsys on 10/7/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    @IBAction func login(_ sender: Any) {
        if(password.text!.count == 0 || email.text!.count == 0){
            let alert = UIAlertController(title:"Info",message:"Please fill this field",preferredStyle:.alert)
            alert.addAction(UIAlertAction(title:"Okay",style: .default,handler: nil))
            self.present(alert,animated: true)
        }
        else{
            let alert = UIAlertController(title:"Success",message:"Login Successfull",preferredStyle:.alert)
            alert.addAction(UIAlertAction(title:"Okay",style: .default,handler: nil))
            self.present(alert,animated: true)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
