//
//  Citites.swift
//  citiesExample
//
//  Created by Murat Menzilci on 9.08.2021.
//

import Foundation
import UIKit

class Cities{
    
    var city : String
    var country : String
    var img : UIImage
    
    init(city: String, country: String, img: UIImage) {
        self.city = city
        self.country = country
        self.img=img
    }
}
