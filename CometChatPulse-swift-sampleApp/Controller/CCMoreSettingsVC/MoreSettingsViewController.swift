//
//  MoreSettingsViewController.swift
//  CometChatUI
//
//  Created by Admin1 on 19/11/18.
//  Copyright © 2018 Admin1. All rights reserved.
//

import UIKit

class MoreSettingsViewController: UIViewController {

    //Outlets Declarations
    
    //Variable Declarations
    
    //This method is called when controller has loaded its view into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //Function Calling
        self.handleMoreSettingsVCAppearance()
    }
    
    //This method handles the UI customization for MoreSettingsVC
    func  handleMoreSettingsVCAppearance(){
        
        // ViewController Appearance
        self.hidesBottomBarWhenPushed = true
        
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        } else {
            
        }
        
        // NavigationBar Buttons Appearance
        
        let backButtonImage = UIImageView(image: UIImage(named: "back_arrow"))
        backButtonImage.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        let backBTN = UIBarButtonItem(image: backButtonImage.image,
                                      style: .plain,
                                      target: navigationController,
                                      action: #selector(UINavigationController.popViewController(animated:)))
        navigationItem.leftBarButtonItem = backBTN
        backBTN.tintColor = UIColor.white
        navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate

    }
}
