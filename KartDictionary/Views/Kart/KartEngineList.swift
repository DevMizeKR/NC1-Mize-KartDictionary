//
//  KartEngineList.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/03.
//

import SwiftUI

struct KartEngineList: View {
    var engine: String
    var body: some View {
        HStack{
            Text("\(engine) 엔진")
            Spacer()
            Image(systemName: "chevron.forward")
        }
        .padding()
        .overlay(Rectangle().fill(Color.gray).opacity(0.05)
            .border(Color.gray))
    }
}

struct KartEngineList_Previews: PreviewProvider {
    static var previews: some View {
        KartEngineList(engine:"PRO")
    }
}
