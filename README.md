# Unsupervised Learning: K-Means-Clustering
## Project: Build an unsupervised model on Social Networking Services dataset for the Marketing teams to target specific clusters of students with certain interests or beliefs.
## Project Overview:
The dataset collected used for clustering analysis with k-means contains social networking service (SNS) information of 30000 anonymous U.S. high school students who had SNS profile in 2006. This dataset was compiled by Brett Lantz while conducting his sociological research on the teenage identities at the University of Notre Dame, and was used again as example in his book: Machine Learning with R (second edition) published by PACKT.
The SNS dataset contains 30000 observations (rows) each preresents a high school student and 40 features (columns) that provides information for the student. The 40 features includes graduation year, the gender, age and number of friends one has connected throught the SNS for each student, and the remaining 36 columns are word/s terms such as football, shopping, hot, church etc. that describes the student interest and beliefs with value of 1 indicates a belonging to the group, and 0 otherwise. Information like this can help to group individuals into clusters with similar interest, and provide help for companies’ marketing teams to advertise appropriate products online targeting students with certain interest or belief.
## Software requirements 
This project uses the following softwares and libraries:
- RStudio (https://rstudio.com/)
- KMeans (https://www.jstor.org/stable/2346830?origin=crossref)

## Data Munging  
After collecting and reading the data, I have treated the missing values. As the "Gender" has more number of Female counts, we have replaced the missing values with Female in that column. Missing values in "Age" column are repalced with the mean of the same column. 
## Hyperparameter Optimizing.

After data munging part, we come to Hyperparameter optimizing part, in which we plotted an Elbow plot (# of clusters VS Sum Squared Distance) and predicted the value of K, that is number of clusters, to be 5, becuase after k = 5, the curve of Sum Square Distance stabilizes.Check the Elbowplot of K vs SSD below. 

![alt text](https://github.com/NikhilSalv/SNS-Data-Analysis-with-K-Means-Clustering/blob/main/SNS%20Elbowplot.png) 

# Running the model on the dataset.
After predicting the value of K, we run the K-Means Clustering algorithm on the SNS dataset. The output denotes the 5 clusters. The output column is row-wise combined with the original dataset. And we can see that which record belongs to which cluster. 
