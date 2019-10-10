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
        navigateToMain()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Called viewDidload VC")
        navigationItem.title="Login & Register"
        navigationController?.navigationBar.isTranslucent=false

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

