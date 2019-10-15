//
//  DshboardViewController.swift
//  Myapp
//
//  Created by Deemsys on 10/15/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class DshboardViewController: UIViewController {

    @IBAction func tabBar(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let mainNav = storyboard.instantiateViewController(withIdentifier: "TabBarViewController")
        self.navigationController?.pushViewController(mainNav, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
