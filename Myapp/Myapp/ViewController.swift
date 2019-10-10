//
//  ViewController.swift
//  Myapp
//
//  Created by Deemsys on 10/3/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func login(_ sender: Any) {
           print("Called Login")
    }
    //    }

    @IBAction func register(_ sender: Any) {
        let loginUser = UserDefaults.standard.string(forKey: "UserEmail")
        print("Called Register",loginUser)
         navigateToMain()
//        if(loginUser != ""){
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//              let mainNav = storyboard.instantiateViewController(withIdentifier: "NavigationController")
//              self.navigationController?.pushViewController(mainNav, animated: true)
//        }else{
//            navigateToMain()
//        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Called viewDidload VC")
        navigationItem.title="Login & Register"
        navigationController?.navigationBar.isTranslucent=false
        
        let loginUser = UserDefaults.standard.string(forKey: "UserEmail")
        print("Called Register",loginUser)
        if(loginUser != ""){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let mainNav = storyboard.instantiateViewController(withIdentifier: "NavigationController")
              self.navigationController?.pushViewController(mainNav, animated: true)
        }else{
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
             let mainNav = storyboard.instantiateViewController(withIdentifier: "ViewController")
             self.navigationController?.pushViewController(mainNav, animated: true)
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Called viewWillAppear VC")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Called viewDidAppear VC")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Called viewWillDisappear VC")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Clled ViewDidDisappear VC")
    }
    
    private func navigateToMain(){
//        print("Called navigateToMain")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainNav = storyboard.instantiateViewController(withIdentifier: "RegisterController")
        self.navigationController?.pushViewController(mainNav, animated: true)
//        present(mainNav,animated: false,completion: nil)
    }


}

