//
//  SwiftUIView.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)
let cardDataArray:[CardDataModel] = Bundle.main.decode("CardData.json")
let slidersArray:[SliderModel] = Bundle.main.decode("slider.json")
let categoryArray:[CategoryModel] = Bundle.main.decode("Category.json")
let electDataArray:[ElectDataModel] = Bundle.main.decode("electData.json")
let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem]{
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
