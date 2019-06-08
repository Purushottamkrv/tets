//
//  AddWorkOutVC.swift
//  InstaFitness
//
//  Created by mac on 8/22/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddWorkOutVC: UIViewController {

 @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib1 = UINib(nibName: "FullWorkoutDetailCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "FullWorkoutDetailTVC")

        let nib2 = UINib(nibName: "HalfWorkoutDetailCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "HalfWorkoutDetailTVC")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension AddWorkOutVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullWorkoutDetailTVC", for: indexPath) as!FullWorkoutDetailTVC
        return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "HalfWorkoutDetailTVC", for: indexPath) as!HalfWorkoutDetailTVC
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0
        {
            return 150

        }
        
        return 100
    }
    
}
