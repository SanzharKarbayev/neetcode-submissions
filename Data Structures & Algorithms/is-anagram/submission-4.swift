class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        return dicrionaryWithCharactersCountFor(text: s) == dicrionaryWithCharactersCountFor(text: t)
    }

    private func dicrionaryWithCharactersCountFor(text: String) -> [Character: Int] {
        var dictionary: [Character: Int] = [:]
        for char in text {
            dictionary[char, default: 0] += 1
        }
        return dictionary
    }
}
