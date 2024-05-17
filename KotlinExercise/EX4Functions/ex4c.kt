fun hasUniqueCharacters(input: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in input) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }
    return true
}

fun main(){
    println("Input a string ")
   val text = readLine()!!
   val hasUnique = hasUniqueCharacters(text)
   println("Has unique characters: $hasUnique")
}

