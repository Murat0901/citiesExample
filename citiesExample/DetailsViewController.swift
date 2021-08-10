//
//  DetailsViewController.swift
//  citiesExample
//
//  Created by Murat Menzilci on 9.08.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var chosenCity : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLabel.text = chosenCity?.city
        countryLabel.text = chosenCity?.country
        imageView.image = chosenCity?.img

        // Do any additional setup after loading the view.
    }


}
