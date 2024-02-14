//
//  Coordinator.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 12/02/24.
//

import Foundation
import SwiftUI

class Coordinator: ObservableObject 
{
    @Published var path = NavigationPath()
    
    func gotoHomePage() {
        path.removeLast(path.count)
    }
    
    func tapOnEnter() {
        path.append(DestinoCadastro.banco)
    }
    
    func tapOnFirstPage() {
        path.append(DestinoCadastro.conta)
    }
    
    func tapOnSecondPage() {
        path.removeLast()
    }
    
    func tapOnAdd()
    {
        path.append(DestinoCadastro.banco)
    }
}

