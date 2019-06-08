//
//  TabBarController.swift
//  ETHRO BASKET
//
//  Created by apple on 8/2/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
//import SideMenu


class TabBarController: UITabBarController,UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        //This method will be called when user changes tab.
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 4{
            print("Selected item", item.tag )
           // present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
            
            // Similarly, to dismiss a menu programmatically, you would do this:
            dismiss(animated: true, completion: nil)
        }
    }

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        if viewController is SlideVC {
            print("First tab")
        } else   {
            print("Second tab")
        }
    }
}
