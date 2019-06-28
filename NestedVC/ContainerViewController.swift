//
//  ContainerViewController.swift
//  NestedVC
//
//  Created by Aminjoni Abdullozoda on 6/27/19.
//  Copyright © 2019 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController,ViewControllerDelegate {

    
    
    var mainViewController : ViewController!
    var leftMenuViewController : LeftMenuViewController!
    
    var isMove = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureMainViewController()
    }
    
    //main view
    private func configureMainViewController () {
        mainViewController = ViewController()
        addChild(mainViewController)
        view.addSubview(mainViewController.view)
        mainViewController.delegate = self
        mainViewController.didMove(toParent: self)
        
    }
    
    //left menu
    private func configureMenuViewController() {
        leftMenuViewController = LeftMenuViewController()
        addChild(leftMenuViewController)
        view.insertSubview(leftMenuViewController.view, at: 0)
        leftMenuViewController.didMove(toParent: self)
    }
    
    private func showMenuViewController (shoudMove : Bool){
        if shoudMove {
    
            //open aniamtion
            UIView.animate(withDuration: 0.5,
                delay: 0,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0,
                options: .curveEaseInOut,
                animations: {
                    self.mainViewController.view.frame.origin.x = self.mainViewController.view.frame.width - 140
                })
            { (finished) in
            
                }
        
        } else  {
            
            //close animation
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 1,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            
                           self.mainViewController.view.frame.origin.x = 0
                            
            }) { (finished) in
                
                self.leftMenuViewController.willMove(toParent: nil)
                self.leftMenuViewController.view.removeFromSuperview()
                self.leftMenuViewController.removeFromParent()

            }
            
        }
    }


    //delegate left menu
    func toggleMenu() {
        
        if !isMove {
            configureMenuViewController()
        }
        
        isMove = !isMove
        showMenuViewController(shoudMove: isMove)
    }

}
