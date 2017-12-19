//
//  LeagueVCViewController.swift
//  Swoosh
//
//  Created by Lingeswaran Kandasamy on 12/16/17.
//  Copyright © 2017 Kalaivani Rasalingam. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextBtn: BorderButton!
    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomesTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
@IBOutlet weak var onWomensTapped: BorderButton!
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVCR = segue.destination as? SkillVC {
            skillVCR.player = player
        }
        
    }
    
    func selectLeague (leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
}
