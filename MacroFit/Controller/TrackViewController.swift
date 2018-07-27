//
//  ViewController.swift
//  MacroFit
//
//  Created by jeff hsu on 7/17/18.
//  Copyright © 2018 Jeffrey Hsu. All rights reserved.
//

import UIKit

class TrackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupNavigationBarItems()
    }
    
    private func setupNavigationBarItems() {
        navigationItem.title = "Track"
        
        //setup user bar button item
        let userButton = UIButton(type: .system)
        
        userButton.setTitle("User", for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: userButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

