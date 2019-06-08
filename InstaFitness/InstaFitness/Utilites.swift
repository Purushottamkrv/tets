//
//  Utilites.swift
//  ETHRO BASKET
//
//  Created by Sunny on 26/07/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func cornerRadius(radius: Float = 5){
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
    func circularRadius(){
        self.layer.cornerRadius = self.frame.size.height/2
        self.clipsToBounds = true
    }
    func shadowOpacity(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1){
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offSet
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
    }
    func borderColorWidth(value: Float, color: UIColor){
        self.layer.borderWidth = CGFloat(value)
        self.layer.borderColor = color.cgColor
    }
}
extension UIColor{
    static func greenThemeColor() ->UIColor{
        return UIColor(red: 157.0/255.0, green: 196.0/255.0, blue: 7.0/255.0, alpha: 1.0)
    }
    static func orangeThemeColor() ->UIColor{
        return UIColor(red: 253.0/255.0, green: 71.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    static func ProgressColor() ->UIColor{
        return UIColor(red: 30/255.0, green: 187.0/255.0, blue: 51.0/255.0, alpha: 1.0)
    }
    
    static func YellowColor() ->UIColor{
        return UIColor(red: 252/255.0, green: 180.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    

}
extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

class showLabel{
    class  func showlabel(view:UIView,x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat,labeltext:String,textcolor:UIColor,backGColor:UIColor) {
        let label = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = labeltext
        label.textAlignment = .left
        label.backgroundColor = backGColor
        label.textColor =  textcolor
        view.addSubview(label)
    }}

class SHOWBUTTON{
    class  func showbutton(view:UIView,x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat,title:String,textcolor:UIColor,backGColor:UIColor) {
        let buttton = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
      //  label.font = UIFont.boldSystemFont(ofSize: 15)
        buttton.setTitle(title, for: .normal)
        buttton.setTitleColor(textcolor, for: .normal)
        buttton.backgroundColor = backGColor
        view.addSubview(buttton)
    }}

struct Tablexpans {
    var Epandable:Bool
}
struct expandablenames {
    var isexpand:Bool
    var names:[String]
}

