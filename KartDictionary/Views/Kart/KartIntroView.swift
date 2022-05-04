//
//  KartIntroView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/04.
//

import SwiftUI

struct KartIntroView: View {
    var kart:Kart
    var body: some View {
        Image(kart.imageName)
            .resizable()
            .frame(width:200, height:150)
            .navigationBarTitle(kart.name)
    }
}

struct KartIntroView_Previews: PreviewProvider {
    static var previews: some View {
        KartIntroView(kart: karts[0])
    }
}
