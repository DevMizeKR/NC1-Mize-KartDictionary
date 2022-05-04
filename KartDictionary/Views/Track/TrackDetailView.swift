//
//  TrackDetailView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/03.
//

import SwiftUI

struct TrackDetailView: View {
    
    var themename: String
    @State var trackmode:String = "speed"
    @State private var searchText = ""
    
    var body: some View {
        VStack{
        Picker(selection: $trackmode, label: Text("Track List")) {
            Text("스피드")
                .tag("speed")
            Text("아이템")
                .tag("item")
        }.pickerStyle(SegmentedPickerStyle())
            .padding()
        
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                if searchText != "" {
                    ForEach(tracks.filter({$0.type == themename})
                        .filter({$0.mode == trackmode})
                        .filter({$0.name.contains(searchText)}), id:\.id) {track in
                            NavigationLink(destination: TrackIntroView(trackData: track), label: {Image(track.imageName)
                                .resizable()
                                .frame(width:175.97, height: 100)})
                    }
                }
                else {
                    ForEach(tracks.filter({$0.type == themename})
                        .filter({$0.mode == trackmode}), id:\.id) {track in
                            NavigationLink(destination: TrackIntroView(trackData: track), label: {Image(track.imageName)
                                .resizable()
                                .frame(width:175.97, height: 100)})
                    }
                }
            }
            .padding()
        }
        }
        .navigationBarTitle(themename)
        .searchable(text:$searchText)
    }
}

struct TrackDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TrackDetailView(themename: "포레스트")
    }
}
