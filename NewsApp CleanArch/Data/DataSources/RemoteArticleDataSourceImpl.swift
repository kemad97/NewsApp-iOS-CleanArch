//
//  RemoteArticleDataSource.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

final class RemoteArticleDataSourceImpl{
    
    func fetchArticle() async throws->  [Article] {
        
        // Simulated API call

       var articlesResponse : [Article] = [
            Article(id: UUID(), title: "iOS 18 is Here", content: "New widgets, AI features..."),
            Article(id: UUID(), title: "WWDC Recap", content: "Everything from Apple’s big event.")
        ]
        
        return articlesResponse
    }
}
