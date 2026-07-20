class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var characters: String = ""
        for ch in s {
            if ch.isLetter || ch.isNumber {
                characters.append(ch.lowercased())
            }
        }

        return characters == String(characters.reversed())
    }
}
