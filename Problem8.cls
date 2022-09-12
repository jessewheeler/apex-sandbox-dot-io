public Integer nextPrime(Integer num) {
    Integer nextPrime;
    for (Integer i = num < 0 ? 2 : num + 1; nextPrime == null; i++) {
        nextPrime = isPrime(i) ? i : null;
    } 
    return nextPrime;
}

public static Boolean isPrime(Integer num) {
    Boolean isPrime = true;
    for (Integer i = 2; i <= Math.sqrt(num) && isPrime; i++) {
        isPrime = Math.mod(num, i) != 0;
    }
    return isPrime;
}
