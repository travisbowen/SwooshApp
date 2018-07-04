//
//  BorderButton.swift
//  SwooshApp
//
//  Created by TBone on 7/2/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

//Needed to show changes real time in storyboard
@IBDesignable

class BorderButton: UIButton {
    
    //Shows changes in real time in storyboard
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    //Called when all file owners outlets and properties are set
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    //Creates custom button
    func customizeView(){
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
