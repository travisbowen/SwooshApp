//
//  LeagueVC.swift
//  SwooshApp
//
//  Created by Travis Bowen on 7/2/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func mensButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func womensButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func coedButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}
