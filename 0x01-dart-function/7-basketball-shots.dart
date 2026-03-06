int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculateScore(Map<String, int> team) {
    var freeThrows = team['Free throws'] ?? 0;
    var twoPointers = team['2 pointers'] ?? 0;
    var threePointers = team['3 pointers'] ?? 0;

    return (freeThrows * 1) + (twoPointers * 2) + (threePointers * 3);
  }

  int scoreA = calculateScore(teamA);
  int scoreB = calculateScore(teamB);

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreA < scoreB) {
    return 2;
  } else {
    return 0;
  }
}
