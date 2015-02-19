//
//  DTFAutomaticTableViewCell.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/18/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import UIKit

class DTFAutomaticTableViewCell: UITableViewCell {

    // MARK: - Properties
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    
    var country: Country? {
        didSet { configureCell() }
    }
    
    // MARK: - Initializers
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .None
        accessoryType = .None
        
        setupTitleLabel()
        setupDescriptionLabel()
        setupConstraints()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported on DTFAutomaticTableViewCell")
    }
    
    // MARK: - UITableViewCell-Overridden instance methods (UITABLEVIEWCELL-OVERRIDDEN)
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        descriptionLabel.text = nil
    }
    
    // MARK: - Private
    private func configureCell() {
        if let country = country {
            titleLabel.text = country.countryTitle
            descriptionLabel.text = country.countryDescription
            descriptionLabel.sizeToFit()
        }
    }
    
    private func setupTitleLabel() {
        titleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        titleLabel.textAlignment = .Left
        titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        contentView.addSubview(titleLabel)
    }
    
    private func setupDescriptionLabel() {
        descriptionLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        descriptionLabel.textAlignment = .Left
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        contentView.addSubview(descriptionLabel)
    }
    
    private func setupConstraints() {
        let viewsDictionary = ["title":titleLabel, "description":descriptionLabel]
        let metrics = ["titleHeight" : NSNumber(float: 17.0),
            "leadingMargin" : NSNumber(float: 15.0),
            "trailingMargin" : NSNumber(float: 5.0),
            "verticalSpacing" : NSNumber(float: 8.0)]
        
        // Setup the title label horizontal constraints
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-(leadingMargin)-[title]-(trailingMargin)-|",
            options: NSLayoutFormatOptions(0),
            metrics: metrics,
            views: viewsDictionary))
        
        // Setup the description label horizontal constraints
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-(leadingMargin)-[description]-(trailingMargin)-|",
            options: NSLayoutFormatOptions(0),
            metrics: metrics,
            views: viewsDictionary))
        
        // Setup the title and description label vertical constraints
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-(verticalSpacing)-[title(titleHeight)]-(verticalSpacing)-[description]-(verticalSpacing)-|",
            options: NSLayoutFormatOptions(0),
            metrics: metrics,
            views: viewsDictionary))
    }
}

