/*
 Question - Add Binary
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3395/
 */

class Solution {
  func addBinary(_ a: String, _ b: String) -> String {
    var aString = a, bString = b, carry = 0, result = ""
    while !aString.isEmpty || !bString.isEmpty || carry > 0{
      let x = Int(aString.isEmpty ? "0" : String(aString.removeLast()))!
      let y = Int(bString.isEmpty ? "0" : String(bString.removeLast()))!
      let sum = x + y + carry
      result = String(sum % 2) + result
      carry = sum / 2
    }
    return result
  }
}
