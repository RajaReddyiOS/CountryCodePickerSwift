//
//  CountryCodes.swift
//  COGCONS
//
//  Created by Raja on 23/02/18.
//  Copyright © 2018 Cogcons. All rights reserved.
//

import Foundation

class CountryCodes:NSObject {

    static let sharedInstance = CountryCodes()
    
    override init() {
        super.init()
    }
    
    public func getAllCountryCodes() -> [Countries]? {
        
        if let path = Bundle(for: CountryCodes.self).url(forResource: "CountryCodes", withExtension: "plist") {
            
            do {

                guard let dict = NSDictionary(contentsOf: path) else {return nil}
                
                let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
                if let str = String(data: jsonData, encoding: String.Encoding.utf8) {
                    
                    if let data = str.data(using: .utf8) {
                        let decodedCountries = try JSONDecoder().decode(CountryCodeModel.self, from: data)
                        return decodedCountries.countries
                    }
                }
            }catch let error {
                print("error : ", error)
            }
        }
        return nil
    }
}



