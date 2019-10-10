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
            
            UserDefaults.standard.set(email.text!,forKey: "UserEmail")
//            let loginUser = UserDefaults.standard.string(forKey: "UserEmail")
//            print("Success Register",loginUser)
        }
        
    }
    override func viewDidLoad() {
        print("Called viewDidLoad")
        super.viewDidLoad()

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
