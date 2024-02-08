//
//  TelaAdd.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 08/02/24.
//

import SwiftUI

struct TelaAdd: View
{
    @Environment(\.dismiss) private var dismiss
    @State var isSaveDisabled = false
    
    var body: some View
    {
        Text("Tela Add")
            .navigationBarBackButtonHidden()
             .toolbar {
                 ToolbarItem(placement: .cancellationAction)
                 { Button("Cancelar") {
                     popView()
                 }}
                 ToolbarItem(placement: .confirmationAction)
                 {
                     Button("OK") {
                         popView()
                     }.disabled(isSaveDisabled)
                 }
             }
    }
    
    func popView()
    {
        dismiss()
    }
}
