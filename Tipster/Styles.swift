//
//  Styles.swift
//  Tipster
//
//  Created by Stephon Fonrose on 11/7/19.
//  Copyright © 2019 Stephon Fonrose. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    static var topColor: UIColor?
    static var bottomColor: UIColor?
    static var topText: UIColor?
    static var bottomText: UIColor?
    
    static public func defaultTheme(topView: UIView, bottomView: UIView) {
        
        let topViewColor: UIColor = #colorLiteral(red: 0.9288824201, green: 0.9092006087, blue: 0.9394842982, alpha: 1) //#ECE8EF
        let bottomViewColor: UIColor = #colorLiteral(red: 0, green: 0.5860211849, blue: 0.5766002536, alpha: 1) //#379392
        let textColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        let bottomTextColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        
        topView.backgroundColor = topViewColor
        bottomView.backgroundColor =  bottomViewColor
        
        for view in topView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = textColor
            }
            if view.isKind(of: UITextField.self) {
                let textField = view as! UITextField
                textField.backgroundColor = UIColor.clear
                textField.textColor = textColor
                textField.borderStyle = UITextField.BorderStyle.none
            }
        }
        
        for view in bottomView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UIButton.self) {
                let button = view as! UIButton
                button.setTitleColor( bottomTextColor, for: UIControl.State.normal)
                button.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = bottomTextColor
            }
        }
    }
    
    static public func theme1(topView: UIView, bottomView: UIView) {
        
        let topViewColor: UIColor = #colorLiteral(red: 0.05137271434, green: 0.5813654065, blue: 0.9741100669, alpha: 1) //#4392F1
        let bottomViewColor: UIColor = #colorLiteral(red: 0, green: 0.2840706408, blue: 0.5560919642, alpha: 1) //#064789
        let textColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        let bottomTextColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        
        topView.backgroundColor = topViewColor
        bottomView.backgroundColor =  bottomViewColor
        
        for view in topView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = textColor
            }
            if view.isKind(of: UISegmentedControl.self) {
                let control = view as! UISegmentedControl
                control.backgroundColor = UIColor(red: 0/255, green: 0.255, blue: 0/255, alpha: 0.1)
            }
            if view.isKind(of: UITextField.self) {
                let textField = view as! UITextField
                textField.backgroundColor = UIColor.clear
                textField.textColor = textColor
                textField.borderStyle = UITextField.BorderStyle.none
            }
            if view.isKind(of: UIStackView.self) {
                let stack = view as! UIStackView
                stack.backgroundColor = UIColor.red
            }
        }
        
        for view in bottomView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UIButton.self) {
                let button = view as! UIButton
                button.setTitleColor( bottomTextColor, for: UIControl.State.normal)
                button.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = bottomTextColor
            }
        }
    }
    
    static public func theme2(topView: UIView, bottomView: UIView) {
        
        let topViewColor: UIColor = #colorLiteral(red: 0.878998816, green: 0.9796438813, blue: 0.5173899531, alpha: 1) //#E5F993
        let bottomViewColor: UIColor = #colorLiteral(red: 1, green: 0.9837012887, blue: 0, alpha: 1) //#FFFB46
        let textColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        let bottomTextColor: UIColor = #colorLiteral(red: 0.04058807343, green: 0.07145414501, blue: 0.04485637695, alpha: 1) //#0C120C
        
        topView.backgroundColor = topViewColor
        bottomView.backgroundColor =  bottomViewColor
        
        for view in topView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = textColor
            }
            if view.isKind(of: UISegmentedControl.self) {
                let control = view as! UISegmentedControl
                control.backgroundColor = UIColor(red: 0/255, green: 0.255, blue: 0/255, alpha: 0.1)
            }
            if view.isKind(of: UITextField.self) {
                let textField = view as! UITextField
                textField.backgroundColor = UIColor.clear
                textField.textColor = textColor
                textField.borderStyle = UITextField.BorderStyle.none
            }
        }
        
        for view in bottomView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UIButton.self) {
                let button = view as! UIButton
                button.setTitleColor( bottomTextColor, for: UIControl.State.normal)
                button.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = bottomTextColor
            }
        }
    }
    
    static public func theme3(topView: UIView, bottomView: UIView) {
        
        let topViewColor: UIColor = #colorLiteral(red: 0.3431131542, green: 0.2222510278, blue: 0.4982802868, alpha: 1) //#533A7B
        let bottomViewColor: UIColor = #colorLiteral(red: 0, green: 0.1006211415, blue: 0.2201498747, alpha: 1) //#011936
        let textColor: UIColor = #colorLiteral(red: 0.8143022656, green: 0.7995576262, blue: 0.8426216245, alpha: 1) //#CFCCD6
        let bottomTextColor: UIColor = #colorLiteral(red: 0.8143022656, green: 0.7995576262, blue: 0.8426216245, alpha: 1) //#CFCCD6
        
        topView.backgroundColor = topViewColor
        bottomView.backgroundColor =  bottomViewColor
        
        for view in topView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = textColor
            }
            if view.isKind(of: UISegmentedControl.self) {
                let control = view as! UISegmentedControl
                control.backgroundColor = UIColor(red: 0/255, green: 0.255, blue: 0/255, alpha: 0.1)
            }
            if view.isKind(of: UITextField.self) {
                let textField = view as! UITextField
                textField.backgroundColor = UIColor.clear
                textField.textColor = textColor
                textField.borderStyle = UITextField.BorderStyle.none
            }
        }
        
        for view in bottomView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UIButton.self) {
                let button = view as! UIButton
                button.setTitleColor( bottomTextColor, for: UIControl.State.normal)
                button.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = bottomTextColor
            }
        }
    }
    
    static public func theme4(topView: UIView, bottomView: UIView) {
        
        let topViewColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) //#000000
        let bottomViewColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) //#000000
        let textColor: UIColor = #colorLiteral(red: 0.9793336987, green: 0.9398939013, blue: 0.9877107739, alpha: 1) //#F8F0FB
        let bottomTextColor: UIColor = #colorLiteral(red: 0.9793336987, green: 0.9398939013, blue: 0.9877107739, alpha: 1) //#F8F0FB
        
        topView.backgroundColor = topViewColor
        bottomView.backgroundColor =  bottomViewColor
        
        for view in topView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = textColor
            }
            if view.isKind(of: UISegmentedControl.self) {
                let control = view as! UISegmentedControl
                control.backgroundColor = UIColor(red: 0/255, green: 0.255, blue: 0/255, alpha: 0.1)
            }
            if view.isKind(of: UITextField.self) {
                let textField = view as! UITextField
                textField.backgroundColor = UIColor.clear
                textField.textColor = textColor
                textField.borderStyle = UITextField.BorderStyle.none
            }
        }
        
        for view in bottomView.allSubviews {
            if view.isKind(of: UIView.self) {
                view.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UIButton.self) {
                let button = view as! UIButton
                button.setTitleColor( bottomTextColor, for: UIControl.State.normal)
                button.backgroundColor = UIColor.clear
            }
            if view.isKind(of: UILabel.self) {
                let label = view as! UILabel
                label.textColor = bottomTextColor
            }
        }
    }
}

extension UIView {
    var allSubviews: [UIView] {
        return self.subviews.flatMap { [$0] + $0.allSubviews }
    }
}
