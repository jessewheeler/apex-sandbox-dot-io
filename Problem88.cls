public static Boolean isValid(String s){

    Map<String, String> pairs = new Map<String,String>{
            '(' => ')',
            '{' => '}',
            '[' => ']'
    };

    // if we don't have a multiple of 2 characters, the string isn't balanced
    Boolean valid = Math.mod(s.length(), 2) == 0;
    Stack characterStack = new Stack();
    for (Integer i = 0; i < s.length() && valid; i++) {
        String currentCharacter = s.substring(i, i + 1); // for readability
        if (pairs.containsKey(currentCharacter)) {
            characterStack.push(currentCharacter);
        } else {
            valid = pairs.get((String) characterStack.pop()).equals(currentCharacter);
        }
    }
    return valid;
}

public class Stack {

    List<Object> objects;
    Integer top;

    public Stack() {
        this.objects = new List<Object>();
    }

    public void push(Object s) {
        this.top = this.top == null ? 0 : top + 1;
        this.objects.add(s);
        System.debug(JSON.serializePretty(this.objects));
    }

    public Object pop() {
        System.debug(JSON.serializePretty(this.objects));
        Object o = objects.remove(this.top--);
        return o;
    }

}
