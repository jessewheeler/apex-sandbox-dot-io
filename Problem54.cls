public Boolean companionPlants(String plant1, String plant2) {
    Map<String, Set<String>> companions = new Map<String, Set<String>>{
        'lettuce' => new Set<String>{'onions','cucumbers'},
        'onions' => new Set<String>{'carrots','tomatoes','lettuce'},
        'cucumbers' => new Set<String>{'lettuce'},
        'carrots' => new Set<String>{'onions'},
        'tomatoes' => new Set<String>{'onions'}
    };
    return companions.get(plant1.toLowerCase()).contains(plant2.toLowerCase());
}
