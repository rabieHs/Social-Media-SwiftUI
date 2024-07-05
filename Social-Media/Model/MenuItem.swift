//
//  MenuItem.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import Foundation

struct MenuItem:Identifiable {
    let id = UUID()
    let title: String
    let imageName : String
    let onTap:()->Void
}
struct MockData{
    
    static let menuItems = [
        MenuItem(title: "Profile", imageName: "person", onTap: {}),
        MenuItem(title: "Lists", imageName: "list.clipboard", onTap: {}),
        MenuItem(title: "Topics", imageName: "lightbulb.min", onTap: {}),
        MenuItem(title: "Bookmarks", imageName: "bookmark", onTap: {}),
        MenuItem(title: "Moments", imageName: "clock", onTap: {})
    ]
}
