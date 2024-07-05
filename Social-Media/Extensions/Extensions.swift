//
//  Extensions.swift
//  Social-Media
//
//  Created by rabie houssaini on 5/7/2024.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
