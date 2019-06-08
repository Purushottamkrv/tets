//
//  SignUpVC.swift
//  InstaFitness
//
//  Created by mac on 8/25/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

@IBOutlet weak var tableView:UITableView!

    var img_array:[UIImage] = []
    var staticInfo:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib1 = UINib(nibName: "SignUpCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "SignUpTVC")
     ///
        
        let nib2 = UINib(nibName: "LocationCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "LocationTVC")

        //my-profile-l
        img_array = [#imageLiteral(resourceName: "my-profile-l"),#imageLiteral(resourceName: "phone"),#imageLiteral(resourceName: "role"),#imageLiteral(resourceName: "experience"),#imageLiteral(resourceName: "organization"),#imageLiteral(resourceName: "organization"),#imageLiteral(resourceName: "organization")]
        staticInfo = ["Name","Phone No.","Role","Experience(in Yrs)","Organisation/Freelancer","Add your Certification","Add your Specification"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SignUpVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return img_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SignUpTVC", for: indexPath) as!SignUpTVC
        
        cell.staticInformation_lab.text = staticInfo[indexPath.row]
        cell.img.image = img_array[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
    
}
