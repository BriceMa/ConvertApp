//
//  ConvertController.swift
//  convert
//
//  Created by Brice on 30/01/2019.
//  Copyright © 2019 Brice Mangeat. All rights reserved.
//

import UIKit

class ConvertController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var entryView: UIView!
    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var viewResult: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var type: String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        guard let choix = type else { return }
        titleLabel.text = "Convertisseur de " + choix
    }
    
    

    @IBAction func changeButton(
        _ sender: Any) {
    }
    
    @IBAction func backAction(
        _ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func textChanged(
        _ sender: Any) {
    }
}
