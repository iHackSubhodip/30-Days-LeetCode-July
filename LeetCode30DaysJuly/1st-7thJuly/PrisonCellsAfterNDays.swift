/*
 Question - Prison Cells After N Days
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3379/
 */

class Solution {
    func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
        if cells.count < 2 || N == 0 { return cells }
    
        var cells = cells
        let N = (N-1) % 14 + 1
        for _ in 0..<N { update(&cells) }
        return cells
    }
    
    func update(_ cells: inout [Int]) {
        var dummy = cells
        for i in 0..<cells.count {
            if i == 0 || i == cells.count-1 {
                cells[i] = 0
                continue
            }
            if dummy[i-1] == dummy[i+1] {
                cells[i] = 1
            } else {
                cells[i] = 0
            }
        }
    }
}
