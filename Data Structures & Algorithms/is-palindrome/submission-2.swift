class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var finalString = ""
        for char in s.lowercased() {
            if (char >= "a" && char <= "z") || (char >= "0" && char <= "9") {
                finalString.append(char)
            }
        }
        return finalString == String(finalString.reversed())
    }
}