//
//  CellViagemView.swift
//  Alura_Viagens_SwiftUI
//
//  Created by Rodrigo Martins on 31/03/20.
//  Copyright © 2020 Rodrigo Martins. All rights reserved.
//

import SwiftUI

struct CellViagemView: View {
    var viagem: Viagem
    var isCompact: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.isCompact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.isCompact ? 125 : 200)
                .clipped()
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.isCompact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.isCompact ? 14 : 24))
            }
        }
    }
}

struct CellViagemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CellViagemView(viagem: viagens[0], isCompact: true)
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 350, height: 200))
            
            CellViagemView(viagem: viagens[0], isCompact: false)
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 600, height: 300))
        }
    }
}
