//
//  SlideVC.swift
//  InstaFitness
//
//  Created by Purushottam on 04/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class SlideVC: UIViewController,UITabBarDelegate {
    let slideArray = ["MY Account","My Trainee","My Leads","Share","Blog","Faqs","Get in Touch","About Instafitness","Privacy Policy", "Setting"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension SlideVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return slideArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SlideTvCell") as! SlideTvCell
        cell.data_lbl.text = slideArray[indexPath.row]
        return cell
    }
    
        func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
            //This method will be called when user changes tab.
        
    }
    
    
    
    }
