//
//  MenuItem.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct MenuButton: View {
    
    var title: String
    var imageName: String
    
    var body: some View {
        HStack(spacing:15){
            Image(systemName: imageName)
                .font(.system(size: 24))
            Text(title)
            Spacer()
        }
        .padding(.vertical,12)
    
    }
}

#Preview {
    MenuButton(title: "Profile", imageName: "person")
}
