//
//  FigurinhaDetailView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct FigurinhaDetailView: View {
    
    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Frase: ")
                    .bold()
                Text("\"\(figura.frase)\"")
            }
            .padding(.leading)
            
            HStack() {
                Spacer()
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                VStack(alignment: .leading) {
                    PropertiesView(valor: .constant(""), valorInt: $figura.vidas, valorDecimal: .constant(1.0), tipo: .numeroInteiro)
                    PropertiesView(imagem: "bolt", nome: "Potência: ", valor: .constant(""), valorInt: .constant(0), valorDecimal: $figura.potencia, cor: .yellow, tipo: .numeroDecimal)
                }
                Spacer()
                
            }
            .padding(30)
            HStack {
                Spacer()
                Text(figura.descricao)
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Button {
                    minhaColecao.figuras.append(figura)
                    minhaColecao.salvar()
                } label: {
                    if minhaColecao.figuras.count == 0 {
                        Text("Adicionar à coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                        } else {
                            Text("Na sua coleção: \(minhaColecao.figuras.count)")
                                .padding()
                                .background(.green)
                               }
                               
                           }
                           .cornerRadius(30.0)
                Spacer()
            }.padding()
           

        }.navigationTitle(Text(figura.nome))
    }
}

struct FigurinhaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FigurinhaDetailView(figura: figuras[0])
    }
}
