public Boolean isPrime(Integer num) {
    Boolean isPrime = true;
    for (Integer i = 2; i <= Math.sqrt(num) && isPrime; i++) {
        isPrime = Math.mod(num, i) != 0;
    }
    return isPrime;
}
