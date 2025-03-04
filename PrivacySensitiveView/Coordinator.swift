//
//  Coordinator.swift
//  PrivacySensitiveView
//
//  Created by Sreekuttan D on 17/2/25.
//

import SwiftUI

enum Page: String, Identifiable {
    
    var id: String { rawValue }
    
    case list
    case privacySensitive
    case redacted
    case custom
}

@Observable
class Coordinator {
    
    var path: NavigationPath = NavigationPath()
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .list:
            ListView()
        case .privacySensitive:
            PrivacySensitiveView()
        case .redacted:
            RedactedView()
        case .custom:
            CustomPrivacySensitiveView()
        }
    }
    
}
