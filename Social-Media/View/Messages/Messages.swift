//
//  Messages.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        VStack{
           
                List(0..<9){search in
                    MessageCell()
                }
                .listStyle(.plain)
           
            
          
        }
    }
}

#Preview {
    Messages()
}
