//
//  TweetCellView.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct PostCellView: View {
    var contentText : String
    var postImage : String?
    var body: some View {
        VStack{
            HStack(alignment:.top){
                AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1720091762865-4be05c1a82d8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D")) { image in
                    image.resizable()
                        .frame(width: 55,height: 55)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                VStack(alignment: .leading,spacing: 10){
                    Text("Rabie ")
                        .fontWeight(.bold)
                    + Text("@Rabi3HS")
                        .foregroundStyle(.secondary)
                    Text(contentText)
                        .frame(maxHeight: 100,alignment: .top)
                    if let image = postImage {
                        GeometryReader{ proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: proxy.frame(in: .global).width,height: 250)
                                .clipShape(.rect(cornerRadius: 15))
                            
                        }
                    }
                    HStack(spacing:50){
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble")
                                .foregroundStyle(.gray)
                            
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundStyle(.gray)
                            
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "heart")
                                .foregroundStyle(.gray)
                            
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.up.to.line.circle")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    }
                    .padding(.top,5)
                }
   
            }
        }
    }
}

#Preview {
    PostCellView(contentText: text)
}

var text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries."
