//
//  SettingsViewController.swift
//  Tipster
//
//  Created by Stephon Fonrose on 11/7/19.
//  Copyright © 2019 Stephon Fonrose. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var tipBox1: UITextField!
    @IBOutlet weak var tipBox2: UITextField!
    @IBOutlet weak var tipBox3: UITextField!
    @IBOutlet weak var customBox: UITextField!
    
    var percents: [Double] = []
    
    override func viewWillAppear(_ animated: Bool) {
        let theme: String = UserDefaults.standard.string(forKey: "theme")!
        
        switch theme {
        case "alternate":
            Theme.theme2(topView: self.topView, bottomView: self.bottomView)
        case "dark":
            Theme.theme3(topView: self.topView, bottomView: self.bottomView)
        case "black":
            Theme.theme4(topView: self.topView, bottomView: self.bottomView)
        default:
            Theme.theme1(topView: self.topView, bottomView: self.bottomView)
        }
        
        percents = UserDefaults.standard.array(forKey: "percents") as! [Double]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func defaultThemeButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            Theme.theme1(topView: self.topView, bottomView: self.bottomView)
        }
        UserDefaults.standard.set("default", forKey: "theme")
    }
    @IBAction func alternateThemeButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            Theme.theme2(topView: self.topView, bottomView: self.bottomView)
        }
        UserDefaults.standard.set("alternate", forKey: "theme")
    }
    @IBAction func darkThemeButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            Theme.theme3(topView: self.topView, bottomView: self.bottomView)
        }
        UserDefaults.standard.set("dark", forKey: "theme")
    }
    @IBAction func blackThemeButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            Theme.theme4(topView: self.topView, bottomView: self.bottomView)
        }
        UserDefaults.standard.set("black", forKey: "theme")
    }
    func setPercents() {
        tipBox1.text = "\(Int(percents[0] * 100))"
        tipBox2.text = "\(Int(percents[1] * 100))"
        tipBox3.text = "\(Int(percents[2] * 100))"
    }
}
