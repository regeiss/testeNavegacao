//
//  TelaLista.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 07/02/24.
//
 
import SwiftUI

struct TelaLista: View
{
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View
    {
        VStack
        {
            Text("Tela de lista")
        }
        .toolbar { ToolbarItem(placement: .confirmationAction)
        { Button
            {
                didTapAdd()
            }
            label: { Image(systemName: "plus")}}
        }
    }
    
    func didTapAdd()
    {
        coordinator.tapOnAdd()
    }
}
