//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Иван Соколовский on 18.01.2018.
//  Copyright © 2018 iSOKOL-DEV. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    @IBOutlet var btns: [BorderButton]!
    @IBOutlet weak var finishBtn: BorderButton!
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onSkillOptionTapped(_ sender: Any) {
        guard let sender = sender as? UIButton else {
            return
        }
        guard let btnText = sender.titleLabel?.text else {
            return
        }
        selectedSkillLevel(skillLevel: btnText)
    }
    
    func selectedSkillLevel(skillLevel level: String) {
        switch level {
        case "Begginer":
            player.selectedSkillLevel = SkillLevels.beginner
        case "Baller":
            player.selectedSkillLevel = SkillLevels.baller
        default:
            return
        }
        
        btns.forEach { (btn: BorderButton) in
            btn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3949325771)
            if btn.titleLabel?.text == level {
                btn.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            }
        }
        finishBtn.isEnabled = true
    }

    @IBAction func onFinishTapped(_ sender: Any) {
        print(player)
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
