//
//  GetArticleUseCase.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

protocol GetArticlesUseCase {
    func execute() async throws ->[Article]
}
