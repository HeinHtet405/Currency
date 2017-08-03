//
//  Currency.swift
//  Currency
//
//  Created by Hein Htet on 7/20/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import Foundation

class Currency {
    
    var countryName = ""
    var countryImage = ""
    var priceOne = ""
    var priceTwo = ""
    
    init(countryName: String, countryImage: String,priceOne: String, priceTwo: String) {
        self.countryName = countryName
        self.countryImage = countryImage
        self.priceOne = priceOne
        self.priceTwo = priceTwo
    }
}
