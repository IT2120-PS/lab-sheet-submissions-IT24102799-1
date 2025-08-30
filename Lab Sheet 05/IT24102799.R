setwd("C:\\Users\\damim\\OneDrive\\Desktop\\IT24102799")

Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE)

names(Delivery_Times)<-"Delivery_Time"
attach(Delivery_Times)

histogram <- hist(Delivery_Time,
                  main = "Histogram for Delivery Times",
                  breaks = seq(20,70,length = 10),
                  right = FALSE,
                  xlab = "Delivery Time (minutes)")

breaks <- histogram$breaks
cum_freq <- cumsum(histogram$counts)

new <- c(0, cum_freq[-length(cum_freq)])
plot(unlist(breaks), c(new, cum_freq[length(cum_freq)]),
     type = 'l',
     main = "Cumulative Frequency Polygon for Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)))
points(unlist(breaks), c(new, cum_freq[length(cum_freq)]), pch = 16)

cbind(upper=breaks,CumFreq =c(new,cum_freq[length(cum_freq)]))
