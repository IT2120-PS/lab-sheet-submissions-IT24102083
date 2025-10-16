setwd("C:/SLIIT/IT2120 PS/Labs/Lab 10")

# Exercise 1

# A vending machine owner claims that customers choose the four snack types
# (A, B, C, D) with equal probability.

# i. State the null and alternative hypotheses.

# Null Hypothesis (H0): The probability of customers choosing each snack type is equal.
# That is, P(A) = P(B) = P(C) = P(D) = 0.25.

# Alternative Hypothesis (Ha): At least one snack type has a selection
# probability that is not 0.25.

# ii. Perform a suitable chi-squared test to test the null hypothesis.

observed_counts <- c(120, 95, 85, 100)
probabilities <- c(0.25, 0.25, 0.25, 0.25)

# Perform the Chi-squared goodness-of-fit test.
# This test is suitable because we are comparing observed categorical data against an expected distribution. The command is `chisq.test()`.

test_result <- chisq.test(x = observed_counts, p = probabilities)

# Print the results of the test.
print(test_result)

# iii. Give your conclusions based on the results.

# We will use a standard significance level of 5%.
# The p-value = 0.0896.

# Decision Rule: If the p-value is less than 0.05, we reject the null hypothesis.
# If it is greater than 0.05, we do not reject the null hypothesis.

# Conclusion: Since the p-value (0.0896) is greater than our significance level of 0.05,
# we do not reject the null hypothesis.
# Therefore, there is not enough statistical evidence to reject the owner's claim.
# We can conclude that the data is consistent with the claim that customers choose all four snack types with equal probability.