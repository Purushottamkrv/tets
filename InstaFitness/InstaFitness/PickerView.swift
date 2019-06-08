//
//  PickerView.swift
//  InstaFitness
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class PickerView: UIView {

 @IBOutlet var contentView:UIView!
 @IBOutlet var picker:UIPickerView!
    var city:[City] = []

let logoDownloadNotificationID =
    "cancelBtnAction"

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    private func commonInit() {
        
        Bundle.main.loadNibNamed("PickerView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        
        picker.showsSelectionIndicator = true
    }
    
 @IBAction func doneClick(_ sender:UIButton)
    {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "DoneBtnAction"), object: self)

    }
    
    @IBAction func cancelClick(_ sender:UIButton)
    {
        NotificationCenter.default.post(name: Notification.Name(rawValue: logoDownloadNotificationID), object: self)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PickerView:UIPickerViewDataSource,UIPickerViewDelegate
{

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
     {
        return city.count

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
        return city[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
    
    }
}

