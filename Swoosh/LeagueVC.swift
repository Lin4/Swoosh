//
//  LeagueVCViewController.swift
//  Swoosh
//
//  Created by Lingeswaran Kandasamy on 12/16/17.
//  Copyright © 2017 Kalaivani Rasalingam. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
        }
    
}
