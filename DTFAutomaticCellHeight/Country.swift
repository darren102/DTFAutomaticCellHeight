//
//  Country.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/18/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import Foundation

class Country: NSObject {
    let countryTitle: String
    let countryDescription: String
    
    init(countryTitle: String, countryDescription: String) {
        self.countryTitle = countryTitle
        self.countryDescription = countryDescription
        super.init()
    }
}
