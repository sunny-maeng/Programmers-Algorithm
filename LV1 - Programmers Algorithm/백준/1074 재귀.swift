//
//  1074 재귀.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2022/12/26.
//

// 2N × 2N인 2차원 배열을 Z모양으로 탐색
// 첫째 줄에 정수 N, r, c가 주어진다.
//https://www.acmicpc.net/problem/1074


import Foundation

let input1074 =  readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input1074[0]
let r = input1074[1]
let c = input1074[2]

func searchZ(N: Int, r: Int, c: Int, answer: Int = 0) -> Int {
    let point: (r: Int, c:Int) = (r, c)

    if point == (0, 0) {
        return answer + 0
    } else if point == (0, 1) {
        return answer + 1
    } else if point == (1, 0) {
        return answer + 2
    } else if point == (1, 1) {
        return answer + 3
    }
    
    let half = Int(pow(Double(2), Double(N) - 1))
    
    if point.r < half && point.c < half { //1사분면
        return searchZ(N: N - 1, r: r, c: c, answer: answer)
    } else if point.r < half && point.c >= half { //2사분면
        return searchZ(N: N - 1, r: r, c: c - half, answer: answer + (half * half))
    } else if point.r >= half && point.c < half { // 3사분면
        return searchZ(N: N - 1, r: r - half, c: c, answer: answer + (half * half) * 2)
    } else if point.r >= half && point.c >= half {
        return searchZ(N: N - 1, r: r - half, c: c - half, answer: answer + (half * half) * 3)
    }
    
    return answer
}


