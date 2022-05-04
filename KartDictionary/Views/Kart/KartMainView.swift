//
//  KartMainView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct KartMainView: View {
    let engineArr = ["PRO", "SR", "Z7", "HT", "NEW", "JIU(9)", "X", "V1", "R"]
    var body: some View {
        VStack{
            ForEach(engineArr, id: \.self){engine in
                NavigationLink(destination: KartDetailView(engine: engine),
                               label: {KartEngineList(engine: engine)})
            }
            Spacer()
        }
        
    }
}

struct KartMainView_Previews: PreviewProvider {
    static var previews: some View {
        KartMainView()
    }
}
