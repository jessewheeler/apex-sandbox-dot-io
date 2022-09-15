public static Integer maxSubArraySum(List<Integer> nums, Integer target){
    Integer solution, sumToEvaluate;
    for (Integer i = 0; i + target <= nums.size(); i++) {
        sumToEvaluate = nums[i];
        for (Integer j = 1; j < target; j++) {
            sumToEvaluate += nums[i + j];
        }
        solution = solution == null || sumToEvaluate > solution ? sumToEvaluate : solution;
    }
    return solution;
}
