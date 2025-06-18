//
//  ArticleViewModel.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import Foundation

@MainActor //if you use @MainActor. It ensures all UI-related updates happen on the main thread automatically, including @Published properties.
class ArticleViewModel : ObservableObject {
    @Published var articles : [Article] = []
    
    private let getArticlesUseCase: GetArticlesUseCase
    
    init( getArticlesUseCase: GetArticlesUseCase) {
        self.getArticlesUseCase = getArticlesUseCase
    }
    
    func loadArticles() async {
        
        do{
            let fetchedArticles = try await getArticlesUseCase.execute()
            DispatchQueue.main.async {
                self.articles = fetchedArticles
            }
        }
        catch{
            print("failed")
        }
    }
    
    func addArticle() {
        
        articles.append(Article(id: UUID(), title: "added", content: "....."))
    }
}
