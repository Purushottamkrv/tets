//
//  TrainerProfileVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import GoogleMaps
import FloatRatingView

class TrainerProfileVC: UIViewController,FloatRatingViewDelegate {
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Float) {
        print("hello")
    }
    

    @IBOutlet weak var tableView:UITableView!
    let logoDownloadNotificationID = "OpenNewVC"
    let obj = TrainerProfileModel()
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
       registerCell()
      obj.setStaticInformation()
        NotificationCenter.default.addObserver(self, selector: #selector(moveToNextVC), name: Notification.Name(rawValue: logoDownloadNotificationID), object: nil)
    }

    
@objc func moveToNextVC()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectLocationRadiusVC") as! SelectLocationRadiusVC
        navigationController?.pushViewController(vc,animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

// MARK: - Register nib
extension TrainerProfileVC{
    func registerCell(){
        tableView.registerCell(NibRegisterName.TrainerProfile.nibName(),CellRegisterName.TrainerProfileTVC.cellIdentifier())
        tableView.registerCell(NibRegisterName.TrainerProfileDetail.nibName(),CellRegisterName.TrainerProfileDetailTVC.cellIdentifier())
        tableView.registerCell(NibRegisterName.TrainerLocation.nibName(),CellRegisterName.TrainerLocationTVC.cellIdentifier())
            tableView.registerCell(NibRegisterName.UploadPicTvCell.nibName(), CellRegisterName.UploadPicTvCell.cellIdentifier())
            tableView.registerCell(NibRegisterName.CustomerReviewTvCell.nibName(), CellRegisterName.CustomerReviewTvCell.cellIdentifier())
           tableView.registerCell(NibRegisterName.ViewAllReviewsTvCell.nibName(), CellRegisterName.ViewAllReviewsTvCell.cellIdentifier())
            tableView.registerCell(NibRegisterName.AchievementTvCell.nibName(), CellRegisterName.AchievementTvCell.cellIdentifier())
            tableView.registerCell(NibRegisterName.SpecializesinTvCell.nibName(), CellRegisterName.SpecializesinTvCell.cellIdentifier())
    }
    
}
extension TrainerProfileVC:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else if section == 1{
            return obj.trainerInformation.count
        }
        else if section == 2
        {
            return 1
        }
        else if section == 3
        {
            return 5
        }
        else if section == 4
        {
            return 1
        }
        else if section == 5
        {
            return 2
        }
        else if section == 6
        {
            return 1
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainerProfileTVC", for: indexPath) as!TrainerProfileTVC
            cell.floatRatingView.backgroundColor = UIColor.clear
            cell.floatRatingView.delegate = self
            cell.floatRatingView.rating = 3.5
            cell.floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
            cell.floatRatingView.halfRatings = true
            return cell
        }
        else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrainerProfileDetailTVC", for: indexPath) as!TrainerProfileDetailTVC
            cell.trainerInformation = obj.trainerInformation[indexPath.row]
            return cell
        }
        else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "UploadPicTvCell", for: indexPath) as! UploadPicTvCell
            return cell
            
        }
        else if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerReviewTvCell", for: indexPath) as! CustomerReviewTvCell
            return cell
            
        }
            
        else if indexPath.section == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ViewAllReviewsTvCell", for: indexPath) as! ViewAllReviewsTvCell
            return cell
            
        }
        else if indexPath.section == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AchievementTvCell", for: indexPath) as! AchievementTvCell
            if indexPath.row == 0{
                cell.headertitle_lbl.text = "Achievement"
            }
            else{
                cell.headertitle_lbl.text = "I am Certified from"
                
            }
            return cell
            
        }
        else if indexPath.section == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SpecializesinTvCell", for: indexPath) as! SpecializesinTvCell
            return cell
            
        }
            
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrainerLocationTVC", for: indexPath) as!TrainerLocationTVC
            //cell.trainerInformation = obj.trainerInformation[indexPath.row]
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0{
            return 180
        }
        else if indexPath.section == 1{
            return 70
        }
        else if indexPath.section == 2{
            return 270
        }
        else if indexPath.section == 3{
            return 140
        }
        else if indexPath.section == 4{
            return 200
        }
        else if indexPath.section == 5{
            return 300
        }
        else if indexPath.section == 6{
            return 150
        }
        else{
            return 700
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 18))
        let label = UILabel(frame: CGRect(x: 20, y: 10, width: 300, height: 20))
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        label.backgroundColor = UIColor .clear
        label.textColor = UIColor.darkGray
        view.addSubview(label)
        if section == 3{
            label.text = "Add customer reviews"
        }
        else{
            label.text = ""
            }
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 3{
            return 40
        }
        else{
            return 0
        }
   }
}
