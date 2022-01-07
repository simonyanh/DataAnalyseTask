set.seed(36)
x1 <- c('Patient1', 'Patient2', 'Patient3', 'Patient4', 'Patient5')
x2 = rnorm(5, mean=4, sd=1)
x3 = rnorm(5, mean=3.5, sd=0.5)
x4 = rnorm(5, mean=3.5, sd=0.5)
x5 = rnorm(5, mean=3.5, sd=0.5)
x6 = rnorm(5, mean=3.5, sd=0.5)
data <- data.frame(x1, x2, x3, x4, x5, x6)
names(data) <- c('Name', 'Baseline', 'Day 3', 'Day 10', 'Day 17', 'Day 27')
data

line1 <- as.numeric(as.vector(data[1,][c(-1)]))
line2 <- as.numeric(as.vector(data[2,][c(-1)]))
line3 <- as.numeric(as.vector(data[3,][c(-1)]))
line4 <- as.numeric(as.vector(data[4,][c(-1)]))
line5 <- as.numeric(as.vector(data[5,][c(-1)]))

plot(line1, type = "l", col = '#00FFFF', ylim=c(2,6),  main="Graph 1", 
     xlab="Time Periods", ylab="Albumin Level", xaxt = "n", lwd=2)
axis(1, at=1:5, labels = names(data)[c(-1)])
lines(line2, type="l", col = '#00BFFF', lwd=2)
lines(line3, type="l", col = '#1E90FF', lwd=2)
lines(line4, type="l", col = '#7AC5CD', lwd=2)
lines(line5, type="l", col = '#53868B', lwd=2)
legend("topright", legend = paste("Patient",1:5), 
       col = c('#00FFFF','#00BFFF', '#1E90FF', '#7AC5CD', '#53868B'),
       lwd=4, lty=c(1,1,1), pch = c(NA,NA), bty = "n")

# plot 2
y <- c(mean(x2), mean(x3), mean(x4), mean(x5), mean(x6))
y_sd <- c(sd(x2), sd(x3), sd(x4), sd(x5), sd(x6))
plot2 <- barplot(y, names.arg = names(data)[c(-1)], ylim=c(0,6),
                 main="Graph 2", ylab="Albumin Level", xlab="Time Periods")
arrows(x0 = plot2, y0 = y + y_sd, y1 = y - y_sd, angle = 90, 
       code = 3, length = 0.1)