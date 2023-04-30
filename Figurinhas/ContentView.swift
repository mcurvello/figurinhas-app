//
//  ContentView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            NavigationView {
                FigurinhasView()
            }.tabItem {
                Label("Figurinhas", systemImage: "face.smiling")
            }
            
            FigurinhaDetailView(figura: figuras[0])
                .tabItem {
                    Label("Minha coleção", systemImage: "face.dashed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
