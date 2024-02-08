//
//  TelaLista.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 07/02/24.
//
 
import SwiftUI

struct TelaLista: View
{
    @State var isReadPresented = false
    
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
        .navigationDestination(isPresented: $isReadPresented)
        {
            TelaAdd()
        }
    }
    
    func didTapAdd()
    {
        isReadPresented = true
    }
}
