//
//  KartIntroView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/04.
//

import SwiftUI

struct KartIntroView: View {
    var kart:Kart
    let skillArr = ["드리프트", "가속력", "코너링", "부스터 시간", "부스터 충전량"]
    var body: some View {
        VStack{
            Image(kart.imageName)
                .resizable()
                .frame(width:200, height:150)
                .navigationBarTitle(kart.name)
            HStack{
                List(0..<5){index in
                    HStack{
                        Text(skillArr[index])
                        Spacer()
                        Text(String(kart.skill[index]))
                    }
                }
            }
        }
        
    }
}

struct KartIntroView_Previews: PreviewProvider {
    static var previews: some View {
        KartIntroView(kart: karts[0])
    }
}
