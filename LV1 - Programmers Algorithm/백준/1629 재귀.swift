//
//  1629 재귀.swift
//  LV1 - Programmers Algorithm
//
//  Created by 맹선아 on 2022/12/26.

//곱셈
//A를 B번 곱한 수를 C로 나눈 나머지
// https://www.acmicpc.net/problem/1629

let input1629 = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = input1629[0]
let B = input1629[1]
let C = input1629[2]

func generateRemain(A: Int, B: Int, C: Int, answer: Int = 1) {
    if B == 0 {
        print(answer)
        return
    }
    
    
    if B % 2 == 0 {
        if A < 10000 {
            generateRemain(A: A * A, B: B/2, C: C, answer: answer)
        } else {
            generateRemain(A: A, B: B - 1, C: C, answer: A * answer % C)
        }
    } else {
        generateRemain(A: A, B: B - 1, C: C, answer: A * answer % C)
    }
}

//generateRemain(A: A, B: B, C: C)
