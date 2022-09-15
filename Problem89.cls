public Boolean isPalindrome(String str){
    String[] charsForward = str.replaceAll('[^a-zA-Z0-9]', '').toLowercase().split('');
    String[] charsBackward = str.reverse().replaceAll('[^a-zA-Z0-9]', '').toLowercase().split('');
    Boolean isPalindrome = true;
    for (Integer i = 0; i < charsForward.size() && isPalindrome; i++) {
        isPalindrome = charsForward[i].equals(charsBackward[i]);
    }
    return isPalindrome;
}
