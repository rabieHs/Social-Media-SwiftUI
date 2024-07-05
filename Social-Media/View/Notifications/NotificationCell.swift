//
//  NotificationCell.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct NotificationCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
       
        HStack{
            AsyncImage(url: URL(string: "https://i.pravatar.cc/100")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36,height: 36)
                    .clipShape(Circle())
                
            } placeholder: {
                ProgressView()
                    .frame(width: 36,height: 36)
            }
            VStack(spacing: 5, content: {
                Text("Rabie ")
                    .bold()
                +
                
                Text("Followed You ")
              
                
            })
            Spacer()
        }
       
    }
}

#Preview {
    NotificationCell()
}
