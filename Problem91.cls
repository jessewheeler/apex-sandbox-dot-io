public static String reverseWords(String str){
    List<String> words = str.split(' ');
    for (Integer i = 0; i < words.size(); i++) {
        words[i] = words[i].reverse();
    }
    return String.join(words, ' ');
}
