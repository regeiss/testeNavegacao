//
//  MenuItem.swift
//  testeNavegacao
//
//  Created by Roberto Edgar Geiss on 08/02/24.
//

import Foundation
struct NavigationItem: Identifiable, Hashable
{
    var id = UUID()
    var title: String
    var icon: String
    var menu: DestinoCadastro
}
