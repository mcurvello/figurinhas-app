//
//  ContentView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack(alignment: .leading) {
            
            Text("Mingle")
                        .font(.title)
                        .bold()
                        .padding()
            HStack {
                Text("Frase: ")
                    .bold()
                Text("\"Problema em dobro\"")
            }
            .padding(.leading)
            
            HStack() {
                Spacer()
                Image("figura_01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "lifepreserver")
                            .foregroundColor(Color.green)
                            .font(.system(size: 30))
                            .frame(width: 30.0)
                        Text("Vidas:")
                        Text("2")
                            .padding(.trailing)
                    }
                    HStack{
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .font(.system(size: 30))
                            .frame(width: 30.0)
                        Text("Potência:")
                        Text("60%")
                    }
                }
                Spacer()
                
            }
            .padding(30)
            HStack {
                Spacer()
                Text("O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
