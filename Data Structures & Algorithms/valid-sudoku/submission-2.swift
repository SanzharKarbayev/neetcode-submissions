class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var squares = Array(repeating: Set<Character>(), count: 9)

        for (rowIndex, row) in board.enumerated() {
            for (elementIndex, element) in row.enumerated() {
                guard element != "." else { continue }

                if !rows[rowIndex].insert(element).inserted { return false }
                if !columns[elementIndex].insert(element).inserted { return false }
                let squareIndex = (rowIndex / 3) * 3 + (elementIndex / 3)
                if !squares[squareIndex].insert(element).inserted { return false }
            }
        }

        return true
    }
}
