//
//  Constant.swift
//  InstaFitness
//
//  Created by mac on 8/21/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class Constant: NSObject {

    //static let trainerProfile:String = "TrainerProfile"
    //static let trainerProfileTVC:String = "TrainerProfileTVC"
    //static let trainerProfileDetail:String = "TrainerProfileDetail"
    //static let trainerProfileDetailTVC:String = "TrainerProfileDetailTVC"
}

enum NibRegisterName:String {
    case TrainerProfile
    case TrainerProfileDetail
    case TrainerLocation
    case UploadPicTvCell
    case CustomerReviewTvCell
    case ViewAllReviewsTvCell
    case AchievementTvCell
    case SpecializesinTvCell
    
    

    func nibName() ->String
    {
        return self.rawValue
    }
}

enum CellRegisterName:String {
    case TrainerProfileTVC
    case TrainerProfileDetailTVC
    case TrainerLocationTVC
    case UploadPicTvCell
    case CustomerReviewTvCell
    case ViewAllReviewsTvCell
    case AchievementTvCell
    case SpecializesinTvCell

    func cellIdentifier()->String
        {
             return self.rawValue
        }
}

extension UITableView
{
    func registerCell(_ nibName:String,_ cellIdentifier:String)
        {
            self.register(setUpNib(nibName), forCellReuseIdentifier:cellIdentifier)
        }
    private func setUpNib(_ nibName:String)->UINib
        {
       return UINib.init(nibName: nibName, bundle: nil)
        }
}

extension UIImageView
{
    func setRadius()
       {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
       }
}









