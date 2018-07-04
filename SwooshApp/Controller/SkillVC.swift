//
//  SkillVC.swift
//  SwooshApp
//
//  Created by Travis Bowen on 7/2/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player : Player!
    @IBOutlet weak var finishButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.isHidden = true
    }

    
    //Beginner button
    @IBAction func beginnerButtonPressed(_ sender: UIButton) {
        selectSkill(skill: "Beginner")
    }
    
    
    //Baller button
    @IBAction func ballerButtonPressed(_ sender: UIButton) {
        selectSkill(skill: "Baller")
    }
    
    
    //Finish button
    @IBAction func finishButtonPressed(_ sender: UIButton) {
        //Shows alert with player object info
        showAlert()
    }
    
    
    //Sets player objects selected skill
    func selectSkill(skill: String){
        player.selectedSkill = skill
        
        //Enable and show finish button
        finishButton.isHidden = false
        finishButton.isEnabled = true
    }
    
    
    //Creates an alert with player info
    func showAlert(){
        let alert = UIAlertController(title: "Let's Play", message: "You chose to ball in the \(player.selectedLeague!) league with a \(player.selectedSkill!) skill level.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
