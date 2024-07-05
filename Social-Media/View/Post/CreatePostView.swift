//
//  CreatePostView.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct CreatePostView: View {
    @Binding  var isShowCreatePost: Bool
    @State var text: String = ""
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    isShowCreatePost = false
                }, label: {
                    Text("Cancel")
                      
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Post")
                       
                })
                .buttonStyle(.bordered)
                .background(.accent)
                .foregroundStyle(.background)
                .clipShape(Capsule())
                
            }
            MultilineTextField(text: $text)
            Spacer()
        }.padding()
    }
}

#Preview {
    CreatePostView(isShowCreatePost: .constant(true))
}
