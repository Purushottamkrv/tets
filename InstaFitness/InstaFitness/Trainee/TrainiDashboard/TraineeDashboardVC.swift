//
//  TraineeDashboardVC.swift
//  InstaFitness
//
//  Created by Purushottam on 05/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import PieCharts

class TraineeDashboardVC: UIViewController,PieChartDelegate {
    func onSelected(slice: PieSlice, selected: Bool) {
        print("Chart call")
    }
    @IBOutlet weak var dashBoard_Tv:UITableView!
    var ISExpandable = Tablexpans.init(Epandable: false)
    var tag:Int!
    var isExpnd:Bool = true
     var twodimensionalarray = [expandablenames.init(isexpand: true, names: ["a"]),expandablenames.init(isexpand: true, names: ["f"]),expandablenames.init(isexpand: true, names: ["prince","ravi"])]
    
    override func viewDidLoad() {
        tag = 0
        dashBoard_Tv.register(UINib(nibName: "PercentageGraphTvCel", bundle: nil), forCellReuseIdentifier: "PercentageGraphTvCel")
          dashBoard_Tv.register(UINib(nibName: "DashboardTimelineTvCell", bundle: nil), forCellReuseIdentifier: "DashboardTimelineTvCell")
         dashBoard_Tv.register(UINib(nibName: "GraphTvCel", bundle: nil), forCellReuseIdentifier: "GraphTvCel")
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
extension TraineeDashboardVC:UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return twodimensionalarray.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !twodimensionalarray[section].isexpand{
            return 0
        }
        return twodimensionalarray[section].names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PercentageGraphTvCel") as! PercentageGraphTvCel
//            cell.ModifyDiet_btn.backgroundColor = UIColor .YellowColor()
//            cell.ModifyDiet_btn.setTitle("+ADD DIET", for: .normal)
//            cell.ModifyDiet_btn.setTitleColor(UIColor .black, for: .normal)
//            cell.ModifyWorkout_btn.backgroundColor = UIColor .black
//            cell.ModifyWorkout_btn.setTitle("+ADD WORKOUT", for: .normal)
//            cell.ModifyWorkout_btn.setTitleColor(UIColor .white, for: .normal)
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GraphTvCel") as! GraphTvCel
            cell.chartView.delegate = self
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DashboardTimelineTvCell") as! DashboardTimelineTvCell
            return cell
        }
    }
    
  
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 44))
        headerView.backgroundColor = UIColor .clear
        let clickbutton = UIButton(frame: CGRect(x: tableView.frame.size.width-60, y: 0, width: 40, height: 40))
        clickbutton.backgroundColor = UIColor .clear
        //clickbutton.setImage(#imageLiteral(resourceName: "sortimage"), for: .normal)
        clickbutton.addTarget(self, action: #selector(ClickButtonTap), for: .touchUpInside)
        headerView.addSubview(clickbutton)
        let ImageView = UIImageView(frame: CGRect(x: clickbutton.frame.origin.x+4, y: clickbutton.frame.origin.y+12.5, width: 15, height: 15))
        ImageView.image = #imageLiteral(resourceName: "sortimage")
        ImageView.contentMode = UIViewContentMode .scaleAspectFit
        headerView.addSubview(ImageView)
         clickbutton.tag = section
        showLabel.showlabel(view: headerView, x: 20, y: 0, width: 200, height: 44, labeltext: "My Analysis", textcolor: .darkGray, backGColor: .clear)
    
        return headerView
        
    }
    @objc func ClickButtonTap(_ sender :UIButton){
        print("button tap",sender.tag )
        var indexpaths = [IndexPath]()
        let secton = sender.tag
        for row in twodimensionalarray[secton].names.indices{
            let indexpath = IndexPath(row: row, section: secton)
            indexpaths.append(indexpath)
        }
        let isExpand = twodimensionalarray[secton].isexpand
        twodimensionalarray[secton].isexpand = !isExpand
        
        if isExpand{
            dashBoard_Tv.deleteRows(at: indexpaths, with: .fade)
            
        }else{
            dashBoard_Tv.insertRows(at: indexpaths, with: .fade)
        }
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 0
        case 1:
            return 44
        default:
            return 0
    }
    }
   
    
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 360
        case 1:
            return 450
        default:
            return 465
        }
    }
    
    
    }
    
    

