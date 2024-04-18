import tensorflow as tf
from tensorflow.keras.layers import Input, Dense
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam

# Load the dataset
(x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()

# Normalize the data
x_train = x_train/255
x_test = x_test/255

# Flatten the data
x_train = x_train.reshape(-1, 784)
x_test = x_test.reshape(-1, 784)

# Build the DBN
input_layer = Input(shape = (784,))
hidden_layer = Dense(512, activation = 'relu')(input_layer)
output_layer = Dense(10, activation = 'softmax')(hidden_layer)

model = Model(input_layer, output_layer)

# Compile the model
model.compile(optimizer = Adam(), loss = 'sparse_categorical_crossentropy', metrics = ['accuracy'])

# Train the model
model.fit(x_train, y_train, epochs = 10, validation_data = (x_test, y_test))

# Evaluate the model
test_loss, test_acc = model.evaluate(x_test, y_test)
print('Test accuracy: ', test_acc)
