public Integer rockPaperScissors(String player1, String player2) {
    return player1.equalsIgnoreCase(player2) ? 0 
            : WHAT_BEATS_WHAT.get(player1.toLowercase()).equalsIgnoreCase(player2) ? 1 : 2;
}

private static final Map<String, String> WHAT_BEATS_WHAT = new Map<String, String>{
    'paper' => 'rock',
    'scissors' => 'paper',
    'rock' => 'scissors'
};
