/*
 Question - All Paths From Source to Target
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3400/
 */

class Solution {
  func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    dfs(graph, 0, [0], &result)
    return result
  }
  
  func dfs(_ graph: [[Int]],_ index: Int,_ path: [Int],_ result: inout [[Int]]) {
    if index == graph.count - 1{
      result.append(path)
      return
    }
    
    for node in graph[index]{
      var path = path
      path.append(node)
      dfs(graph, node, path, &result)
    }
  }
}
