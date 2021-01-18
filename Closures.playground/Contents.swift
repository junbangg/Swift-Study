import UIKit

//여기서 10 이상인 숫자만 리스트로 만들어서 반환
let nums = [1,20,3,73,45,2,23,5,13,15,16,20]


// 방법 1
func regularWay(nums: [Int]) -> [Int] {
    var answer = [Int]()
    
    for n in nums{
        if n > 10{
            answer.append(n)
        }
    }
    return answer
}

print(regularWay(nums: nums))


//방법 2
func filterWithPredicateClosure(closure: (Int) -> Bool, numbers : [Int]) -> [Int] {
    var answer = [Int]()
    for num in numbers {
        if closure(num) {
            answer.append(num)
        }
    }
    return answer
}

let filteredList = filterWithPredicateClosure(closure: { (num) -> Bool in
    return num > 10
}, numbers: nums)


//방법 2-1
func greaterThan(num: Int) -> Bool {
    return num > 10
}

let filteredList2 = filterWithPredicateClosure(closure: greaterThan(num:), numbers: nums)
print(filteredList2)



//방법3

let filteredList3 = nums.filter({$0 > 10})
