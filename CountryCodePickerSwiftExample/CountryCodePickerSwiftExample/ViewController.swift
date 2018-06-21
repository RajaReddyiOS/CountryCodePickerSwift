//
//  ViewController.swift
//  CountryCodePickerSwiftExample
//
//  Created by Raja on 19/06/18.
//  Copyright © 2018 Cogcons. All rights reserved.
//

import UIKit
import CountryCodePickerSwift

class ViewController: UIViewController , CountryCodesDelegate {
    
    @IBOutlet weak var displayLbl:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @IBAction func pushButtonAction(_ sender:Any) {
        let vc = CountryCodesController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func presentButtonAction(_ sender:Any) {
        let vc = CountryCodesController()
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
    func didSelectCountryCode(_ countryName: String, dialingCode: String) {
        print("selected Country name: \(countryName) and dialing code: \(dialingCode)")
        displayLbl.text = "CountryName: \(countryName)\nDialCode: \(dialingCode)"
    }


}

