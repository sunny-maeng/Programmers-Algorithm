//
//  10872 재귀 팩토리얼.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2023/01/03.

// 팩토리얼계산
// https://www.acmicpc.net/problem/10872

import Foundation

//let input = Int(readLine()!)!

func factorial(_ number: Int) {
    var answer: Int = 1
    
    guard number != 0 else {
        print (1)
        return
    }
    
    for number in 1...number {
        answer = number * answer
    }
    
    print(answer)
}

//factorial(input)
