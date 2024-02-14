//
//  ViewFactory.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 12/02/24.
//

import Foundation
import SwiftUI

class ViewFactory 
{
    @ViewBuilder
    static func viewForDestination(_ destination: DestinoCadastro) -> some View 
    {
        switch destination 
        {
        case .banco:
            TelaLista()
        case .conta:
            TelaAdd()
        case .cartao:
            TelaLista()
        case .receita:
            TelaLista()
        case .despesa:
            TelaLista()
        }
    }
}

class ViewFactoryLista
{
    @ViewBuilder
    static func viewForDestination(_ destination: DestinoGerenciaLista) -> some View
    {
        switch destination
        {
        case .lista:
            TelaLista()
        case .adicao:
            TelaAdd()
        case .edicao:
            TelaLista()
        case .exclusao:
            TelaLista()
        }
    }
}
