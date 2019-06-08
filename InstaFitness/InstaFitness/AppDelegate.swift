//
//  AppDelegate.swift
//  InstaFitness
//
//  Created by mac on 8/14/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import GoogleMaps
import GooglePlacePicker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        GMSServices.provideAPIKey("AIzaSyApVdAVThu-mpbK5ZLcHes28Y_YyyPFTjs")
        GMSPlacesClient.provideAPIKey("AIzaSyApVdAVThu-mpbK5ZLcHes28Y_YyyPFTjs")

        //let userid:String? = UserDefaults.standard.string(forKey: "USERID")
       // if(userid != nil){
         //   self.Tabbarcntrl()
       // }
       // else{
          //  self.loginRegcntrl()
       // }
        
        return true
    }
    func loginRegcntrl(){
        let appDel :AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let mainstoryboard :UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        //let sidenavigation = mainstoryboard.instantiateViewController(withIdentifier: "navigationcontroller")
        let loginregvc = mainstoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let navigationController = UINavigationController(rootViewController: loginregvc)
        navigationController.isNavigationBarHidden = true
        appDel.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
    }
    func Tabbarcntrl()  {
        /*let jaapnewcntrlr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabNavigation") as! UINavigationController
         //let navigation = UINavigationController.init(rootViewController: jaapnewcntrlr)
         // navigation.navigationBar.isHidden = true
         let appDelegate = UIApplication.shared.delegate as! AppDelegate
         appDelegate.window?.rootViewController = jaapnewcntrlr*/
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.isNavigationBarHidden = true
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController//Set navigation controller as window's root view
        self.window?.makeKeyAndVisible()
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

