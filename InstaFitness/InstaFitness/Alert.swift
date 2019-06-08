//
//  Alert.swift
//  ETHRO BASKET
//
//  Created by apple on 8/8/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation
import SwiftMessages
class Alert {
    
    class func showBasic(title:String,message:String,viewController:UIViewController)  {
        
        let alert =  UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
        
    }
    class func showBasicToPop(title:String,message:String,viewController:UIViewController)  {
        
        let alert =  UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okacn = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){
            UIAlertAction in
            
            viewController.navigationController?.popViewController(animated: true)
            
        }
        alert.addAction(okacn)
        viewController.present(alert, animated: true, completion: nil)
        
    }
    class func AlertAction(fromVC:UIViewController,toVC:UIViewController)
    {
        
        let alert = UIAlertController(title: "Do you want to log out", message: "", preferredStyle: .alert)
        
        let okacn = UIAlertAction(title: "YES", style: UIAlertActionStyle.default){
            UIAlertAction in
            
            fromVC.navigationController?.pushViewController(toVC, animated: true)
            
        }
        let cancelacn = UIAlertAction(title: "NO", style: UIAlertActionStyle.cancel ){
            UIAlertAction in
        }
        alert.addAction(okacn)
        alert.addAction(cancelacn)
        
        fromVC.present(alert, animated: true, completion: nil)
    }
    class func AlertActionToNilUserID(fromVC:UIViewController,toVC:UIViewController)
    {
        
        let alert = UIAlertController(title: "Do you want to log out", message: "", preferredStyle: .alert)
        
        let okacn = UIAlertAction(title: "YES", style: UIAlertActionStyle.default){
            UIAlertAction in
            
            UserDefaults.standard.set(nil, forKey: "USERID")
            fromVC.navigationController?.pushViewController(toVC, animated: true)
            
        }
        let cancelacn = UIAlertAction(title: "NO", style: UIAlertActionStyle.cancel ){
            UIAlertAction in
        }
        alert.addAction(okacn)
        alert.addAction(cancelacn)
        
        fromVC.present(alert, animated: true, completion: nil)
    }
}

class POPMESSAGE {
    static let popmessage = POPMESSAGE()
    private init(){
    }
    func ErrorMessage(Title:String,Body:String){
        let error = MessageView.viewFromNib(layout: .tabView)
        error.configureTheme(.error)
        error.configureContent(title: Title, body: Body)
        error.button?.setTitle("Stop", for: .normal)
        error.button?.addTarget(self, action: #selector(tapaction), for: .touchUpInside)
        SwiftMessages.show(view: error)
    }
    
    func ConsiderMessage() {
        let warning = MessageView.viewFromNib(layout: .cardView)
        warning.configureTheme(.warning)
        warning.configureDropShadow()
        
        let iconText = ["🤔", "😳", "🙄", "😶"].sm_random()!
        warning.configureContent(title: "Warning", body: "Consider yourself warned.", iconText: iconText)
        warning.button?.isHidden = true
        var warningConfig = SwiftMessages.defaultConfig
        warningConfig.presentationContext = .window(windowLevel: UIWindowLevelStatusBar)
        SwiftMessages.show(config: warningConfig, view: warning)
    }
    
    func SuccessMessage() {
        let success = MessageView.viewFromNib(layout: .cardView)
        success.configureTheme(.success)
        success.configureDropShadow()
        success.configureContent(title: "Success", body: "Something good happened!")
        success.button?.isHidden = true
        var successConfig = SwiftMessages.defaultConfig
        successConfig.presentationStyle = .center
        successConfig.presentationContext = .window(windowLevel: UIWindowLevelNormal)
        SwiftMessages.show(config: successConfig, view: success)
    }
    
    func LongMessage() {
        let info = MessageView.viewFromNib(layout: .messageView)
        info.configureTheme(.info)
        info.button?.isHidden = true
        info.configureContent(title: "Info", body: "This is a very lengthy and informative info message that wraps across multiple lines and grows in height as needed.")
        var infoConfig = SwiftMessages.defaultConfig
        infoConfig.presentationStyle = .bottom
        infoConfig.duration = .seconds(seconds: 0.25)
        SwiftMessages.show(config: infoConfig, view: info)
    }
    func OtherMessage(){
        let status = MessageView.viewFromNib(layout: .statusLine)
        status.backgroundView.backgroundColor = UIColor.purple
        status.bodyLabel?.textColor = UIColor.white
        status.configureContent(body: "Switched to light status bar!")
        var statusConfig = SwiftMessages.defaultConfig
        statusConfig.presentationContext = .window(windowLevel: UIWindowLevelStatusBar)
        SwiftMessages.show(config: statusConfig, view: status)
        
    }
    
    func NoInternetMessage(){
        
        let status2 = MessageView.viewFromNib(layout: .statusLine)
        status2.backgroundView.backgroundColor = UIColor.red
        status2.bodyLabel?.textColor = UIColor.white
        status2.configureContent(body: "Some error occured!")
        var status2Config = SwiftMessages.defaultConfig
        status2Config.presentationContext = .window(windowLevel: UIWindowLevelNormal)
        status2Config.preferredStatusBarStyle = .lightContent
        SwiftMessages.show(config: status2Config, view: status2)
        
    }
    
    @objc func tapaction() {
        print("Button clicked")
        SwiftMessages.hide()
    }
    
}
