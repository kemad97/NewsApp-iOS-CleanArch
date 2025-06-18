//
//  NewsApp_CleanArchApp.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import SwiftUI
import SwiftData

@main
struct NewsApp_CleanArchApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        
        let remoteDataSource = RemoteArticleDataSource()
        let repo = ArticleRepositoryImpl(remoteDataSource: remoteDataSource)
        let useCase = GetArticlesUseCaseImpl(repository: repo)
    
        let viewModel = ArticleViewModel(getArticlesUseCase: useCase)
        
        WindowGroup{
            ArticleListView(articleVM: viewModel)
        }
    }
}
