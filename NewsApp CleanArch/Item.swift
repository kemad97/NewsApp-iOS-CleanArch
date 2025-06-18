//
//  Item.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
