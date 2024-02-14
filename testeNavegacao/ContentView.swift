//
//  ContentView.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 18/01/24.
//

import SwiftUI

@available(macOS 13.0, *)
struct ContentView: View
{
    var navigationItems = [
        NavigationItem(title: "Compass App", icon: "safari", menu: .banco),
        NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .conta),
        NavigationItem(title: "Radial Layout", icon: "clock", menu: .cartao),
        NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .receita),
        NavigationItem(title: "Gooey Menu", icon: "drop", menu: .despesa)
    ]
    
    var body: some View
    {
        NavigationStack
        {
            List(navigationItems) { item in
                NavigationLink(value: item)
                {
                    Label(item.title, systemImage: item.icon)
                        .foregroundColor(.primary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("SwiftUI apps")
            .navigationBarTitleDisplayMode(.inline)
//            .navigationDestination(for: Destination.self) { destination in
//                            ViewFactory.viewForDestination(destination)
//                        }
            .navigationDestination(for: NavigationItem.self)
            { item in
                switch item.menu {
                case .banco:
                    ViewFactory.viewForDestination(item.menu)
                case .conta:
                    TelaLista()
                case .cartao:
                    TelaLista()
                case .receita:
                    TelaLista()
                case .despesa:
                    TelaLista()
                }
            }
        }
    }
}   
