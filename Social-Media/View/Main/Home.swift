//
//  Home.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
          
           
                TabView{
                    Feed()
                        .tabItem {
                            Image(systemName: "house")
                        }
                    
                    Search()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                    Notification()
                        .tabItem {
                            Image(systemName: "bell")
                        }
                    Messages()
                        .tabItem {
                            Image(systemName: "paperplane")
                             
                                
                        }
                }
                
               
          
        }
    
    }
}

#Preview {
    Home()
}
