func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//Improved version of function that handles optional values gracefully
func calculateAreaWithOptional(width: Double?, height: Double?) -> Double? {
    guard let width = width, let height = height else {
        return nil // Handle the case where either width or height is nil
    }
    return width * height
}

func calculateAreaWithOptional2(width: Double?, height: Double?) -> Double {
    let widthValue = width ?? 0 // Use the nil-coalescing operator to provide a default value if width is nil
    let heightValue = height ?? 0 // Use the nil-coalescing operator to provide a default value if height is nil
    return widthValue * heightValue 
}

let area2 = calculateAreaWithOptional(width: 10, height: 5)
print(area2 ?? 0) //Output: 50.0
let area3 = calculateAreaWithOptional(width: nil, height: 5)
print(area3 ?? 0) // Output: 0

let area4 = calculateAreaWithOptional2(width: 10, height: 5) 
print(area4) //Output: 50.0
let area5 = calculateAreaWithOptional2(width: nil, height: 5) 
print(area5) //Output: 0