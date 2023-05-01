//
//  FigurinhasLinhaView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct FigurinhasLinhaView: View {
    
    var figura: Figura
    var cor: Color = .gray
    
    var body: some View {
        HStack {
            Image(figura.imagem+"_p")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .background(cor)
                .containerShape(Circle())
            Text(figura.nome)
        }
    }
}

struct FigurinhasLinhaView_Previews: PreviewProvider {
    static var previews: some View {
        FigurinhasLinhaView(figura: figuras[0])
    }
}
