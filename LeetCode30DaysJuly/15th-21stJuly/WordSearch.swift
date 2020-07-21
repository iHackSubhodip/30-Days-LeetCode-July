/*
 Question - Word Search
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3397/
 */

class Solution {
  func exist(_ board: [[Character]], _ word: String) -> Bool {
    guard board.count > 0 && board[0].count > 0 else {
      return false
    }
    let m = board.count, n = board[0].count
    var visited = Array(repeating: Array(repeating: false, count: n), count: m), wordContent = Array(word)
    for i in 0..<m{
      for j in 0..<n{
        if board[i][j] == wordContent[0] && dfs(board, wordContent, m, n, i, j, 0, &visited){
          return true
        }
      }
    }
    return false
  }
  
  func dfs(_ board: [[Character]],_ wordContent: [Character],_ m: Int,_ n: Int,_ i: Int,_ j: Int,_ index: Int,_ visited: inout [[Bool]]) -> Bool{
    if index == wordContent.count{
      return true
    }
    guard i >= 0 && i < m && j >= 0 && j < n else {
      return false
    }
    guard !visited[i][j] && board[i][j] == wordContent[index] else { return false }
    visited[i][j] = true
    if dfs(board, wordContent, m, n, i + 1, j, index + 1, &visited) || dfs(board, wordContent, m, n, i - 1, j, index + 1, &visited) || dfs(board, wordContent, m, n, i, j - 1, index + 1, &visited) || dfs(board, wordContent, m, n, i, j + 1, index + 1, &visited){
      return true
    }
    visited[i][j] = false
    return false
  }
}
