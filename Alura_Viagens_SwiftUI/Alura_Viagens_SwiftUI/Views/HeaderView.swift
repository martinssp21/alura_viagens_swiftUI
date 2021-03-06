//
//  HeaderView.swift
//  Alura_Viagens_SwiftUI
//
//  Created by Rodrigo Martins on 31/03/20.
//  Copyright © 2020 Rodrigo Martins. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
   
    var isCompact: Bool
     
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack{
                // MARK: - Header
                VStack {
                    Text("alura viagens")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: self.isCompact ? 20 : 30))
                        .padding(.top, self.isCompact  ? 50 : 90)
                    
                    Text("ESPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: self.isCompact  ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: self.isCompact  ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: self.isCompact  ? 200 : 310, alignment: .top)
                .background(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.isCompact ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: self.isCompact ? 100 : 150, height: self.isCompact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: self.isCompact  ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self.isCompact ? 17 : 24))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: self.isCompact ? 100 : 150, height: self.isCompact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: self.isCompact ? -50 : -view.size.width/4)
                }
                .offset(y: self.isCompact ? -25 : -37.5)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(isCompact: true)
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            
            HeaderView(isCompact: false)
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 830, height: 310))
        }
        
    }
}
