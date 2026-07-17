class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows: [Set<Character>] = Array(repeating: Set(), count: 9)
        var cols: [Set<Character>] = Array(repeating: Set(), count: 9)
        var boxes: [Set<Character>] = Array(repeating: Set(), count: 9)

        for (rowIndex, row) in board.enumerated() {
            for (colIndex, cell) in row.enumerated() {
                if cell == "." { continue }

                let boxIndex = (rowIndex / 3) * 3 + (colIndex / 3)
                if rows[rowIndex].contains(cell)
                || cols[colIndex].contains(cell)
                || boxes[boxIndex].contains(cell) {
                    return false
                }

                rows[rowIndex].insert(cell)
                cols[colIndex].insert(cell)
                boxes[boxIndex].insert(cell)
            }
        }
        return true
    }
}
