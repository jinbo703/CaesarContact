//
//  ExpandableNames.swift
//  Contacts
//
//  Created by John Nik on 11/25/17.
//  Copyright © 2017 johnik703. All rights reserved.
//

import Foundation
import Contacts

struct ExpandableNames {
    
    var isExpanded: Bool
    var names: [FavoritableContact]
    
}

struct FavoritableContact {
    let contact: CNContact
    var hasFavorited: Bool
}
