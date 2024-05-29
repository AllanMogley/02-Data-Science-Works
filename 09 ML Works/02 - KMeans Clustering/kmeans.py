from sklearn.cluster import KMeans
from sklearn.datasets import make_blobs

# X, y = make_blobs([...])
X, y = make_blobs(n_samples=100, centers=30, n_features=2)
k = 5
kmeans = KMeans(n_clusters = k, random_state = 42)
y_pred = kmeans.fit_predict(X)
# print(y_pred)
# print(kmeans.labels_)
print(kmeans.cluster_centers_)