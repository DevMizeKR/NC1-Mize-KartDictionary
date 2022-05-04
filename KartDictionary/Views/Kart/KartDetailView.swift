//
//  KartDetailView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/03.
//

import SwiftUI

struct KartDetailView: View {
    var engine: String
    @State var kartType = "speed"
    var body: some View {
        VStack{
            Picker(selection: $kartType, label: Text("Kart List")) {
                Text("스피드")
                    .tag("speed")
                Text("아이템")
                    .tag("item")
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            ScrollView{
                LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                    ForEach(karts.filter({$0.type == engine})
                        .filter({$0.mode == kartType}), id:\.id) {kart in
                            NavigationLink(destination: KartIntroView(kart:kart), label: {KartListRow(kart:kart)})
                        }
                }.padding()
            }
        }
            .navigationBarTitle("\(engine) 엔진")
    }
}

struct KartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        KartDetailView(engine: "PRO")
    }
}
