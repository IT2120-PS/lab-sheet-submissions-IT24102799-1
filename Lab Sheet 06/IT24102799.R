# Parameters
n <- 50
p <- 0.85 #85% 

# X ~ Binomial(n=50, p=0.85)

# (ii) Probability that at least 47 students pass
prob_atleast47 <- sum(dbinom(47:50, size = n, prob = p))
prob_atleast47

# Parameters
lambda <- 12

# (i) Random variable: X = number of calls in an hour
# (ii) Distribution: X ~ Poisson(lambda=12)

# (iii) Probability of exactly 15 calls
prob_15 <- dpois(15, lambda)
prob_15
