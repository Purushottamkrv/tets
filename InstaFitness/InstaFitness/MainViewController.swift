//
//  MainViewController.swift
//  ETHRO BASKET
//
//  Created by apple on 8/16/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import SwiftyJSON
import SDWebImage
import MBProgressHUD

class MainViewController: UIViewController {

    @IBOutlet weak var loginTriangleImg: UIImageView!
    @IBOutlet weak var signTriangleImg: UIImageView!
    @IBOutlet weak var loginrightarow_imgview: UIImageView!
    @IBOutlet weak var loginenter_btnoutlet: DesignableButton!
    @IBOutlet weak var signupright_imgview: UIImageView!
    @IBOutlet weak var signupenter_btnoutlet: DesignableButton!
    @IBOutlet weak var login_view: DesignableView!
    @IBOutlet weak var socilallogin_view: UIView!
    @IBOutlet weak var signup_view: DesignableView!
    @IBOutlet weak var signEmail_text: UITextField!
    @IBOutlet weak var Signusername_text: UITextField!
    @IBOutlet weak var logEmail_txt: UITextField!
    @IBOutlet weak var signupBtnOutlet: UIButton!
    @IBOutlet weak var loginBtnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loginrightarow_imgview.isHidden = false
        loginBtnOutlet.setTitleColor(UIColor.init(red: 247.0/255.0, green: 176.0/255.0, blue: 61.0/255.0, alpha: 1), for: .normal)
        loginenter_btnoutlet.isHidden = false
        signupenter_btnoutlet.isHidden = true
        //signupright_imgview.isHidden = true
        login_view.isHidden = false
        signup_view.isHidden = true
        //socilallogin_view.isHidden = false
        
        loginTriangleImg.isHidden = false
        signTriangleImg.isHidden = true
        
        logEmail_txt.setLeftPaddingPoints(10)
        
        Signusername_text.setLeftPaddingPoints(10)
        signEmail_text.setLeftPaddingPoints(10)
        
        placeholdertext(textfield: Signusername_text, placeholder: "Tap to enter name", color: .gray)
        placeholdertext(textfield: signEmail_text, placeholder: "Tap to enter phone no.", color: .gray)
        placeholdertext(textfield: logEmail_txt, placeholder: "Tap to enter phone no.", color: .gray)
        
    }
    fileprivate func placeholdertext(textfield:UITextField,placeholder:String,color:UIColor){
        textfield.attributedPlaceholder = NSAttributedString(string:placeholder,attributes: [NSAttributedStringKey.foregroundColor: color])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Login_btnacn(_ sender: Any) {
        //loginrightarow_imgview.isHidden = false
        loginenter_btnoutlet.isHidden = false
        signupenter_btnoutlet.isHidden = true
        //signupright_imgview.isHidden = true
        login_view.isHidden = false
        signup_view.isHidden = true
        //socilallogin_view.isHidden = false
        
        loginTriangleImg.isHidden = false
        signTriangleImg.isHidden = true
        
        loginBtnOutlet.setTitleColor(UIColor.init(red: 247.0/255.0, green: 176.0/255.0, blue: 61.0/255.0, alpha: 1), for: .normal)
        signupBtnOutlet.setTitleColor(UIColor.lightGray, for: .normal)
        
    }
    @IBAction func Signup_btnacn(_ sender: Any) {
        //loginrightarow_imgview.isHidden = true
        loginenter_btnoutlet.isHidden = true
        signupenter_btnoutlet.isHidden = false
        //signupright_imgview.isHidden = false
        login_view.isHidden = true
        signup_view.isHidden = false
        //socilallogin_view.isHidden = true
        
        loginTriangleImg.isHidden = true
        signTriangleImg.isHidden = false
        
        signupBtnOutlet.setTitleColor(UIColor.init(red: 247.0/255.0, green: 176.0/255.0, blue: 61.0/255.0, alpha: 1), for: .normal)
        loginBtnOutlet.setTitleColor(UIColor.lightGray, for: .normal)
        
        
    }
    @IBAction func loginEnter_btnacn(_ sender: Any) {
        guard logEmail_txt.text?.count != 0 else {
            Alert.showBasic(title: "Alert", message:"Enter phone no.", viewController: self)
            return
            
        }
       // Loginapihit()
        /*let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.isNavigationBarHidden = true
        self.navigationController?.pushViewController(vc, animated: true)
        
        UserDefaults.standard.set("123", forKey: "USERID")
        UserDefaults.standard.synchronize()*/
        let otpvc = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        self.navigationController?.pushViewController(otpvc, animated: true)
    }
    @IBAction func Signunenter_btnacn(_ sender: Any) {
        guard Signusername_text.text?.count != 0 else {
            Alert.showBasic(title: "Alert", message:"Enter name", viewController: self)
            return
        }
        guard signEmail_text.text?.count != 0 else {
            Alert.showBasic(title: "Alert", message:"Enter phone no.", viewController: self)
            
            return
        }
        
        //Signapihit(userName: self.Signusername_text.text!, emailId: self.signEmail_text.text!)
        //self.signUpFunction(username: self.Signusername_text.text!, emailid: self.signEmail_text.text!)
        /*let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.isNavigationBarHidden = true
        self.navigationController?.pushViewController(vc, animated: true)
        
        UserDefaults.standard.set("123", forKey: "USERID")
        UserDefaults.standard.synchronize()*/
        let otpvc = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        self.navigationController?.pushViewController(otpvc, animated: true)
    }
    
    private func selectTextForInput(input: UITextField, range: NSRange) {
        let start: UITextPosition = input.position(from: input.beginningOfDocument, offset: range.location)!
        let end: UITextPosition = input.position(from: start, offset: range.length)!
        input.selectedTextRange = input.textRange(from: start, to: end)
    }
    @IBAction func forgotPassAction(_ sender: UIButton){
       /* let alertController = UIAlertController(title: "Forgot Password", message: "", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Phone Number"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Email Id"
        }
        
        let saveAction = UIAlertAction(title: "Submit", style: UIAlertActionStyle.default, handler: { alert -> Void in
            let phoneTextField = alertController.textFields![0] as UITextField
            let emailTextField = alertController.textFields![1] as UITextField
            
            if (phoneTextField.text?.isEmpty)! && (emailTextField.text?.isEmpty)!{
                Alert.showBasic(title: "Alert", message: "Please fill all fields.", viewController: self)
            }
            else if (phoneTextField.text?.isEmpty)! {
                Alert.showBasic(title: "Alert", message: "Please enter phone number.", viewController: self)
            }
            else if (emailTextField.text?.isEmpty)! {
                Alert.showBasic(title: "Alert", message: "Please enter email id", viewController: self)
            }
            else{
                
            }
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in })
        
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)*/
    }
}
/*extension MainViewController{
    private func Loginapihit(){
        var myResponse : JSON? = nil
        var loginResponse : LoginUserReponse? = nil
        
        let parameter:[String:Any] = ["user_uid":self.logEmail_txt.text ?? ""]
        
        ApiManager.sharedInstance.getResponseFromPost(UrlStr: LoginUser_Url, ParaMeters: parameter, ViewController: self, loaderchek: 1, onCompletion:{ (commonjson) -> Void in
            
            myResponse = commonjson
            print("response = ",myResponse as Any)
            loginResponse = LoginUserReponse.init(loginJson: myResponse!)
            print("response = ",loginResponse?.status as Any)
            
            if loginResponse?.error == "false"{
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                let navigationController = UINavigationController(rootViewController: vc)
                navigationController.isNavigationBarHidden = true
                self.navigationController?.pushViewController(vc, animated: true)
                
                UserDefaults.standard.set(loginResponse?.uid, forKey: "USERID")
                UserDefaults.standard.set(loginResponse?.username, forKey: "USERNAME")
                UserDefaults.standard.set(loginResponse?.email_address, forKey: "EMAILID")
                UserDefaults.standard.set(loginResponse?.phone_no, forKey: "PHONENUMBER")
                UserDefaults.standard.set(loginResponse?.wallet_amt, forKey: "WALLETAMOUNT")
                UserDefaults.standard.synchronize()
                
            }
            else{
                Alert.showBasic(title: "", message:(loginResponse?.error_msg)!, viewController: self)
            }
            
        })
        {
            (failure)-> Void in
            POPMESSAGE.popmessage.NoInternetMessage()
        }
    }
}
extension MainViewController{
    private func Signapihit(userName:String,emailId:String){
    let hhh = Ipify.getPublicIPAddress(completion: { result in
        var publcIpAddress:String?
        switch result {
        case .success(let ip):
            print("IP Address is = ", ip) // "210.11.178.112"
            publcIpAddress = ip
            if publcIpAddress == ""{
                
                Alert.showBasic(title: "Alert", message:"Internet not connected.", viewController: self)
            }
            else {
                
                //self.signUpFunction(username: userName, emailid: emailId, phonenumber: phoneNumber, passWord: password, ipaddress:publcIpAddress!)
            }
        case .failure(let error):
            print(error.localizedDescription)
        }
    })
    }
    
    private func signUpFunction(username:String,emailid:String){
        var myResponse : JSON? = nil
        var signupResponse : SignUpUserResponse? = nil
        
        let parameter:[String:Any] = ["user_name":username,"user_email":emailid]
        
        ApiManager.sharedInstance.getResponseFromPost(UrlStr: SignUpUser_Url, ParaMeters: parameter, ViewController: self, loaderchek: 5, onCompletion:{ (commonjson) -> Void in
            
            [MBProgressHUD .showAdded(to: self.view, animated: true)]
            
            myResponse = commonjson
            print("response = ",myResponse as Any)
            signupResponse = SignUpUserResponse.init(signupJson: myResponse!)
            print("response = ",signupResponse?.status as Any)
            
            if signupResponse?.status == "success"{
                self.Signusername_text.text = ""
                self.signEmail_text.text = ""
                self.SignPhone_text.text = ""
                self.signpass_text.text = ""
                self.signconfirmpass_text.text = ""
                //self.loginrightarow_imgview.isHidden = false
                self.loginenter_btnoutlet.isHidden = false
                self.signupenter_btnoutlet.isHidden = true
                //self.signupright_imgview.isHidden = true
                self.login_view.isHidden = false
                self.signup_view.isHidden = true
                //self.socilallogin_view.isHidden = false
                self.loginBtnOutlet.setTitleColor(UIColor.init(red: 230.0/255.0, green: 95.0/255.0, blue: 2.0/255.0, alpha: 1), for: .normal)
                self.signupBtnOutlet.setTitleColor(UIColor.darkGray, for: .normal)
                [MBProgressHUD .hide(for: self.view, animated: true)]
                Alert.showBasic(title: "", message:"Successfully sign up.", viewController: self)
            }
            else{
                [MBProgressHUD .hide(for: self.view, animated: true)]
                Alert.showBasic(title: "", message:(signupResponse?.status)!, viewController: self)
            }
            
        })
        {
            (failure)-> Void in
            [MBProgressHUD .hide(for: self.view, animated: true)]
            POPMESSAGE.popmessage.NoInternetMessage()
        }
    }
}*/
