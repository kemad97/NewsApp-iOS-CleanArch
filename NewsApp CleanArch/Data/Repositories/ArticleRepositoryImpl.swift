//
//  ArticleRepositoryImpl.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

final class ArticleRepositoryImpl : ArticleRepository {
    private let remoteDataSource : RemoteArticleDataSource
    
    init(remoteDataSource: RemoteArticleDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    
    func fetchArticles() async throws -> [Article] {
        return try await remoteDataSource.fetchArticle()
    }
    
    
}
