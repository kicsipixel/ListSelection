//
//  ContentView.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 07..
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: String?
    @State var selectionArray: Set<Framework> = []
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    NavigationLink(
                        destination: FrameworksListView(selection: $selection, selectionArray: $selectionArray),
                        label: {
                            Text("Favorite Framework")
                        })
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.1)
                .listStyle(PlainListStyle())
                
                ForEach(Array(selectionArray)) { framework in
                    Text("\(framework.name)")
                }
                
                
                DisclosureGroup(
                    content: {
                        Text(selection ?? "You haven't selected anything from the list yet.")
                            .font(.footnote)
                            .padding()
                    },
                    label: {
                        HStack {
                            Text("Choosen framework")
                            Spacer()
                            Text(selection ?? "")
                        }
                    }
                )
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Favorites")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
