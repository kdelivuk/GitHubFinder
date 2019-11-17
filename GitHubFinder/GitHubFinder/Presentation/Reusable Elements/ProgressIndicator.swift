//
//  ProgressIndicator.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 17/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI

struct ProgressIndicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ProgressIndicator>) -> UIActivityIndicatorView {
        let progressIndicator = UIActivityIndicatorView()
        progressIndicator.startAnimating()
        progressIndicator.style = .medium
        return progressIndicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ProgressIndicator>) {
        
    }
}
