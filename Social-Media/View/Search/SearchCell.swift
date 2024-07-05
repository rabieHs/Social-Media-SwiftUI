//
//  SearchCell.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct SearchCell: View {
    var posts  = ""
    var body: some View {
       
        VStack(alignment: .leading,spacing: 5){
            Text("Hello")
                .fontWeight(.heavy)
            Text(posts + " Posts")
                .fontWeight(.light)
            
        }
    }
}

#Preview {
    SearchCell()
}
