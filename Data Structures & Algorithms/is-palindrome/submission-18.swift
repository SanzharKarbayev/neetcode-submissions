class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charArray: [String] = []

        for char in s {
            if isAlphaNum(char) {
                charArray.append(char.lowercased())
            }
        }

        return charArray == charArray.reversed()
    }

    private func isAlphaNum(_ char: Character) -> Bool {
        return char.isLetter || char.isNumber
    }
}
