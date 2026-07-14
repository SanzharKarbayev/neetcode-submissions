class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let characters = Array(s)
        var left = 0
        var right = s.count - 1
        while left < right {
            while left < right && !isAlphaNum(char: characters[left]) {
                left += 1
            }

            while right > left && !isAlphaNum(char: characters[right]) {
                right -= 1
            }

            if characters[left].lowercased() != characters[right].lowercased() {
                return false
            }
            
            left += 1
            right -= 1
        }
        return true
    }

    private func isAlphaNum(char: Character) -> Bool {
        return char.isLetter || char.isNumber
    }
}
