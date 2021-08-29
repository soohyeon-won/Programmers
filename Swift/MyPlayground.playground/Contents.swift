import UIKit

var str = "Hello, playground"

print("str", str)
solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]])
func solution(_ clothes:[[String]]) -> Int {
    var typeCount: [String:Int] = [:]
    for cloth in clothes {
        if typeCount[cloth[1]] != nil {
            typeCount[cloth[1]]! += 1
        } else {
            typeCount[cloth[1]] = 1
        }

    }
    var count: Int = 1
    print("typeCount : ", typeCount)
    for (_, value) in typeCount {
        print("value : ", value)
        count *= (value + 1)
        
    }
    return count - 1
}
