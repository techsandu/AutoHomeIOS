//
//  ElecContentView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct ElecContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
//            ElecBarView()
            CommonAddNavBar()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            ElecListView()
        })
        .background(colorBackground)
        .ignoresSafeArea(.all,edges: .all)
    }
}

struct ElecContentView_Previews: PreviewProvider {
    static var previews: some View {
        ElecContentView()
    }
}
