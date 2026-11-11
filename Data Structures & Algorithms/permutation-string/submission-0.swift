class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let s1Array = Array(s1)
        let s2Array = Array(s2)
        guard s1Array.count <= s2Array.count,
              let aAsciiValue = Character("a").asciiValue
        else { return false }
        let aAscii = Int(aAsciiValue)
        
        var s1Frequency = Array(repeating: 0, count: 26)
        var s2Frequency = Array(repeating: 0, count: 26)
        for i in 0..<s1Array.count {
            s1Frequency[Int(s1Array[i].asciiValue!) - aAscii] += 1
            s2Frequency[Int(s2Array[i].asciiValue!) - aAscii] += 1
        }
        
        var matches = 0
        for i in 0..<26 {
            if s1Frequency[i] == s2Frequency[i] {
                matches += 1
            }
        }
        
        var left = 0
        for right in s1Array.count..<s2Array.count {
            if matches == 26 {
                return true
            }
            
            var index = Int(s2Array[right].asciiValue!) - aAscii
            s2Frequency[index] += 1
            if s1Frequency[index] == s2Frequency[index] {
                matches += 1
            } else if s1Frequency[index] + 1 == s2Frequency[index] {
                matches -= 1
            }
                
            index = Int(s2Array[left].asciiValue!) - aAscii
            s2Frequency[index] -= 1
            if s1Frequency[index] == s2Frequency[index] {
                matches += 1
            } else if s1Frequency[index] - 1 == s2Frequency[index] {
                matches -= 1
            }
                
            left += 1
        }
        
        return matches == 26
    }
}