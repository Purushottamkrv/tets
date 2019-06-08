//
//  DashboardTimelineTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 08/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class DashboardTimelineTvCell: UITableViewCell {
    @IBOutlet weak var homelogo_lbl: UILabel!
    @IBOutlet weak var time_lbl: UILabel!
    
    @IBOutlet weak var hashtag_lbl: UILabel!
    @IBOutlet weak var discription_lbl: UILabel!
    @IBOutlet weak var timelineimg_view: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
