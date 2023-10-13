//
//  SliderView.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

struct SliderView: View {
    let slider:SliderModel
    var body: some View {
        Image(slider.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
//        Text(slider.type )
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(slider: slidersArray[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
