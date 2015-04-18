//
//  DTFAutomaticDetailsViewController.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/19/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import UIKit

class DTFAutomaticDetailsViewController: UIViewController {

    // MARK: - Variables
    var country: Country?

    // MARK: - IBOutlets
    @IBOutlet private weak var countryTitle: UILabel!
    @IBOutlet private weak var countryDescription: UILabel!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("Country Details", comment: "")

        if let country = country {
            countryTitle.text = country.countryTitle
            countryDescription.text = country.countryDescription
        }
    }
}
