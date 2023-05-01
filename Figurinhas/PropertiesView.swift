//
//  PropertiesView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

enum PropertyType {
    case numeroInteiro
    case numeroDecimal
    case texto
}

struct PropertiesView: View {
    
    var imagem: String = "lifepreserver"
    var nome: String = "Vidas: "
    @Binding var valor: String
    @Binding var valorInt: Int
    @Binding var valorDecimal: Double
    var cor: Color = .green
    var tipo: PropertyType = .numeroInteiro
    
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
                
                if tipo == .texto {
                    Text(valor)
                        .padding(.trailing)
                }
                if tipo == .numeroInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
                if tipo == .numeroDecimal {
                    Text("\(valorDecimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)
                }
                
            }
        }
        .sheet(isPresented: $apresentado) {
            PropertyEditView(valor: $valor, valorInt: $valorInt, valorDecimal: $valorDecimal, tipo: tipo)
        }

    }
}

struct PropertiesView_Previews: PreviewProvider {
    static var previews: some View {
        PropertiesView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(1.0))
    }
}
