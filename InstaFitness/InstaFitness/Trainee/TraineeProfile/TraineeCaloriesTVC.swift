//
//  TraineeCaloriesTVC.swift
//  InstaFitness
//
//  Created by mac on 8/25/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import SwiftProgressView
import PieCharts

class TraineeCaloriesTVC: UITableViewCell {
    @IBOutlet weak var showCal_uilabel: UILabel!
    @IBOutlet weak var ModifyDiet_btn:UIButton!
    @IBOutlet weak var ModifyWorkout_btn:UIButton!
    @IBOutlet weak var progressring_view: ProgressRingView!
    @IBOutlet weak var progressring_view2: ProgressRingView!
   // @IBOutlet weak var chartView: PieChart!
    @IBOutlet weak var piechartView: UIView!
    var chartView:PieChart!

   

    
    override func awakeFromNib() {
        super.awakeFromNib()
       // var traineprofilevc:UIViewController!
         chartView = PieChart(frame: CGRect(x: 0, y: 0, width: piechartView.frame.size.width, height: piechartView.frame.size.height))
        chartView.innerRadius = 0
        chartView.outerRadius = 100
        chartView.selectedOffset = 30
        piechartView.addSubview(chartView)
        
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
        ModifyDiet_btn.layer.borderWidth = 1
        ModifyDiet_btn.layer.borderColor = UIColor.lightGray.cgColor
        ModifyDiet_btn.layer.cornerRadius = 5
        ModifyDiet_btn.layer.masksToBounds = true
        ModifyWorkout_btn.layer.borderWidth = 1
        ModifyWorkout_btn.layer.borderColor = UIColor.lightGray.cgColor
        ModifyWorkout_btn.layer.cornerRadius = 5
        ModifyWorkout_btn.layer.masksToBounds = true
        
        // MARK:- Pie chart
        
        chartView.layers = [createCustomViewsLayer(), createTextLayer()]
        //chartView.delegate = self as? PieChartDelegate
        chartView.models = createModels()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    // MARK: - PieChartDelegate
    
    func onSelected(slice: PieSlice, selected: Bool) {
        print("Selected: \(selected), slice: \(slice)")
    }
    // MARK: - Models
    
    fileprivate func createModels() -> [PieSliceModel] {
        let alpha: CGFloat = 0.5
        
        return [
            PieSliceModel(value: 3, color: UIColor.yellow.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.blue.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.green.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.cyan.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.red.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.magenta.withAlphaComponent(alpha)),
            PieSliceModel(value: 1, color: UIColor.orange.withAlphaComponent(alpha)),
            PieSliceModel(value:1 , color: UIColor.darkGray.withAlphaComponent(alpha))

        ]
    }
    
    
    // MARK: - Layers
    
    fileprivate func createCustomViewsLayer() -> PieCustomViewsLayer {
        let viewLayer = PieCustomViewsLayer()
        
        let settings = PieCustomViewsLayerSettings()
        settings.viewRadius = 135
        settings.hideOnOverflow = false
        viewLayer.settings = settings
        
        viewLayer.viewGenerator = createViewGenerator()
        
        return viewLayer
    }
    
    fileprivate func createTextLayer() -> PiePlainTextLayer {
        let textLayerSettings = PiePlainTextLayerSettings()
        textLayerSettings.viewRadius = 60
        textLayerSettings.hideOnOverflow = true
        textLayerSettings.label.font = UIFont.systemFont(ofSize: 12)
        
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 1
        textLayerSettings.label.textGenerator = {slice in
            return formatter.string(from: slice.data.percentage * 100 as NSNumber).map{"\($0)%"} ?? ""
        }
        
        let textLayer = PiePlainTextLayer()
        textLayer.settings = textLayerSettings
        return textLayer
    }
    
    fileprivate func createViewGenerator() -> (PieSlice, CGPoint) -> UIView {
        return {slice, center in
            
            let container = UIView()
            container.frame.size = CGSize(width: 100, height: 40)
            container.center = center
            let view = UIImageView()
            view.frame = CGRect(x: 30, y: 0, width: 40, height: 40)
            container.addSubview(view)
            
            if slice.data.id == 3 || slice.data.id == 0 {
                let specialTextLabel = UILabel()
                specialTextLabel.textAlignment = .center
                if slice.data.id == 0 {
                   // specialTextLabel.text = "views"
                    specialTextLabel.font = UIFont.boldSystemFont(ofSize: 18)
                } else if slice.data.id == 3 {
                    specialTextLabel.textColor = UIColor.blue
                   // specialTextLabel.text = "Custom"
                }
                specialTextLabel.sizeToFit()
                specialTextLabel.frame = CGRect(x: 0, y: 40, width: 100, height: 20)
                container.addSubview(specialTextLabel)
                container.frame.size = CGSize(width: 100, height: 60)
            }
            
            
            // src of images: www.freepik.com, http://www.flaticon.com/authors/madebyoliver
            let imageName: String? = {
                switch slice.data.id {
                case 0: return "fish"
                case 1: return "grapes"
                case 2: return "doughnut"
                case 3: return "water"
                case 4: return "chicken"
                case 5: return "beet"
                case 6: return "cheese"
                default: return nil
                }
            }()
            
            view.image = imageName.flatMap{UIImage(named: $0)}
            
            return container
        }
    }
    
}
