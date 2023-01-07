/*
 //https://school.programmers.co.kr/learn/courses/30/lessons/12915
 */

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let first = $0[$0.index($0.startIndex, offsetBy: n)]
        let second = $1[$1.index($1.startIndex, offsetBy: n)]
        
        if first == second {
            return $0 < $1
        } else {
            return first < second
        }
    }
}

// String의 Index를 가져오는 방법으로 Array("abcd")[n] 사용
func solution2(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
