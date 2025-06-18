//
//  Article.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

struct Article : Identifiable {
    let id: UUID
    let title: String
    let content: String
}
