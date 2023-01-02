//
//  10870 재귀 피보나치 수 5.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2023/01/03.
//
// 피보나치 Fn = Fn-1 + Fn-2 (n ≥ 2)가 된다.
// https://www.acmicpc.net/problem/10870

import Foundation

//let input = Int(readLine()!)!

func calculate(_ number: Int, _ preAnswer: Int, _ answer: Int) {
    guard number != 0 else {
        print(preAnswer)
        return
    }

    calculate(number - 1, answer, preAnswer + answer)

}

//calculate(input, 0, 1)
