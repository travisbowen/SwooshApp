//
//  LeagueVC.swift
//  SwooshApp
//
//  Created by Travis Bowen on 7/2/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    
    @IBAction func mensButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Mens")
    }
    
    
    @IBAction func womensButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Womens")
    }
    
    
    @IBAction func coedButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Co-ed")
    }
    
    
    func selectLeague(league: String){
        player.selectedLeague = league
        nextButton.isEnabled = true
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}
