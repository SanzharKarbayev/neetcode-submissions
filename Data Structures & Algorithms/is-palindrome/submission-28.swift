class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else { return true }

        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        while left < right {
            if !isAlphanumeric(s[left]) { 
                left = s.index(after: left)
                continue
            }

            if !isAlphanumeric(s[right]) { 
                right = s.index(before: right)
                continue
            }

            if s[left].lowercased() != s[right].lowercased() {
                return false
            }

            left = s.index(after: left)
            right = s.index(before: right)
        }

        return true
    }

    private func isAlphanumeric(_ char: Character) -> Bool {
        return char.isNumber || char.isLetter
    }
}
