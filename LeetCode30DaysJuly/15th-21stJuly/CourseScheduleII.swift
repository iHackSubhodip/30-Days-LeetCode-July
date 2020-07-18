/*
 Question - Course Schedule II
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3394/
 */

class Solution {
  func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
    var inDegrees = Array(repeating: 0, count: numCourses), graph = [Int: [Int]]()
    var coursesCouldTake = [Int](), queue = [Int]()
    for p in prerequisites{
      graph[p[1], default: []].append(p[0])
      inDegrees[p[0]] += 1
    }
    
    for course in 0..<numCourses{
      if inDegrees[course] == 0{
        queue.append(course)
      }
    }
    
    while !queue.isEmpty{
      let currentCourse = queue.removeFirst()
      coursesCouldTake.append(currentCourse)
      guard let toCourse = graph[currentCourse] else { continue }
      toCourse.forEach{
        inDegrees[$0] -= 1
        if inDegrees[$0] == 0{
          queue.append($0)
        }
      }
    }
    return coursesCouldTake.count == numCourses ? coursesCouldTake: []
  }
}
