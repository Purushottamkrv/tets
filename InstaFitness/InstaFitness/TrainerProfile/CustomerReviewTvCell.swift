//
//  CustomerReviewTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 03/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import FloatRatingView

class CustomerReviewTvCell: UITableViewCell,FloatRatingViewDelegate{
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Float) {
        print("rate has been done")
    }
    

    @IBOutlet weak var floatrating_view: FloatRatingView!
    override func awakeFromNib() {
        super.awakeFromNib()
        floatrating_view.delegate = self
        floatrating_view.rating = 3.5
        floatrating_view.halfRatings = true
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
