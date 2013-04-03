set.seed(1)
x <- seq(0, 1, 0.01)
y <- sin(2 * pi * x) + rnorm(length(x), 0, 0.1)
df <- data.frame(x, y)
# ggplot(df, aes(x=x, y=y)) + geom_point()

ggplot(df, aes(x=x, y=y)) + geom_point() + geom_smooth(method='lm', se=T)