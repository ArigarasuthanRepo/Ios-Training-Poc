//
//  ViewController.swift
//  Myapp
//
//  Created by Deemsys on 10/3/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    @IBAction func register(_ sender: Any) {
//         let registerVC = RegisterController()
//        let navigationController = UINavigationController(rootViewController: self)
//        self.navigationController?.pushViewController(RegisterController(), animated: false)
//        navigateToMain()
        
//        show(RegisterController(), sender: self)
        
    @IBAction func login(_ sender: Any) {
           print("Called Login")
    }
    //    }

    @IBAction func register(_ sender: Any) {
        print("Called Register")
//        self.navigationController?.pushViewController(RegisterController(), animated: true)

         show(RegisterController(), sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title="Login & Register"
        navigationController?.navigationBar.isTranslucent=false

    }
    
    private func navigateToMain(){
        print("Called navigateToMain")
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let mainNavigation = mainStoryboard.instantiateViewController(withIdentifier:"RegisterController") as! RegisterController
        
        present(mainNavigation, animated: true, completion: nil)
    }


}

