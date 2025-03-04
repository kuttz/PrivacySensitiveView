//
//  ContentView.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var coordinator = Coordinator()
        
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .list)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
        }
        .environment(coordinator)
    }
}


#Preview {
    ContentView()
}
