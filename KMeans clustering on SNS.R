#Read and store the data.

sns<- read.csv("E:/DATA scientist/R/SNS/snsdata.csv", na.strings = "NA")
View(sns1)
dim(sns)
View(sns)
table(sns$gender)

# Data preparation

colSums(is.na(sns))
sns$age[is.na(sns$age)] <- mean(sns$age, na.rm =TRUE)
sns$gender[is.na(sns$gender)] <- 'F'
# 'M' = 2 & 'F' = 1.
colSums(is.na(sns))

sns$gender <- as.numeric(as.factor(sns$gender))
table(sns$gender)


num<- seq(1:10)
empty_list <- list()
for (i in num) {
  kmeans.model <- kmeans(sns, i, iter.max = 10)
  empty_list <- append(empty_list, kmeans.model$tot.withinss)
}

abc = unlist(empty_list)
plot(abc, type = "b", xlab = "No. clusters", ylab = "Total within Square distance", col = "blue")

# From the Elbow plot of "Number of clusters" VS "Sum Square Distance", 
# we can see that at K = 5, the Sum Square Distance stabilizes.
# Therefore , we choose the best value of K to be at 5.

kmeans_model<- kmeans(sns, 5, iter.max = 10) #kmeans( data,# of cluster, iterations)
kmeans_model$centers # centroids, gives the centroid for each cluster
kmeans_model$cluster #which record belongs to which cluster
kmeans_model$tot.withinss #SSD(Sum Squared Distance)

df_of_clusters<- cbind(sns,kmeans_model$cluster)
View(df_of_clusters)
View(kmeans_model$centers)


