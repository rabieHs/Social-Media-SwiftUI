//
//  TopBar.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        VStack{
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                }
                Spacer()
                Text("@")
                    .bold()
                    .font(.system(size: 20))
                    .padding(.trailing)
                Spacer()
                
            }
            .padding()
            
            Divider()
                
        }
    }
}

#Preview {
    TopBar()
}
