//
//  DTFAutomaticDetailsViewController.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/19/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import UIKit

class DTFAutomaticDetailsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryDescription: UILabel!
    
    // MARK: - Variables
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Country Details"

        if let country = country {
            countryTitle.text = country.countryTitle
            countryDescription.text = country.countryDescription
        }
    }
}
