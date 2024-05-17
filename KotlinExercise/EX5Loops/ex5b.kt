fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }

    var i = 2
    while (i * i <= number) {
        if (number % i == 0) {
            return false
        }
        i++
    }
    return true
}

fun findPrimesInRange(start: Int, end: Int) {
    println("Prime numbers between $start and $end:")
    var current = start
    while (current <= end) {
        if (isPrime(current)) {
            println(current)
        }
        current++
    }
}

fun main(){
    println("Enter the start number")
    val start = readLine()!!.toInt()
    println("Enter the second number")
    val end = readLine()!!.toInt()
    findPrimesInRange(start, end)
}

