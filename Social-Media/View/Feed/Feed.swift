//
//  Feed.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct Feed: View {
    @State private var isShowingAddPost: Bool = false
    
    var body: some View {
        NavigationView{
            
        }.overlay(alignment: .bottomTrailing) {
            Button{
               isShowingAddPost = true
            }label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding()
                    .background(.accent)
                    .foregroundStyle(.background)
                    .clipShape(Circle())
                    .padding()
                   
                
                    
            }
        }.sheet(isPresented: $isShowingAddPost, content: {
            CreatePostView(isShowCreatePost: $isShowingAddPost)
        })
    }
    
}

#Preview {
    Feed()
}
