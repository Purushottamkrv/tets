//
//  HiddenView.swift
//  InstaFitness
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class HiddenView: UIView {

    @IBOutlet var contentView:UIView!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        
        Bundle.main.loadNibNamed("HiddenView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
