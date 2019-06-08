//
//  FitnessAssessmentVC.swift
//  InstaFitness
//
//  Created by mac on 8/24/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class FitnessAssessmentVC: UIViewController {

 @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var segmentControl:UISegmentedControl!
    var condition:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib1 = UINib(nibName: "AssessmentGrapsCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "AssessmentGrapsTVC")
        segmentControl.selectedSegmentIndex = 0
        segmentControl.addTarget(self, action: #selector(indexChanged(_:)), for: .valueChanged)

    }
    
    @objc func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            condition = false

            tableView.reloadData()
        case 1:
            condition = true
            tableView.reloadData()
            
        default:
            break
        }
    }

    @IBAction func back(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension FitnessAssessmentVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AssessmentGrapsTVC", for: indexPath) as!AssessmentGrapsTVC
        if condition
          {
            cell.graphImg.image = UIImage(named: "3 (5)")
            cell.btn.setTitle("ADD MEASUREMENT", for: UIControlState.normal)

            //cell.btn.titleLabel?.text = "ADD MEASUREMENT"
           }
        else
        {
            cell.graphImg.image = UIImage(named: "4 (6)")
            cell.btn.setTitle("ADD ASSESSMENT", for: UIControlState.normal)

        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 500
    }
    
}
