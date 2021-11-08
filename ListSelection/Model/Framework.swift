//
//  Framework.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 07..
//

import Foundation

struct Framework: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

extension Framework {
    static let frameworks: [Framework] = [
        Framework(name: "UIKit"),
        Framework(name: "Core Data"),
        Framework(name: "Cloud Kit"),
        Framework(name: "SwiftUI"),
    ]
}
