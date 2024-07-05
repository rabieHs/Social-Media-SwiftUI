//
//  Search.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct Search: View {
    @State var text = ""
    @State var isEditing = false
    var body: some View {
   
       
            VStack{
                SearchBar(searchText: $text, isEditing: $isEditing)
                    .padding(.horizontal)
                if isEditing {
                    List(0..<9){search in
                        SearchUserCell()
                    }
                    .listStyle(.plain)
                }else{
                    List(0..<9){search in
                        SearchCell(posts: String(search))
                    }
                    .listStyle(.plain)
                }
              
            }
        
       
     
        
    }
}

#Preview {
    Search()
}
