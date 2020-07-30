/*
 Question - Word Break II
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/548/week-5-july-29th-july-31st/3406/
 */

class Solution {
  func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
    var cache = [String: [String]]()
    return dfs(s, wordDict, &cache)
  }
  
  func dfs(_ s: String,_ wordDict: [String],_ cache: inout [String: [String]]) -> [String]{
    if s.count == 0{ return [""] }
    if let value = cache[s]{ return value }
    var result = [String]()
    
    for word in wordDict{
      if s.hasPrefix(word){
        let subWordBreaks = dfs(s.substring(from: word.endIndex), wordDict, &cache)
        for subWord in subWordBreaks{
          subWord.isEmpty ? result.append(word) : result.append(word + " " + subWord)
        }
      }
    }
    cache[s] = result
    
    return result
  }
}
