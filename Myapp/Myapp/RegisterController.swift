//
//  RegisterController.swift
//  Myapp
//
//  Created by Deemsys on 10/7/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit


class RegisterController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    var validation = Validation()
    
    


    @IBAction func register(_ sender: Any) {
        print("Register")
        let regName:String=name.text!
        let regEmail:String=email.text!
        let regpassword:String=password.text!
        let regconfrimPass:String=confirmPass.text!
        print(regName,regEmail,regpassword,regconfrimPass)
        
        if(regName.count == 0 || regEmail.count == 0 || regpassword.count == 0 || regconfrimPass.count == 0) {
//              print("empty")
            let alert = UIAlertController(title:"Info",message: "Please fill all this fields",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Okay",style: .destructive,handler: nil))
           
//            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
//            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            self.present(alert,animated: true)

        }
        else if(self.validation.validateEmail(email: regEmail) == false){
            let alert = UIAlertController(title:"Error",message:"Incorrect Email",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Okay",style: .default,handler: nil))
            self.present(alert,animated: false)
        }
        else if(regpassword != regconfrimPass){
            let alert = UIAlertController(title:"Error",message:"Password Mismatch",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Okay",style: .default,handler: nil))
                self.present(alert,animated: false)
        }
        else{
//            let alert = UIAlertController(title:"Success",message:"Registration successfull",preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title:"Okay",style: .default,handler: nil))
//                self.present(alert,animated: false)
            
//      Segue connection:
//            self.nameText = regEmail
//            performSegue(withIdentifier: "LoginController", sender: self)
            
//    Send the userEmail in login Page.
            let vc = storyboard?.instantiateViewController(withIdentifier: "LoginController") as! LoginController
            vc.regEmail =  email.text!
            self.navigationController?.pushViewController(vc,animated: true)

        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! LoginController
//        vc.userEmail = self.nameText
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HIIIII")

//        self.view.backgroundColor = .white
//        self.definesPresentationContext = true
//        name.placeholder="Enter your name"

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
