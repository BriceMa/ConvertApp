//
//  ViewController.swift
//  convert
//
//  Created by Brice on 30/01/2019.
//  Copyright © 2019 Brice Mangeat. All rights reserved.
//

import UIKit

let MONEY = "Money"
let TEMPERATURE = "Température"
let MAP = "Distance"

class ViewController: UIViewController
{

    @IBOutlet weak var mapView: UIView!
    @IBOutlet weak var moneyView: UIView!
    @IBOutlet weak var temperatureView: UIView!
    
    let segueID = "Convert"
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == segueID
        {
            if let convertController = segue.destination as? ConvertController
            {
                convertController.type = sender as? String
            }
        }
    }

 
    @IBAction func buttonAction(
        _ sender: UIButton)
    {
        
        switch sender.tag
        {
        case 0: performSegue(withIdentifier: segueID, sender: MAP)
        case 1: performSegue(withIdentifier: segueID, sender: MONEY)
        case 2: performSegue(withIdentifier: segueID, sender: TEMPERATURE)
        default: break
        }
    }

}

