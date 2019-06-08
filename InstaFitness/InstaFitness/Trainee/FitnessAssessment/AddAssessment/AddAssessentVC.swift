//
//  AddAssessentVC.swift
//  InstaFitness
//
//  Created by mac on 8/24/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddAssessentVC: UIViewController {

 @IBOutlet weak var tableView:UITableView!
    
    var sourceData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sourceData = ["MUSCULAR ENDURANCE TEST","STRENGTH TEST","AEROBIC TESTING","BALANCING TEST","CORE TESTING","FLEXIBILITY TESTING"]
        let nib1 = UINib(nibName: "AssessmentDetailCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "AddAssessentTVC")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension AddAssessentVC:UITableViewDelegate,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sourceData[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sourceData.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddAssessentTVC", for: indexPath) as!AddAssessentTVC
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
}
