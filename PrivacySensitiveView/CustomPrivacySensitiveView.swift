//
//  CustomPrivacySensitiveView.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//

import SwiftUI

struct CustomPrivacySensitiveView: View {
    
    var body: some View {
        VStack {
            Text("This is a normal text")
                .font(.title2)
            HStack {
                Image(systemName: "checkmark.shield")
                Text("This is a privacy sensitive data")
            }
            .font(.headline)
            .privacyBlur()
        }
        .navigationTitle("Custom Blur")
    }
}

struct CustomPrivacyBlur: ViewModifier {
    
    @Environment(\.scenePhase) var scenePhase
    
    func body(content: Content) -> some View {
        content
            .blur(radius: (scenePhase != .active ? 10 : 0))
            .animation(.default, value: scenePhase)
    }
}

extension View {
    
    public func privacyBlur() -> some View {
        modifier(CustomPrivacyBlur())
    }
}
