//
//  AlbertosApp.swift
//  Albertos
//
//  Created by 조영민 on 4/15/25.
//

import SwiftUI

@main
struct AlbertosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MenuList(viewModel: .init(
                    menu: menu,
                    menuGrouping: groupMenuByCategory
                ))
            }
        }
    }
}
