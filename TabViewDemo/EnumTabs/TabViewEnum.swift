//
//----------------------------------------------
// Original project: TabViewDemo
// by  Stewart Lynch on 2025-01-28
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

enum TabViewEnum: Identifiable, CaseIterable, View {
    case home, wineList, shoppingCart, info, directions
    var id: Self { self }
    
    var tabItem: TabItem {
        switch self {
            case .home:
                    .init(name: "Welcome", systemImage: "house")
            case .wineList:
                    .init(name: "Wine List", systemImage: "wineglass")
            case .shoppingCart:
                    .init(name: "Cart", systemImage: "cart")
            case .info:
                    .init(name: "About Us", systemImage: "info")
            case .directions:
                    .init(name: "Directions", systemImage: "map")
        }
    }
    
    var body: some View {
        switch self {
            case .home:
                Home()
            case .wineList:
                WineList()
            case .shoppingCart:
                ShoppingCart()
            case .info:
                AboutUs()
            case .directions:
                Directions()
        }
    }
}
