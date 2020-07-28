/*
 Question - Task Scheduler
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3404/
 */

class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        guard tasks.count > 0 else { return 0 }
        var counter = Array(repeating: 0, count: 26), mostFrequentUniqueChars = 0
        for task in tasks{
            counter[task.asciiValue - Character("A").asciiValue] += 1
        }
        counter.sort()
        let topFrequency = counter[25]
        for i in 0..<26 where counter[i] == topFrequency{
            mostFrequentUniqueChars += 1
        }
        return max(tasks.count, (topFrequency - 1) * (n+1) + mostFrequentUniqueChars)
    }
}

extension Character{
    var asciiValue: Int{
        get{
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
}
