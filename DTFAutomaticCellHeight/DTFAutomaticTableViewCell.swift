//
//  DTFAutomaticTableViewCell.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/18/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import UIKit

class DTFAutomaticTableViewCell: UITableViewCell {

    // MARK: - Variables
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.textAlignment = .Left
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        return label
    }()
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.textAlignment = .Left
        label.numberOfLines = 0
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        return label
    }()
    
    var country: Country? {
        didSet { configureCell() }
    }
    
    // MARK: - Initializers
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .None
        accessoryType = .None
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        setupConstraints()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported on DTFAutomaticTableViewCell")
    }
    
    // MARK: - View Life Cycle
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
    
    private func setupConstraints() {
        let viewsDictionary = ["title":titleLabel, "description":descriptionLabel]
        let metrics = ["titleHeight":17.0, "leadingMargin" : 15.0, "trailingMargin" : 5.0, "verticalSpacing" : 8.0]
        
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

