//
//  Card.swift
//  Concentration
//
//  Created by David Zeng on 2/18/18.
//  Copyright © 2018 Stanford University. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    var hashValue: Int { return identifier }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 1;
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1;
        return identifierFactory;
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
