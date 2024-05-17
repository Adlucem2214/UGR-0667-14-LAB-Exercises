fun isPalindrome(number: Int): Boolean {
    var reversed = 0
    var remainder: Int
    var original = number

    while (original != 0) {
        remainder = original % 10
        reversed = reversed * 10 + remainder
        original /= 10
    }

    return number == reversed
}
fun main(){
    println("Enter the number you want to check")
    val number = readLine()!!.toInt()
    val isPalindrome = isPalindrome(number)
if (isPalindrome) {
    println("is a palindrome.")
} else {
    println("is not a palindrome.")
}
}

