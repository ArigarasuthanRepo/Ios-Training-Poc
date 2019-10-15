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
    
    var regEmail = ""
    
    var registerController:RegisterController?

    
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

// User Default direct access:
//            UserDefaults.standard.set(email.text!,forKey: "UserEmail")
            
// UserDefaults access from common file:
            
            UserDefaultsValue.saveUserData(value:email.text!, key: "UserEmail")
            UserDefaultsValue.saveUserData(value:"Moni", key: "UserName")
            
            print("Namee :",UserDefaults.standard.string(forKey: "UserName")!)
            
//            self.nameText = password.text!
//            performSegue(withIdentifier: "login", sender: self)
            
//            let loginUser = UserDefaults.standard.string(forKey: "UserEmail")
//            print("Success Register",loginUser)
//            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
    override func viewDidLoad() {
        print("Called viewDidLoad")
        super.viewDidLoad()
        email.text = regEmail
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Called viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Called viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Called viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Clled ViewDidDisappear")
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! RegisterController
//        vc.userEmail = self.nameText
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
