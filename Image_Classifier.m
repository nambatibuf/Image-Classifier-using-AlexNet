% Access the trained model
net = alexnet;

% See details of the architecture
net.Layers

% Read the image to classify
I = imread("C:\Users\Nikhil\Learning\matlab\input.jpg");

% Ensure the image has 3 channels (RGB)
if size(I, 3) == 1
    I = cat(3, I, I, I); % Convert grayscale to RGB
end

% Adjust size of the image
sz = net.Layers(1).InputSize(1:2);
I = imresize(I, sz);

% Classify the image using AlexNet
label = classify(net, I);

% Show the image and the classification results
figure
imshow(I)
text(10,20,char(label),'Color','white')
