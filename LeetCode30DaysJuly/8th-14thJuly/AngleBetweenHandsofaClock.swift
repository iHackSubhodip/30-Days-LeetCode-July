/*
 Question - Angle Between Hands of a Clock
 Link - > https://leetcode.com/explore/challenge/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3390/
 */

class Solution {
    func angleClock(_ hour: Int, _ minutes: Int) -> Double {
        let minutes = Double(minutes)
        let hour = Double(hour == 12 ?  0 : hour)
        let shortAnglePerMinute = 360.0 / 60
        let longAnglePerMinute = shortAnglePerMinute / 12
        
        let shortAngle = shortAnglePerMinute * minutes
        let longAngle = longAnglePerMinute * minutes + hour * 30.0
        
        let angle = max(longAngle, shortAngle) - min(longAngle, shortAngle)
        
        return angle <= 180.0 ? angle : 360.0 - angle
    }
}
