//
//  Notification.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct Notification: View {
    var body: some View {
        VStack{
           
                List(0..<9){search in
                    NotificationCell()
                }
                .listStyle(.plain)
           
            
          
        }
    }
}

#Preview {
    Notification()
}
