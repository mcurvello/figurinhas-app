//
//  FigurinhasApp.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

@main
struct FigurinhasApp: App {
    var body: some Scene {
        
        let minhaColecao = MinhaColecao()
        
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
