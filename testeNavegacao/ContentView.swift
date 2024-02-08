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
    @State var path = NavigationPath(["1", "2"])
    
    var navigationItems = [
        NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
        NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card),
        NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
        NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
        NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
        NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
        NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet),
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
            .navigationDestination(for: NavigationItem.self)
            { item in
                switch item.menu {
                case .compass:
                    TelaLista()
                case .card:
                    TelaLista()
                case .charts:
                    TelaLista()
                case .radial:
                    TelaLista()
                case .halfsheet:
                    TelaLista()
                case .gooey:
                    TelaLista()
                case .actionbutton:
                    TelaLista()
                }
            }
        }
    }
}   
