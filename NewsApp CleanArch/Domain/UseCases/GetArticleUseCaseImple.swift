//
//  GetArticleUseCaseImple.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

final class GetArticlesUseCaseImpl:GetArticlesUseCase{
    
    private let repository : ArticleRepository
    
    
    init(repository : ArticleRepository){
        self.repository = repository
    }
    
    
    
    func execute() async throws -> [Article] {
        return try await repository.fetchArticles()
    }
    
    
    
}
