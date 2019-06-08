//
//  Extension.swift
//  InstaFitness
//
//  Created by mac on 8/16/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class Extension: NSObject {
}

extension UIButton
{
    func setRadius()
    {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
        
    }
}
