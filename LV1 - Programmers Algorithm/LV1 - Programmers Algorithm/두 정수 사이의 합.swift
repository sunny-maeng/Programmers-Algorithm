//
//  두 정수 사이의 합.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2022/10/11.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    if a <= b {
        let arr = Array(a...b)
        return Int64(arr.reduce(0, +))
    } else {
        let arr = Array(b...a)
        return Int64(arr.reduce(0, +))
    }
}

func solution2(_ a:Int, _ b:Int) -> Int64 {
    return a <= b ? Int64((a+b)*(b-a+1)*1/2) : Int64((a+b)*(a-b+1)*1/2)
}

// 가우스의공식(?) 합공식 = (a+b)*(b-a+1)*1/2
