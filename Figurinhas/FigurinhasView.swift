//
//  FigurinhasView.swift
//  Figurinhas
//
//  Created by Marcio Curvello on 30/04/23.
//

import SwiftUI

struct FigurinhasView: View {
    
    var body: some View {
        
        List(figuras){
            figura in
            NavigationLink(destination:
                            FigurinhaDetailView(figura: figuras[0])){
                HStack {
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(Color.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
            }
        }
        .navigationTitle("Figuras")
    }
}

struct FigurinhasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurinhasView()
    }
}
