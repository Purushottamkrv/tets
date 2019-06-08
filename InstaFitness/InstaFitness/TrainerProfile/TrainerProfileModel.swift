//
//  TrainerProfileModel.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class TrainerProfileModel: NSObject {

 var trainerInformation:[TrainerInformation] = []
 
func setStaticInformation()
   {
    let name = TrainerInformation(detail: "Name", information:"Aditya Kumar", image: #imageLiteral(resourceName: "my-profile-l"))
    let email = TrainerInformation(detail: "Email Id", information: "Aditya@technobrix.com", image: #imageLiteral(resourceName: "mail"))
    let phone = TrainerInformation(detail: "Phone No", information: "+91 8867589403", image: #imageLiteral(resourceName: "phone"))
    let gender = TrainerInformation(detail: "Gender", information: "Male", image: #imageLiteral(resourceName: "gender-l"))
    let role = TrainerInformation(detail: "Role", information: "Trainer", image: #imageLiteral(resourceName: "role"))
    let enperience = TrainerInformation(detail: "Experience(in yr)", information: "8 Yr", image: #imageLiteral(resourceName: "experience"))
    let organization = TrainerInformation(detail: "Organization & Freelancer", information: "Blue Gym", image: #imageLiteral(resourceName: "organization"))
    let location = TrainerInformation(detail: "Location", information: "India", image: #imageLiteral(resourceName: "location"))
     trainerInformation.append(name)
     trainerInformation.append(email)
     trainerInformation.append(phone)
     trainerInformation.append(gender)
     trainerInformation.append(role)
     trainerInformation.append(enperience)
     trainerInformation.append(organization)
     trainerInformation.append(location)
   }
    
}

struct TrainerInformation {
    
    var detail:String
    var information:String
    var image:UIImage

}
