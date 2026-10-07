class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var characters = Array(repeating: 0, count: 26)
        for sChar in s {
            if let asciiValue = sChar.asciiValue,
            let aAsciiValue = Character("a").asciiValue {
                let index = Int(asciiValue - aAsciiValue) 
                characters[index] += 1
            }
        }

        for tChar in t {
            if let asciiValue = tChar.asciiValue,
            let aAsciiValue = Character("a").asciiValue {
                let index = Int(asciiValue - aAsciiValue)
                characters[index] -= 1

                if characters[index] < 0 {
                    return false
                }
            }
        }
        return true
    }
}
