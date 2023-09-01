//
//  CartManagerViewModel.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 9/1/23.
//

import Foundation


final class CartManagerViewModel: ObservableObject {
    
    @Published private(set)  var items: [Item] = []
    @Published private(set)  var total: Double = 0
    
    func addToCart(item: Item){
        items.append(item)
        total += item.price
    }
    
    func removeFromCart(item: Item){
        items = items.filter{$0.id != item.id}
        total -= item.price
    }
    
}
