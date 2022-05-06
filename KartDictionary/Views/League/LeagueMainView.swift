//
//  LeagueMainView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct LeagueMainView: View {
    @State var leaguemode: String = "person"
    var body: some View {
        Picker(selection: $leaguemode, label: Text("League List")) {
            Text("개인전")
                .tag("person")
            Text("팀전")
                .tag("team")
            Text("공동")
                .tag("both")
        }.pickerStyle(SegmentedPickerStyle())
            .padding()
    }
}

struct LeagueMainView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueMainView()
    }
}
