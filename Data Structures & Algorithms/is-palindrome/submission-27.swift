class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let charArray = Array(s)
        var left = 0
        var right = charArray.count - 1
        while left < right {
            while left < right && !isAlphanumeric(charArray[left]) {
                left += 1
            }

            while left < right && !isAlphanumeric(charArray[right]) {
                right -= 1
            }

            if left >= right {
                return true
            }

            if charArray[left].lowercased() != charArray[right].lowercased() {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }

    private func isAlphanumeric(_ char: Character) -> Bool {
        return char.isNumber || char.isLetter
    }
}
