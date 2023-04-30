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
    
    @State var apresentado = false
    
    var body: some View {
        Button {
            apresentado = true
        } label: {
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
        .sheet(isPresented: $apresentado) {
            PropertyEditView()
        }

    }
}

struct PropertiesView_Previews: PreviewProvider {
    static var previews: some View {
        PropertiesView()
    }
}
