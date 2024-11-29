extension String {
    /// Checks if a string is a valid emoji
    var containsEmoji: Bool {
        for scalar in self.unicodeScalars {
            if scalar.properties.isEmoji && (scalar.value > 0x238C) { // Exclude non-graphical symbols
                return true
            }
        }
        return false
    }
}
