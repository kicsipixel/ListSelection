//
//  ContentView.swift
//  ListSelection
//
//  Created by Szabolcs Tóth on 2021. 11. 07..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    NavigationLink(
                        destination: FrameworksListView(),
                        label: {
                            Text("Favorite Framework")
                        })
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.1)
                .listStyle(PlainListStyle())
                
                DisclosureGroup(
                    content: { Text("Content") },
                    label: { Text("Choosen framework") }
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
