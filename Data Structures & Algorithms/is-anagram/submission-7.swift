class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var characters: [String.Element: Int] = [:]
        for (sChar, tChar) in zip(s, t) {
            characters[sChar, default: 0] += 1
            characters[tChar, default: 0] -= 1
        }

        return characters.values.allSatisfy { $0 == 0 }
    }
}
