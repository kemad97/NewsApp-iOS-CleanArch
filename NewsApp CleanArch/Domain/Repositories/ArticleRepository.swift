//
//  ArticleRepository.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation
protocol ArticleRepository {
    func fetchArticles() async throws -> [Article]
}
