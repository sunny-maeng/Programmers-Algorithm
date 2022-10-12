//
//  핸드폰 번호 가리기.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2022/10/12.
//

import Foundation

func solution(_ phone_number:String) -> String {
    var number = ""

    guard phone_number.count > 4 else { return phone_number }

    for _ in 1...(phone_number.count - 4) {
    number.append(contentsOf: "*")
    }

    return number + phone_number.suffix(4)
}


//String(repeating: ,count: ) 사용, suffix로 마지막 네개 사용..
func solution2(_ phone_number:String) -> String {
    return String( String(repeating: "*", count: phone_number.count - 4 ) + phone_number.suffix(4) )
}
