//
//  SearchUserCell.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://i.pravatar.cc/100")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44,height: 44)
                    .clipShape(Circle())
                
            } placeholder: {
                ProgressView()
                    .frame(width: 44,height: 44)
            }
            
            VStack(alignment:.leading){
                Text("Rabie")
                    .fontWeight(.heavy)
                Text("@Rabi3hs")
            }
            

        }.frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    SearchUserCell()
}
