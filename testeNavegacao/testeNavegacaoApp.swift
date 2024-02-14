//
//  testeNavegacaoApp.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 18/01/24.
//

import SwiftUI

@available(macOS 13.0, *)
@main
struct testeNavegacaoApp: App
{
    @ObservedObject var coordinator = Coordinator()
    
    var body: some Scene
    {
        WindowGroup
        {
            NavigationStack(path: $coordinator.path) {
                ContentView()
                    .navigationDestination(for: DestinoCadastro.self) { destination in
                        ViewFactory.viewForDestination(destination)
                    }
                    .environmentObject(coordinator)
            }
        }
    }
}
