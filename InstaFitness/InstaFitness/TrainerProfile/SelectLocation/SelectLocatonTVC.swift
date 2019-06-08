//
//  SelectLocatonTVC.swift
//  InstaFitness
//
//  Created by mac on 8/21/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import GoogleMaps

class SelectLocatonTVC: UITableViewCell {

    @IBOutlet private weak var submit_btn:UIButton!
    @IBOutlet  var mapView:GMSMapView!
    //@IBOutlet private weak var slider:UISlider!
    @IBOutlet private weak var km_lab:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
     submit_btn.layer.cornerRadius = 25
        
    }
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        
        DispatchQueue.main.async {
            self.km_lab.text = "\(currentValue) Km"

        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
