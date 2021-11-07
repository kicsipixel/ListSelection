//
//  FrameworksListView.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 07..
//

import SwiftUI

struct FrameworksListView: View {
    
    @State var selection: UUID?
    
    var body: some View {
        List(selection: $selection) {
            ForEach(Framework.frameworks, id:\.id) { framework in
                Text("\(framework.name)")
            }
        }
    }
}

struct FrameworksListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView()
            .previewLayout(.sizeThatFits)
    }
}
