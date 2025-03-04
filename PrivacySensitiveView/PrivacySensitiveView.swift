//
//  PrivacySensitiveView.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//
import SwiftUI

struct PrivacySensitiveView: View {
    
    var body: some View {
        VStack {
            Text("This is a normal text")
                .font(.title2)
            HStack {
                Image(systemName: "checkmark.shield")
                Text("This is a privacy sensitive data")
            }
            .font(.headline)
            .privacySensitive()
        }
        .navigationTitle("Privacy Sensitive")
    }
}

#Preview {
    PrivacySensitiveView()
}
