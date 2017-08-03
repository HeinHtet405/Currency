//
//  CurrencyCell.swift
//  Currency
//
//  Created by Hein Htet on 7/20/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet weak var countryImage: UIImageView!
    
    @IBOutlet weak var countryName: UILabel!
    
    @IBOutlet weak var priceOne: UILabel!
    
    @IBOutlet weak var priceTwo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
