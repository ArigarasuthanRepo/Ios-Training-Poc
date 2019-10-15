//
//  TabBarViewController.swift
//  Myapp
//
//  Created by Deemsys on 10/15/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tabBar.barTintColor = UIColor(named: "#ffda79")
        setupTabBar()
    }
    
    func setupTabBar() {
                    //      To create the tabBar for controllers in seperate
                
                let homeViewController = UINavigationController(rootViewController: HomeViewController())
                 homeViewController.tabBarItem.image = UIImage(named: "home_black")

        //                 Code to render original image using with alwaysOriginal property.
        //        homeViewController.tabBarItem.image = UIImage(named: "home_black")?.withRenderingMode(.alwaysOriginal)

                homeViewController.tabBarItem.selectedImage = UIImage(named: "home_orange")

                let followViewController = UINavigationController(rootViewController: FollowViewController())
                followViewController.tabBarItem.image = UIImage(named: "follow_black")
                followViewController.tabBarItem.selectedImage = UIImage(named:"follow_orange")

                let shareViewController = UINavigationController(rootViewController: ShareViewController())
                shareViewController.tabBarItem.image = UIImage(named: "share_black")
                shareViewController.tabBarItem.selectedImage = UIImage(named: "share_orange")
  
                    //     To create the all tabBar using single function
        //        let homeViewController = CreateNavController(vc:HomeViewController(),selected:"home_orange",unselected:"home_black")
        //        let followViewController = CreateNavController(vc:FollowViewController(),selected:"follow_orange",unselected:"follow_black")
        //        let shareViewController = CreateNavController(vc:ShareViewController(),selected:"share_orange",unselected:"share_black")
                
        viewControllers = [homeViewController,followViewController,shareViewController]
            
    }
    
//        extension UITabBarController {
//
//            func CreateNavController(vc:UIViewController, selected:UIImage, unselected:UIImage) -> UINavigationController {
//                let viewControllers = vc
//                let navController = UINavigationController(rootViewController: viewControllers)
//                navController.tabBarItem.image = unselected
//                navController.tabBarItem.selectedImage = selected
//                return navController
//            }
//        }
        

}