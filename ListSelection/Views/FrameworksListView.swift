//
//  FrameworksListView.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 07..
//

import SwiftUI

struct FrameworksListView: View {
    
    @Binding var selection: String?
    @Binding var selectionArray: Set<Framework>
    
    var body: some View {
        List(selection: $selection) {
            ForEach(Framework.frameworks, id:\.self) { framework in
                SelectionRow(framework: framework, selection: $selection, selectionArray: $selectionArray)
            }
        }
    }
}

/*
struct FrameworksListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView(selection: .constant("UIKit"), selectionArray: ["UIKit"])
            .previewLayout(.sizeThatFits)
    }
}
*/
