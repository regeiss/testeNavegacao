//
//  Router.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 25/01/24.
//

import SwiftUI

@available(macOS 13.0, *)
class Router: ObservableObject
{
    @Published var path = NavigationPath()
    
    func reset()
    {
        path = NavigationPath()
    }
}
