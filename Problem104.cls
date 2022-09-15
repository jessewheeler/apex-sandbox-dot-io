public boolean isAnagram(String s1, String s2) {
    Boolean isAnagram = s1 != null && s2!= null && s1.length() == s2.length();
    if (isAnagram) {
        List<String> explodedStringOne = new List<String>(s1.toLowercase().split(''));
        List<String> explodedStringTwo = new List<String>(s2.toLowercase().split(''));
        explodedStringOne.sort();
        explodedStringTwo.sort();
        while (isAnagram && explodedStringOne.size() > 0) {
            isAnagram = explodedStringOne.remove(0).equals(explodedStringTwo.remove(0));
        }
    }
    return isAnagram;
}
