fun main() {
    println("Enter the first number:")
    val num1 = readLine()!!.toDouble()

    println("Enter the second number:")
    val num2 = readLine()!!.toDouble()

    println("Enter the third number:")
    val num3 = readLine()!!.toDouble()

    val largest = if (num1 >= num2) {
        if (num1 >= num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 >= num3) {
            num2
        } else {
            num3
        }
    }

    println("Largest number: $largest")
}