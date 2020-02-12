//
//  CNwsTextView.swift
//  CoinNews
//
//  Created by itsmuffintime on 11.02.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

public struct CNwsTextView: UIViewRepresentable {
  public typealias UIViewType = UITextView
  
  var text: String?
  
  public func makeCoordinator() -> CNwsTextView.Coordinator {
    Coordinator(self)
  }
  
  public func makeUIView(context: Context) -> UITextView {
    let textView = UITextView()
    //textView.isScrollEnabled = false
    //textView.isEditable = false
    //textView.delegate = context.coordinator
    textView.frame = .init(origin: .zero, size: .init(width: 200, height: 100))
    textView.text = text
    return textView
  }
  
  public func updateUIView(_ uiView: UITextView, context: Context) {
    //uiView.text = text
  }
  
  public class Coordinator: NSObject, UITextViewDelegate {
    let parent: CNwsTextView
    
    init(_ textView: CNwsTextView) {
      self.parent = textView
    }
  }
}
