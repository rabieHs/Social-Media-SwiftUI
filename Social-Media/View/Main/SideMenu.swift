//
//  SideMenu.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import SwiftUI

struct SideMenu: View {
    @State var showMenuList : Bool = true
    var menuItems = ["Profile","Lists","Topics", "Bookmarks", "Moments"]
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                VStack(alignment:.leading) {
                    AsyncImage(url: URL(string: "https://i.pravatar.cc/100")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60 ,height: 60)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                            .frame(width: 36,height: 36)
                    }
                    
                    HStack(alignment:.top,spacing: 12) {
                        VStack(alignment:.leading,spacing: 12) {
                            Text("Rabie")
                                .font(.title3)
                                .bold()
                                
                            Text("@Rabi3hs")
                                .foregroundStyle(.gray)
                            HStack(spacing:20){
                                FollowView(followCount: 22, title: "Following")
                                FollowView(followCount: 22, title: "Followers")
                            }
                            .padding(.top,10)
                            Divider()
                                .padding(.top,10)
                        }
                    }
                }
               
                Button{
                    withAnimation(.default) {
                        showMenuList.toggle()
                    }
                }label: {
                    Image(systemName:showMenuList ?  "chevron.down" :"chevron.up" )
                }
            }
            VStack(alignment:.leading){
                ForEach(MockData.menuItems){item in
                    MenuButton(title: item.title, imageName: item.imageName)
                }.listStyle(.plain)
                    .listRowSeparator(.hidden)
                Divider()
                
                Button{
                    
                }label: {
                   MenuButton(title: "Settings And Privacy", imageName: "gear")
                }
                Button{
                    
                }label: {
                   Text("Help Center")
                }
              
                    
            }.opacity(showMenuList ? 1 : 0)
                .frame(height: showMenuList ? nil : 0)
                
            if(!showMenuList){
                VStack{
                    Button{
                        
                    }label: {
                        Text("Create New Account")
                    }
                    Button{
                        
                    }label: {
                       Text("Add Existing Account")
                    }
                }
            }
            Spacer()
         
         
        }.padding()
       //     .frame(width: UIScreen.main.bounds.width - 90)
        
    }
}

#Preview {
    SideMenu()
}
