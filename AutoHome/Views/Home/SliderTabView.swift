//
//  SliderTabView.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

struct SliderTabView: View {
    var body: some View {
        TabView{
            ForEach(slidersArray) { slider in
                SliderView(slider: slider)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct SliderTabView_Previews: PreviewProvider {
    static var previews: some View {
        SliderTabView()
    }
}
