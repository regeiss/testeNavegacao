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
    var menu: Menu
}

enum Menu: String
{
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
}
