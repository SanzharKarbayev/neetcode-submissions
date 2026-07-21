class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var characters: String = ""
        for ch in s {
            if ch.isLetter || ch.isNumber {
                characters.append(ch.lowercased())
            }
        }

        guard !characters.isEmpty else { return true }

        var leftPointer = characters.startIndex
        var rightPointer = characters.index(before: characters.endIndex)
        while leftPointer < rightPointer {
             if characters[leftPointer].lowercased() != characters[rightPointer].lowercased() {
                 return false
             }
            leftPointer = characters.index(after: leftPointer)
            rightPointer = characters.index(before: rightPointer)
         }
         return true
    }
}
