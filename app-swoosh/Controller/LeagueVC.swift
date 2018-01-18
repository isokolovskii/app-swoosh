//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Иван Соколовский on 18.01.2018.
//  Copyright © 2018 iSOKOL-DEV. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet var btns: [BorderButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onLeagueOptionTapped(_ sender: Any) {
        guard let sender = sender as? UIButton else {
            return
        }
        guard let btnText = sender.titleLabel?.text else {
            return
        }
        
        switch btnText {
        case "Mens":
            player.desiredLeague = Leagues.mens
        case "Womens":
            player.desiredLeague = Leagues.womens
        case "Co-ed":
            player.desiredLeague = Leagues.coed
        default:
            return
        }
        
        btns.forEach { (btn: BorderButton) in
            btn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3949325771)
        }
        sender.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        nextBtn.isEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
