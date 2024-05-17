fun factorial(n: Int): Int {
    return if (n == 0) {
        1
    } else {
        n * factorial(n - 1)
    }
}
fun main(){
    println("Enter your number")
val number = readLine()!!.toInt()
val result = factorial(number)
println("Factorial of $number: $result")
}
// Example usage:
