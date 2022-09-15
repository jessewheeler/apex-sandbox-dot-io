public static List<Integer> twoSum(List<Integer> nums, Integer target) {
     // Second Number => Index
     Map<Integer, Integer> solutions = new Map<Integer, Integer>();
     List<Integer> solutionIndexes = new List<Integer>();
     for (Integer i = 0; i < nums.size() && numOneIndex == null && numTwoIndex == null; i++) {
         if (solutions.containsKey(nums[i])) {
             solutionIndexes.add(i);
             solutionIndexes.add(solutions.get(nums[i]));
         } else {
             solutions.put(target - nums[i], i);
         }
     }
     return solutionIndexes;
}
