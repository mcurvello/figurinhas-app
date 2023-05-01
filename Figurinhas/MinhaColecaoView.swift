//
//  MinhaColecaoView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct MinhaColecaoView: View {
    
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        if minhaColecao.figuras.count == 0 {
            Text("Você não tem figuras na sua coleção")
        } else {
            List(minhaColecao.figuras) { figura in
                NavigationLink {
                    FigurinhaDetailView(figura: figura)
                } label: {
                    FigurinhasLinhaView(figura: figura, cor: .green)
                }
            }
        }
    }
}

struct MinhaColecaoView_Previews: PreviewProvider {
    static var previews: some View {
        MinhaColecaoView()
    }
}
