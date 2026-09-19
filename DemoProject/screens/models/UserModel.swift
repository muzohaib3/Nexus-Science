//
//  UserModel.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 7/22/26.
//

import Foundation

struct UserModel: Identifiable {
    let id = UUID()  // Add this!
    let name: String
    let email: String
    let phoneNum: String
    
    
}
