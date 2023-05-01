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
                FigurinhaDetailView(figura: figura)){
                FigurinhasLinhaView(figura: figura)
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
