class TimeMap {

    private var store: [String: [(timestamp: Int, value: String)]]

    init() {
        store = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        store[key, default: []].append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = store[key] else { return "" }

        var left = 0
        var right = values.count - 1
        while left <= right {
            let mid = left + (right - left) / 2

            if values[mid].timestamp == timestamp {
                return values[mid].value
            }

            if values[mid].timestamp < timestamp {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return right >= 0 ? values[right].value : ""
    }
}
