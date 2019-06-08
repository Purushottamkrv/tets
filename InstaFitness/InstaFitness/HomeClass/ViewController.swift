//
//  ViewController.swift
//  InstaFitness
//
//  Created by mac on 8/14/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectCityView:UIView!
    @IBOutlet weak var selectServiceView:UIView!
    @IBOutlet weak var selectbtn:UIButton!

    var pickerView:PickerView?
    var hiddenView:HiddenView?
    let logoDownloadNotificationID =
    "cancelBtnAction"
    let obj = CityModel()
        override func viewDidLoad() {
        super.viewDidLoad()
        selectCityView.layer.cornerRadius = 15
        selectCityView.layer.borderWidth = 1
        selectCityView.layer.borderColor = UIColor.lightGray.cgColor 
        selectServiceView.layer.cornerRadius = 15
        selectServiceView.layer.borderWidth = 1
        selectServiceView.layer.borderColor = UIColor.lightGray.cgColor
        selectbtn.setRadius()
        NotificationCenter.default.addObserver(self, selector: #selector(cancelBtnAction), name: Notification.Name(rawValue: logoDownloadNotificationID), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(doneBtnAction), name: Notification.Name(rawValue: "DoneBtnAction"), object: nil)
    }
    
    @IBAction func bacbbtn_acn(_ sender :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
@IBAction func selectCity(_ sender:UIButton){
 if pickerView != nil{
    }
    else
    {
        obj.setCityData()
        hiddenView = HiddenView(frame: .init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(hiddenView!)
       pickerView = PickerView(frame: .init(x: 0, y: self.view.frame.size.height-200, width: self.view.frame.size.width, height: 200))
          pickerView!.city = obj.city
         self.view.addSubview(pickerView!)
    }
    
   }
   
    @IBAction func selectService(_ sender:UIButton)
    {
        if pickerView != nil{
        }
        else{
            obj.setCityData()
            hiddenView = HiddenView(frame: .init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
            self.view.addSubview(hiddenView!)
            pickerView = PickerView(frame: .init(x: 0, y: self.view.frame.size.height-200, width: self.view.frame.size.width, height: 200))
            pickerView!.city = obj.city
            self.view.addSubview(pickerView!)
        }
    }

    
 @objc func cancelBtnAction()
    {
        hiddenView!.removeFromSuperview()
        pickerView!.removeFromSuperview()
        hiddenView = nil
        pickerView = nil
    }
    
 @objc func doneBtnAction()
    {
        hiddenView!.removeFromSuperview()
        pickerView!.removeFromSuperview()
        hiddenView = nil
        pickerView = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

