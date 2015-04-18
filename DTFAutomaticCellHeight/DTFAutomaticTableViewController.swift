//
//  DTFAutomaticTableViewController.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/18/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import UIKit

class DTFAutomaticTableViewController: UITableViewController {

    // MARK: - Constants
    private let kCellIdentifier = "CellIdentifier"
    private let countries = CountryDatasource.countries()
    private let segueIdentifier = "CountryDetails"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**
        * Providing a rough estimate for each rows height. The closer to accurate the better
        */
        tableView.estimatedRowHeight = 166.0
        tableView.rowHeight = UITableViewAutomaticDimension

        /**
        * Registering the UITableViewCell class so instances can be dequeued as needed
        */
        tableView.registerClass(DTFAutomaticTableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
    }
    
    // MARK: - UITableViewDatasource instance methods (UITABLEVIEWDATASOURCE)
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath: indexPath) as! DTFAutomaticTableViewCell
        cell.country = countries[indexPath.row]
        return cell
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == segueIdentifier {
            let controller = segue.destinationViewController as! DTFAutomaticDetailsViewController
            controller.country = sender as? Country
        }
    }
}

// MARK: - UITableViewDelegate
extension DTFAutomaticTableViewController: UITableViewDelegate {

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let country = countries[indexPath.row]
        performSegueWithIdentifier(segueIdentifier, sender: country)
    }
}
