//
//  LeftMenuViewController.swift
//  NestedVC
//
//  Created by Aminjoni Abdullozoda on 6/27/19.
//  Copyright © 2019 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController {
    
    //MARK: - UI Elements
    var titleLabel : UILabel = {
        let label = UILabel()
        
        let titleAttribute = NSAttributedString(string: "Menu", attributes:
            [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 30, weight: .bold),
             NSAttributedString.Key.foregroundColor : UIColor.white])
        
        label.attributedText = titleAttribute
        
        return label
    }()
    
    var seperateLine : UIView = {
        let line = UIView()
        line.backgroundColor = .white
        return line
    }()
    
    var aboutUsBtn : UIButton = {
        let btn = UIButton()
        let btnAttribute = NSAttributedString(string: "About Us", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font :  UIFont.systemFont(ofSize: 24, weight: .light)])
        
        btn.setAttributedTitle(btnAttribute, for: .normal)
        
        return btn
    }()
    
    var historyBtn : UIButton = {
        let btn = UIButton()
        let btnAttribute = NSAttributedString(string: "History", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font :  UIFont.systemFont(ofSize: 24, weight: .light)])
        
        btn.setAttributedTitle(btnAttribute, for: .normal)
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstrains()
    }
    
    
    //MARK: - setup subviews of menu
    private func setupViews() {
        
        self.view.backgroundColor = .black
        self.view.addSubview(titleLabel)
        
        self.view.addSubview(seperateLine)
        self.view.addSubview(aboutUsBtn)
        self.view.addSubview(historyBtn)
        

    
    }
    
    //MARK:- setup constrains of menu
    private func setupConstrains() {
       
       view.translatesAutoresizingMaskIntoConstraints = false
       titleLabel.translatesAutoresizingMaskIntoConstraints = false
       seperateLine.translatesAutoresizingMaskIntoConstraints = false
       aboutUsBtn.translatesAutoresizingMaskIntoConstraints = false
       historyBtn.translatesAutoresizingMaskIntoConstraints = false
        
        //title label
        self.view.addConstraints([
            NSLayoutConstraint(item: titleLabel, attribute: .leadingMargin, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 20),
            NSLayoutConstraint(item: titleLabel, attribute: .topMargin, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1.0, constant: 20)
            ])
        

        //seperate line
        self.view.addConstraints([
            NSLayoutConstraint(item: seperateLine, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1.0, constant: 10),
            NSLayoutConstraint(item: seperateLine, attribute: .width, relatedBy: .equal, toItem: titleLabel, attribute: .width, multiplier: 1.0, constant: 20),
            NSLayoutConstraint(item: seperateLine, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1.0, constant: 1.0)
            ])
        
        //about menu
        self.view.addConstraints([
            NSLayoutConstraint(item: aboutUsBtn, attribute: .top, relatedBy: .equal, toItem: seperateLine, attribute: .bottom, multiplier: 1.0, constant: 5.0),
            NSLayoutConstraint(item: aboutUsBtn, attribute: .leadingMargin, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 20)
            ])
        
        //history btn
        self.view.addConstraints([
            NSLayoutConstraint(item: historyBtn, attribute: .top, relatedBy: .equal, toItem: aboutUsBtn, attribute: .bottom, multiplier: 1.0, constant: 5.0),
            NSLayoutConstraint(item: historyBtn, attribute: .leadingMargin, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 20)
            ])
    
    }
    
}
