//
//  FollowView.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct FollowView: View {
    var followCount : Int
    var title: String
    
    var body: some View {
        HStack{
            Text("\(followCount)")
                .bold()
            Text(title)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FollowView(followCount: 15, title: "Followers")
}
