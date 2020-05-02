function [j,grad] = computecost (theta,x, y)
  m=size(x,1);
  x=[ones(m,1) x];
  
  h=sigmoid(x*theta);
  j=-(1/m)*sum(y.*log(h)+(1-y).*log(1-h));
   
grad =zeros(size(theta,1),1);
for i=1:size(grad),
  grad(i) = (1/m)*sum((h-y)' * x(:,i));
end