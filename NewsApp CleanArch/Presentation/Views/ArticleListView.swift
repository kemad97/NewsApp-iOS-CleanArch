//
//  ArticleListView.swift
//  NewsApp CleanArch
//
//  Created by Kerolos on 18/06/2025.
//

import SwiftUI




struct ArticleListView: View {
    
    @StateObject var articleVM:ArticleViewModel
    
    var body: some View {
        NavigationView{
            List (articleVM.articles , id: \.id){ article in
                VStack (alignment: .leading){
                    Text (article.title)  .bold()
                    Text(article.content).font(.subheadline).foregroundColor(.gray)
                    
                }
                
            }
            .navigationTitle("News Articles")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        articleVM.addArticle()
                    }, label: {
                        Image(systemName: "plus")
                        
                    })
                    
                }
            }
            .task {
                await articleVM.loadArticles()
            }
        }
        
        
    }
}

