//
//  SearchBar.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isEditing : Bool
    var body: some View {
        HStack{
           TextField("Search Text",text: $searchText)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .clipShape(.rect(cornerRadius: 20))
               
                .overlay {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,8)
                    }
                }
            if isEditing {
                Button{
                    isEditing = false
                    searchText = ""
                    UIApplication.shared.endEditing()
                }label: {
                    
                    withAnimation(.bouncy) {
                            Text("Cancel")
                                .transition(.move(edge: .trailing))
                        }
                }
            }
            
        }.onTapGesture {
            isEditing = true
        }
        
       
    }
}

#Preview {
    SearchBar(searchText: .constant(""),isEditing: .constant(false))
}
