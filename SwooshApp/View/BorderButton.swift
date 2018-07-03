//
//  BorderButton.swift
//  SwooshApp
//
//  Created by TBone on 7/2/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
