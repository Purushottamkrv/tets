//
//  PercentageGraphTvCel.swift
//  InstaFitness
//
//  Created by Purushottam on 08/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import SwiftProgressView

class PercentageGraphTvCel: UITableViewCell {
    @IBOutlet weak var showCal_uilabel: UILabel!
    @IBOutlet weak var ModifyDiet_btn:UIButton!
    @IBOutlet weak var ModifyWorkout_btn:UIButton!
    @IBOutlet weak var progressring_view: ProgressRingView!
    @IBOutlet weak var progressring_view2: ProgressRingView!


    override func awakeFromNib() {
        super.awakeFromNib()
        progressring_view.setProgress(0.5, animated: true)
        progressring_view.percentageColor = UIColor .ProgressColor()
        progressring_view.progressColor = UIColor .ProgressColor()
        progressring_view.circleLineWidth = 0.5
        progressring_view.progressLineWidth = 5.0
        progressring_view.percentageFontSize = 20.0
        progressring_view.isShowPercentage = true
        progressring_view2.setProgress(0.7, animated: true)
        progressring_view2.percentageColor = UIColor .red
        progressring_view2.progressColor = UIColor .red
        progressring_view2.circleLineWidth = 0.5
        progressring_view2.progressLineWidth = 5.0
        progressring_view2.percentageFontSize = 20.0
        progressring_view2.isShowPercentage = true
//        ModifyDiet_btn.layer.borderWidth = 1
//        ModifyDiet_btn.layer.borderColor = UIColor.lightGray.cgColor
//        ModifyDiet_btn.layer.cornerRadius = 5
//        ModifyDiet_btn.layer.masksToBounds = true
//        ModifyWorkout_btn.layer.borderWidth = 1
//        ModifyWorkout_btn.layer.borderColor = UIColor.lightGray.cgColor
//        ModifyWorkout_btn.layer.cornerRadius = 5
//        ModifyWorkout_btn.layer.masksToBounds = true
//        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
