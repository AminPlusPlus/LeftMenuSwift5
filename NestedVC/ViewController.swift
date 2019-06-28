//
//  ViewController.swift
//  NestedVC
//
//  Created by Aminjoni Abdullozoda on 6/27/19.
//  Copyright © 2019 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate  {
    func toggleMenu()
   // func closeLeftMenu()
}

class ViewController: UIViewController {
    
    var delegate : ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        let btnMenuToggle  = UIButton(frame: CGRect(x: 10, y: 100, width: 100, height: 20))
        btnMenuToggle.setTitle("Menu", for: .normal)
        btnMenuToggle.setTitleColor(.black, for: .normal)
        btnMenuToggle.addTarget(self, action: #selector(menuOpen), for: .touchUpInside)
        
        view.addSubview(btnMenuToggle)
        
       // let tabGesture
    }
    
    
    @objc private func menuOpen () {
        delegate?.toggleMenu()
    }


}

