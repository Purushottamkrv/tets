//
//  FillDetailVC.swift
//  InstaFitness
//
//  Created by mac on 8/16/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import CoreLocation

class FillDetailVC: UIViewController,CLLocationManagerDelegate {
    @IBOutlet weak var selectbtn:UIButton!
    @IBOutlet weak var Address:UITextField!
    @IBOutlet weak var address_lbl:UILabel!
    var locManager = CLLocationManager()
    var currentLocation:CLLocation!


    override func viewDidLoad() {
        super.viewDidLoad()
        
       // latitude is 28.567462
       // longitude is 77.269133

        locManager.delegate = self
        if( CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedWhenInUse ||
            CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedAlways){
            currentLocation = locManager.location
            print("latitude is",currentLocation.coordinate.latitude)
            print("longitude is",currentLocation.coordinate.longitude)
            var latitude = String(currentLocation.coordinate.latitude)
            var longitude = String(currentLocation.coordinate.longitude)
            getAddressFromLatLon(pdblLatitude:latitude, withLongitude: longitude)
        }
        selectbtn.setRadius()
    }
    
    

    func getAddressFromLatLon(pdblLatitude: String, withLongitude pdblLongitude: String) {
        var center : CLLocationCoordinate2D = CLLocationCoordinate2D()
        let lat: Double = Double("\(pdblLatitude)")!
        //21.228124
        let lon: Double = Double("\(pdblLongitude)")!
        //72.833770
        let ceo: CLGeocoder = CLGeocoder()
        center.latitude = lat
        center.longitude = lon
        let loc: CLLocation = CLLocation(latitude:center.latitude, longitude: center.longitude)
        ceo.reverseGeocodeLocation(loc, completionHandler:
            {(placemarks, error) in
                if (error != nil)
                {
                    print("reverse geodcode fail: \(error!.localizedDescription)")
                }
                let pm = placemarks! as [CLPlacemark]
                
                if pm.count > 0 {
                    let pm = placemarks![0]
                    print(pm.country ?? "")
                    print(pm.locality ?? "")
                    print(pm.subLocality ?? "")
                    print(pm.thoroughfare ?? "")
                    print(pm.postalCode ?? "")
                    print(pm.subThoroughfare ?? "")
                    var addressString : String = ""
                    if pm.subLocality != nil {
                        addressString = addressString + pm.subLocality! + ", "
                    }
                    if pm.thoroughfare != nil {
                        addressString = addressString + pm.thoroughfare! + ", "
                    }
                    if pm.locality != nil {
                        addressString = addressString + pm.locality! + ", "
                    }
                    if pm.country != nil {
                        addressString = addressString + pm.country! + ", "
                    }
                    if pm.postalCode != nil {
                        addressString = addressString + pm.postalCode! + " "
                    }
                    self.address_lbl.text = addressString
                    print(addressString)
                }
        })
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
// MARK: - Button Action
extension FillDetailVC{
    @IBAction func pushBack(_ sender:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}



///////////////////////////******************/////////////
//@IBOutlet weak var selectbtn:UIButton!
//@IBOutlet weak var Address:UITextField!
//
//var locationManager = CLLocationManager()
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    self.locationManager.delegate = self
//    self.locationManager.requestWhenInUseAuthorization()
//    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
//    self.locationManager.startUpdatingLocation()
//
//    selectbtn.setRadius()
//}
//@IBAction func pushBack(_ sender:UIButton)
//{
//    self.navigationController?.popViewController(animated: true)
//}
//
//
//func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//    let userLocation = locations.last
//
//
//    getAddressFromLatLon(pdblLatitude:String(userLocation!.coordinate.latitude) , withLongitude: String(userLocation!.coordinate.longitude))
//
//}
//
//func getAddressFromLatLon(pdblLatitude: String, withLongitude pdblLongitude: String) {
//
//    var addressString : String = ""
//    //dutyModelClass.latitude = "28.561779"
//    // dutyModelClass.longitude = "77.270733"
//
//    var center : CLLocationCoordinate2D = CLLocationCoordinate2D()
//    let lat: Double = Double("\(28.561779)")!
//    let lon: Double = Double("\(77.270733)")!
//    let ceo: CLGeocoder = CLGeocoder()
//    center.latitude = lat
//    center.longitude = lon
//
//    let loc: CLLocation = CLLocation(latitude:center.latitude, longitude: center.longitude)
//    ceo.reverseGeocodeLocation(loc, completionHandler:
//        {(placemarks, error) in
//            if (error != nil)
//            {
//                print("reverse geodcode fail: \(error!.localizedDescription)")
//            }
//            let pm = placemarks! as [CLPlacemark]
//
//            if pm.count > 0 {
//                let pm = placemarks![0]
//                if pm.subLocality != nil {
//                    addressString = addressString + pm.subLocality! + ", "
//                }
//                if pm.thoroughfare != nil {
//                    addressString = addressString + pm.thoroughfare! + ", "
//                }
//                if pm.locality != nil {
//                    addressString = addressString + pm.locality! + ", "
//                }
//                if pm.country != nil {
//                    addressString = addressString + pm.country! + ", "
//                }
//                if pm.postalCode != nil {
//                    addressString = addressString + pm.postalCode! + " "
//                }
//
//                self.Address.text = addressString
//
//
//            }
//    })
//}
//
//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//}
//
//
//
//}

