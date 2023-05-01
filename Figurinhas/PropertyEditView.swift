//
//  PropertyEditView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct PropertyEditView: View {
    
    @Binding var valor: String
    @Binding var valorInt: Int
    @Binding var valorDecimal: Double
    var tipo: PropertyType = .numeroInteiro
    
    var body: some View {
        VStack {
            if tipo == .numeroInteiro {
                Stepper("Valor atual: \(valorInt)", value: $valorInt)
            }
            if tipo == .numeroDecimal {
                Text("Valor atual: \(valorDecimal * 100, specifier: "%.0f")%")
                Slider(value: $valorDecimal)
            }
            if tipo == .texto {
                TextEditor(text: $valor)
            }
            Spacer()
        }
        .padding()
    }
}

struct PropertyEditView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyEditView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(1.0), tipo: .numeroDecimal)
    }
}
