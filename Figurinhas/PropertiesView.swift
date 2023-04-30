//
//  PropertiesView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct PropertiesView: View {
    
    var imagem = "lifepreserver"
    var nome = "Vidas: "
    var valor = "2"
    var cor = Color.green
    
    var body: some View {
        HStack{
            Image(systemName: imagem)
                .foregroundColor(cor)
                .font(.system(size: 30))
                .frame(width: 30.0)
            Text(nome)
            Text(valor)
                .padding(.trailing)
        }
    }
}

struct PropertiesView_Previews: PreviewProvider {
    static var previews: some View {
        PropertiesView()
    }
}
