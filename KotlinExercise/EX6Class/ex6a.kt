class Rectangle(val length: Double, val width: Double) {

    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    println("Enter the length of the rectangle:")
    val length = readLine()?.toDoubleOrNull()

    println("Enter the width of the rectangle:")
    val width = readLine()?.toDoubleOrNull()

    if (length != null && width != null) {
        val rectangle = Rectangle(length, width)

        val perimeter = rectangle.calculatePerimeter()
        val area = rectangle.calculateArea()

        println("Perimeter: $perimeter")
        println("area: $area")
    } else {
        println("invalid input")
    }
}