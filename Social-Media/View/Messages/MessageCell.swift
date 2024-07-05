//
//  MessageCell.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct MessageCell: View {
    var body: some View {
        HStack(spacing:15){
            AsyncImage(url: URL(string: "https://i.pravatar.cc/100")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                    .clipShape(Circle())
                
            } placeholder: {
                ProgressView()
                    .frame(width: 60,height: 60)
            }
            VStack(alignment:.leading,spacing: 5,content: {
                HStack{
                    Text("Rabie ")
                        .bold()
                    +
                    
                    Text("@Rabi3hs")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Text("6/20/24")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                  
                }
                Text("You: Hello My Friend")
                    .foregroundStyle(.gray)
                
            })
           
        }
      
    }
}

#Preview {
    MessageCell()
}
