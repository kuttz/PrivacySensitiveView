//
//  ListView.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//

import SwiftUI

struct ListView: View {
    
    @Environment(Coordinator.self) var coordinator
    
    var body: some View {
        List {
            Button("Privacy Sensitive") {
                coordinator.push(.privacySensitive)
            }
            Button("Redacted") {
                coordinator.push(.redacted)
            }
            Button("Custom Blur") {
                coordinator.push(.custom)
            }
        }
        .navigationTitle("Implementations")
    }
}

#Preview {
    let coordinator = Coordinator()
    ListView()
        .environment(coordinator)
}
