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
                        .fontWeight(.black)
                        .foregroundColor(Color.gray)
                        .bold()
                        .textCase(/*@START_MENU_TOKEN@*/.lowercase/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Frase: ")
                    .bold()
                Text("Problema em dobro")
            }
            
            HStack {
                Image("figura_01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                VStack {
                    HStack{
                        Image(systemName: "lifepreserver")
                            .foregroundColor(Color.green)
                            .font(.system(size: 30))
                        Text("Vidas:")
                        Spacer()
                        Text("2")
                    }
                    HStack{
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .font(.system(size: 30))
                        Text("Potência:")
                        Spacer()
                        Text("60%")
                    }
                }
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
