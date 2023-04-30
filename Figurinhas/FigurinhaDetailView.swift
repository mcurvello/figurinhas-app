//
//  FigurinhaDetailView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct FigurinhaDetailView: View {
    
    @State var itensNaColecao: Int = 0
    var figura: Figura
    
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
                    PropertiesView()
                    PropertiesView(imagem: "bolt", nome: "Potência: ", valor: "60%", cor: Color.yellow)
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
                               itensNaColecao += 1
                           } label: {
                               if itensNaColecao == 0 {
                                   Text("Adicionar à coleção")
                                       .padding()
                                       .background(.blue)
                                       .foregroundColor(.white)
                               } else {
                                   Text("Na sua coleção: \(itensNaColecao)")
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
