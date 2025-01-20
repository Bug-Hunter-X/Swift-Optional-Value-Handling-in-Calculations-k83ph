func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//This is an example of common error, which happens when we are dealing with optional values.
func calculateAreaWithOptional(width: Double?, height: Double?) -> Double? {
    guard let width = width, let height = height else {
        return nil
    }
    return width * height
}

let area2 = calculateAreaWithOptional(width: 10, height: 5)
print(area2) //Output: Optional(50.0)
let area3 = calculateAreaWithOptional(width: nil, height: 5)
print(area3) // Output: nil