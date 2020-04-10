//
//  ContentView.swift
//  Alura_Viagens_SwiftUI
//
//  Created by Rodrigo Martins on 31/03/20.
//  Copyright © 2020 Rodrigo Martins. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        GeometryReader { view in
            
            VStack {
                HeaderView(isCompact: self.horizontalSizeClass == .compact)
                    .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                
                List(viagens) { viagem in
                    CellViagemView(viagem: viagem, isCompact: self.horizontalSizeClass == .compact)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
