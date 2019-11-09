 //
//  TipsterViewController.swift
//  Tipster
//
//  Created by Stephon Fonrose on 12/26/18.
//  Copyright © 2018 Stephon Fonrose. All rights reserved.
//

import UIKit

class TipsterViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var billEntry: UITextField!
    @IBOutlet weak var tipSelect: UISegmentedControl!
    @IBOutlet weak var customTip: UITextField!
    
    @IBOutlet weak var customTipView: UIView!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billSplit: UIButton!
    
    @IBOutlet weak var numPeopleView: UIView!
    @IBOutlet weak var numPeopleLabel: UILabel!
    @IBOutlet weak var numPeopleStepper: UIStepper!
    
    @IBOutlet weak var splitBillView: UIView!
    @IBOutlet weak var splitBillAmount: UILabel!
    
    @IBOutlet weak var tipSelectToCustomTip: NSLayoutConstraint!
    @IBOutlet weak var splitBillToNumPeopleView: NSLayoutConstraint!
    
    
    var bill: Double = 0
    var tip: Double = 0
    var total: Double = 0
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
        
        updateSegments()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        billEntry.becomeFirstResponder()
        customTip.borderStyle = .roundedRect
        customTipView.layer.cornerRadius = 5
        customTipView.isHidden = true
        splitBillView.isHidden = true
        numPeopleView.isHidden = true
        tipSelectToCustomTip.constant = 0 - tipSelect.frame.height
        splitBillToNumPeopleView.constant = 0 - billSplit.frame.height
        tipSelect.addTarget(self, action: #selector(self.segmentControlValueChanged(segment:)), for: .valueChanged)
        numPeopleStepper.addTarget(self, action: #selector(self.stepperValueChanged(stepper:)), for: .valueChanged)
        
        numPeopleLabel.text = String(Int(numPeopleStepper.value))

    }
    @objc func segmentControlValueChanged(segment: UISegmentedControl) {
        if [0,1,2].contains(segment.selectedSegmentIndex) {
            tipSelectToCustomTip.constant = 0 - tipSelect.frame.height
            UIView.animate(withDuration: 0.5) {
                self.customTipView.isHidden = true
                self.view.layoutIfNeeded()
            }
            self.billEntry.becomeFirstResponder()
            self.calculateTip((Any).self)
            self.divideBill((Any).self)
        }
        if segment.selectedSegmentIndex == 3 {
            tipSelectToCustomTip.constant = 20
            UIView.animate(withDuration: 0.5) {
                self.customTipView.isHidden = false
                self.view.layoutIfNeeded()
            }
            self.customTip.becomeFirstResponder()
            self.calculateTip((Any).self)
            self.divideBill((Any).self)
        }
    }
    
    @objc func stepperValueChanged(stepper: UIStepper) {
        if stepper.value != 0 {
            self.splitBillView.isHidden = false
        }
        if stepper.value == 0 {
            self.splitBillView.isHidden = true
        }
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //percents = [0.15,0.20,0.25]
        bill = Double(billEntry.text!) ?? 0
        if tipSelect.selectedSegmentIndex >= 0 && tipSelect.selectedSegmentIndex <= 2 {
            tip = bill * percents[tipSelect.selectedSegmentIndex]
        } else {
            tip = bill * (Double(customTip.text!) ?? 0)/100
        }
        total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        self.divideBill((Any).self)
    }
    
    @IBAction func customTipEntered(_ sender: Any) {
        self.calculateTip((Any).self)
        self.divideBill((Any).self)
    }
    
    @IBAction func onStep(_ sender: UIStepper) {
        self.numPeopleLabel.text = String(Int(sender.value))
    }
    
    @IBAction func divideBill(_ sender: Any) {
        let splitBill = total / Double(numPeopleStepper.value)
        print(splitBill)
        splitBillAmount.text = String(format: "$%.2f", splitBill)
        splitBillAmount.sizeToFit()
    }
    
    @IBAction func viewSplit(_ sender: Any) {
        view.endEditing(true)
        UIView.animate(withDuration: 0.25) {
            self.numPeopleView.isHidden = !self.numPeopleView.isHidden
            if self.numPeopleView.isHidden == false {
                self.splitBillToNumPeopleView.constant = 30
            } else if self.numPeopleView.isHidden == true {
                self.splitBillToNumPeopleView.constant = 0 - self.billSplit.frame.height
            }
            self.view.layoutIfNeeded()
        }
            if numPeopleView.isHidden == true {
            splitBillView.isHidden = true
            numPeopleStepper.value = 0
            numPeopleLabel.text = String(Int(numPeopleStepper.value))
        }
    }
    
    @IBAction func toSettings(_ sender: Any) {
        self.performSegue(withIdentifier: "settings", sender: nil)
    }
    
    func updateSegments() {
        tipSelect.setTitle("\(Int(percents[0] * 100))", forSegmentAt: 0)
        tipSelect.setTitle("\(Int(percents[1] * 100))", forSegmentAt: 1)
        tipSelect.setTitle("\(Int(percents[2] * 100))", forSegmentAt: 2)
    }
    
 }
