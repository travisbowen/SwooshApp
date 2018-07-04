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
        nextButton.isHidden = true
        
        //Instaniate new player
        player = Player()
    }

    
    //Men button
    @IBAction func mensButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Mens")
    }
    
    
    //Women button
    @IBAction func womensButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Womens")
    }
    
    
    //Co-ed button
    @IBAction func coedButtonPressed(_ sender: UIButton) {
        selectLeague(league: "Co-ed")
    }
    
    
    //Sets player objects selected league
    func selectLeague(league: String){
        player.selectedLeague = league
        
        //Enable and show next button
        nextButton.isHidden = false
        nextButton.isEnabled = true
    }
    
    
    //Next button
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    //Pass player object to SkillVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
    
    //Unwind function for SkillVC
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}
