//
//  ContactCell.swift
//  Contacts
//
//  Created by John Nik on 11/25/17.
//  Copyright © 2017 johnik703. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    var viewController: ViewController?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        let starButton = UIButton(type: .system)
        starButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        starButton.setImage(#imageLiteral(resourceName: "star"), for: .normal)
        starButton.tintColor = .gray
        starButton.addTarget(self, action: #selector(handleMarkAsFavorites), for: .touchUpInside)
        
        accessoryView = starButton
        
    }
    
    @objc private func handleMarkAsFavorites() {
        
        viewController?.handleFavorite(cell: self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
