//
//  Item.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 9/1/23.
//

import Foundation
import SwiftUI
 

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Double
    let color: Color
}


let itemList = [ Item(name: "Tomato", image: "tomato", price: 4.00,color: Color.red),
                 Item(name: "Potato", image: "potato", price: 2.50,color: Color.brown),
                 Item(name: "Carrot", image: "carrot", price: 3.00,color: Color.orange),
                 Item(name: "Eggplant", image: "eggplant", price: 1.50,color: Color.purple),
                 Item(name: "Cabbage", image: "cabbage", price: 2.00,color: Color.green),
                 Item(name: "Parsley", image: "parsley", price: 1.00,color: Color.green),
                 Item(name: "Egg", image: "egg", price: 5.00,color: Color.red),
                 Item(name: "Chicken", image: "chicken", price: 10.00,color: Color.red),
                 Item(name: "Spinach", image: "spinach", price: 3.00,color: Color.green),
                 Item(name: "Cucumber", image: "cucumber", price: 1.20,color: Color.green),
                 Item(name: "Asparagus", image: "asparagus", price: 5.00,color: Color.green),
                 Item(name: "Capsicum", image: "capsicum", price: 2.00,color: Color.green)]


