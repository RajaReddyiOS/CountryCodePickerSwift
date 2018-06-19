//
//  ViewController.swift
//  CountryCodePickerSwiftExample
//
//  Created by Raja on 19/06/18.
//  Copyright © 2018 Cogcons. All rights reserved.
//

import UIKit
import CountryCodePickerSwift

class ViewController: UIViewController {

    let button:UIButton = {
        let btn = UIButton(type: UIButtonType.contactAdd)
        btn.tintColor = UIColor.white
        btn.setTitle("Click Me", for: UIControlState.normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(button)
        button.anchorCenterSuperview()
        
        button.addTarget(self, action: #selector(self.buttonAction), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func buttonAction() {
        
    }

}

