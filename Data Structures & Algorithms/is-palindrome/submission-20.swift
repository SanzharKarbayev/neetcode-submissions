class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let characters = Array(s)
        var left = 0
        var right = s.count - 1
        while left < right {
            while left < right && !characters[left].isLetter && !characters[left].isNumber {
                left += 1 // skip non-alphanumeric characters from left pointer
            }

            while left < right && !characters[right].isLetter && !characters[right].isNumber {
                right -= 1 // skip non-alphanumeric characters from right pointer
            }

            if characters[left].lowercased() != characters[right].lowercased() {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
