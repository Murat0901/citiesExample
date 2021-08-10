//
//  ViewController.swift
//  citiesExample
//
//  Created by Murat Menzilci on 9.08.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var cityArray = [Cities]()
    var userChoose : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let istanbul = Cities(city: "İstanbul", country: "Türkiye", img: (UIImage(named: "istanbul"))!)
        let london = Cities(city: "London", country: "Englang", img: UIImage(named: "london")!)
        let sanfransisco = Cities(city: "San Fransisco", country: "USA", img: UIImage(named: "sanfransisco")!)
    
        cityArray = [istanbul, london, sanfransisco]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].city
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userChoose = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenCity = userChoose
        }
    }
}

