class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var leftPointer = s.startIndex
        var rightPointer = s.index(before: s.endIndex)
        while leftPointer < rightPointer {
            while leftPointer < rightPointer && !isAlphaNum(ch: s[leftPointer]) {
                leftPointer = s.index(after: leftPointer)
            }
            
            while leftPointer < rightPointer && !isAlphaNum(ch: s[rightPointer]) {
                rightPointer = s.index(before: rightPointer)
            }
            
            if s[leftPointer].lowercased() != s[rightPointer].lowercased() {
                return false
            }
            
            guard leftPointer < rightPointer else { continue }
            leftPointer = s.index(after: leftPointer)
            rightPointer = s.index(before: rightPointer)
        }
        
        return true
    }

    private func isAlphaNum(ch: Character) -> Bool {
        return ch.isLetter || ch.isNumber
    }
}
