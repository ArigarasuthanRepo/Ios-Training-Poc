//
//  TabBarViewController.swift
//  Myapp
//
//  Created by Deemsys on 10/15/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController , UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tabBar.barTintColor = UIColor(named: "#ffda79")
        self.delegate = self
        setupTabBar()
    }
    
    func setupTabBar() {
                    //     // To create the tabBar for controllers in seperate
                
                let homeViewController = UINavigationController(rootViewController: HomeViewController())
                 homeViewController.tabBarItem.image = UIImage(named: "home_black")

//                       //  Code to render original image using with alwaysOriginal property.
                homeViewController.tabBarItem.image = UIImage(named: "home_black")?.withRenderingMode(.alwaysOriginal)

                homeViewController.tabBarItem.selectedImage = UIImage(named: "home_orange")

                let followViewController = UINavigationController(rootViewController: FollowViewController())
                followViewController.tabBarItem.image = UIImage(named: "follow_black")
                followViewController.tabBarItem.selectedImage = UIImage(named:"follow_orange")

                let shareViewController = UINavigationController(rootViewController: ShareViewController())
                shareViewController.tabBarItem.image = UIImage(named: "share_black")
                shareViewController.tabBarItem.selectedImage = UIImage(named: "share_orange")
  
                    //     To create the all tabBar using single function
//          let homeViewController = createNavController(vc: HomeViewController(), selected:home_orange, unselected: home_black)

                
        viewControllers = [homeViewController,followViewController,shareViewController]
            
        }
    
        override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
            print("Selected tabBar item")
        }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController)!
        if(selectedIndex == 0){
            DisplayAlert(message:"This is Home")
        }
        if(selectedIndex == 1){
            DisplayAlert(message:"This is Follow")
        }
        if(selectedIndex == 2){
            DisplayAlert(message:"This is Share")
        }

    }
    
    func DisplayAlert(message:String) {
        let alert = UIAlertController.init(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OKay", style: .default, handler: nil))
        self.present(alert,animated: true)
    }
}
    
extension UITabBarController {

    func createNavController(vc:UIViewController, selected:UIImage, unselected:UIImage) -> UINavigationController {
        let viewControllers = vc
        let navController = UINavigationController(rootViewController: viewControllers)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
}
        


