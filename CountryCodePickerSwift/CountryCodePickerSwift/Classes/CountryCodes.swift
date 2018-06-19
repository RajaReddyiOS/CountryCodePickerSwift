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
            print("path : ", path)
            
            do {
                let data = try Data(contentsOf: path, options: Data.ReadingOptions.dataReadingMapped)
                
                
                let dictData =  try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]

                print("dictionary: ",dictData)
                
                let decodedCountries = try JSONDecoder().decode(CountryCodeModel.self, from: data)
                print("data: ",decodedCountries)
                
            }catch let error {
                print("error : ", error)
            }
            
        }
        
        
        
        
        
        if let path = Bundle.main.path(forResource: "CountryCodes", ofType: "plist") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                do {
                    let decodedCountries = try JSONDecoder().decode(CountryCodeModel.self, from: data)
                    return decodedCountries.countries
                } catch {
                    print(error)
                }
            } catch let error {
                print("can't convert exception: ",error)
            }
        }
        return nil
    }
}



