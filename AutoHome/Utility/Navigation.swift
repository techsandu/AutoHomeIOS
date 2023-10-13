//
//  Navigation.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import Foundation

class Navigation:ObservableObject{
    @Published var showCategory:Bool = false
    @Published var selectCategpry:CategoryModel? = nil
    @Published var curren:Int = 0
    @Published var navTitle:String = ""
    @Published var path = [String]()
}


