//
//  SelectionRow.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 08..
//

import SwiftUI

struct SelectionRow: View {
    
    let framework: Framework
    @Binding var selection: String?
    
    var body: some View {
        HStack {
            Text("\(framework.name)")
            
            Spacer()
            
            if framework.name == selection {
                Image(systemName: "checkmark")
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            self.selection = framework.name
        }
    }
}

struct SelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectionRow(framework: Framework(name: "NoName"), selection: .constant("NoName"))
    }
}