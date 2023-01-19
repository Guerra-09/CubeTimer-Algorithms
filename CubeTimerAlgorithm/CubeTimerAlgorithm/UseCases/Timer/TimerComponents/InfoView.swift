//
//  InfoView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//
// basico methods: https://www.myrubik.com/elcub3x3x3.php?lang=es

import SwiftUI

struct InfoView: View {
    var body: some View {
        
        ScrollView {
            Text("Informacion basica")
                .font(.title)
                .bold()
            
            Text("Esto va a mostrar los movimientos basicos: L R F U B D")
                .multilineTextAlignment(.center)
                .padding(15)
            
            Text("Tambien se podria dar mas informacion sobre la generacion del scramble")
                .multilineTextAlignment(.center)
                .padding(15)
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
