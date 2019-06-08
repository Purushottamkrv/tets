//
//  TraineeProfileVC.swift
//  InstaFitness
//
//  Created by mac on 8/25/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import PieCharts

class TraineeProfileVC: UIViewController,PieChartDelegate {
    func onSelected(slice: PieSlice, selected: Bool) {
        print("")
    }
    

@IBOutlet weak var tableView:UITableView!
    
    var array:[String] = []
    var imgArray:[UIImage] = []
    var traineprofilevc:UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array = ["Workout","Diet Plan","Seassion","Assesment","Modify Workout","Modify Diet"]
        imgArray = [#imageLiteral(resourceName: "workout"),#imageLiteral(resourceName: "diet"),#imageLiteral(resourceName: "diet"),#imageLiteral(resourceName: "workout"),#imageLiteral(resourceName: "workout"),#imageLiteral(resourceName: "diet")]
        
        


        let nib1 = UINib(nibName: "TraineeProfileCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "TraineeProfileTVC")
        let nib2 = UINib(nibName: "TraineeCaloriesCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "TraineeCaloriesTVC")
        let nib3 = UINib(nibName: "WorkoutListCell", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "WorkoutListTVC")
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
extension TraineeProfileVC:UITableViewDelegate,UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 2
        {
            return array.count
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TraineeProfileTVC", for: indexPath) as!TraineeProfileTVC
        return cell
        }
        else if indexPath.section == 1
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TraineeCaloriesTVC", for: indexPath) as!TraineeCaloriesTVC
            
           cell.chartView.delegate = self
        //cell.traineprofilevc = self
        return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutListTVC", for: indexPath) as!WorkoutListTVC
        
        cell.lab.text = array[indexPath.row]
        cell.workoutimg_view.image = imgArray[indexPath.row]
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 2
        {
            if indexPath.row == 0
            {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "AddDietVC") as! AddDietVC
            navigationController?.pushViewController(vc,animated: true)
            }
            else if indexPath.row == 1
            {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "AddBodyPartVC") as! AddBodyPartVC
            navigationController?.pushViewController(vc,animated: true)
            }
            else
            {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FitnessAssessmentVC") as! FitnessAssessmentVC
            navigationController?.pushViewController(vc,animated: true)
            }
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0
        {
        return 100
        }
        else if indexPath.section == 1
        {
        return 295
        }
        
        return 70
        
    }
    
}
