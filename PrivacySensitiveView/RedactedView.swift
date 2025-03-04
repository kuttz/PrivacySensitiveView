//
//  RedactedView.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//

import SwiftUI

struct RedactedView: View {
    
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        VStack {
            Text("This is a normal text")
                .font(.title2)
            
            if redactionReasons.contains(.privacy) {
                HStack {
                    Image(systemName: "lock.shield")
                    Text("This is data is protected")
                }
            } else {
                HStack {
                    Image(systemName: "checkmark.shield")
                    Text("This is a privacy sensitive data")
                }
            }
        }
        .font(.headline)
        .navigationTitle("Redacted")
    }
}
