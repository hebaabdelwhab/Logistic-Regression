function p = predict (theta,x)
function p = predict (theta,x)
  m = size(x,1);
  x = [ones(m,1) x];
  p = sigmoid(x * theta);
end
