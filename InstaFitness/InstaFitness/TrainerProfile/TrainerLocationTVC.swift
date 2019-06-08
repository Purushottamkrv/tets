//
//  TrainerLocationTVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import GoogleMaps

class TrainerLocationTVC: UITableViewCell {

    @IBOutlet  var mapView:GMSMapView!
    var camera:GMSCameraPosition!
    let marker = GMSMarker()

let logoDownloadNotificationID =
    "OpenNewVC"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let latitude = "28.561779"
        let longitude = "77.270733"

    camera = GMSCameraPosition.camera(withLatitude: Double(latitude)! ,
    longitude: Double(longitude)!, zoom: 14.0)
                self.mapView.camera = camera
                marker.position = camera.target
                marker.map = mapView
    }
    
    @IBAction private func changeRadius(_ sender:UIButton)
    {
     
        NotificationCenter.default.post(name: Notification.Name(rawValue: logoDownloadNotificationID), object: self)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
