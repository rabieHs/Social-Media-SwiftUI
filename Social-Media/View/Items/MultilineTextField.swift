//
//  MultilineTextField.swift
//  Social-Media
//
//  Created by rabie houssaini on 4/7/2024.
//

import SwiftUI

struct MultilineTextField: UIViewRepresentable {
    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator(parent: self)
    }
    
    @Binding var text: String
    func makeUIView(context: Context) -> UITextView {
        let text = UITextView()
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.delegate = context.coordinator
        text.textColor = .gray
        
        return text
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    class Coordinator: NSObject, UITextViewDelegate{
        var parent : MultilineTextField
        
        init(parent: MultilineTextField) {
            self.parent = parent
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
        }
    }
}



#Preview {
    MultilineTextField(text: .constant(""))
}
