function X = partitionInverse(A)
  [n m] = size(A)
  jn = floor(n/2);
  A1 = A(1:jn, 1:jn);
  A2 = A(jn+1:n, 1:jn);
  A3 = A(1:jn, jn+1:n);
  A4 = A(jn+1:n, jn+1:n);
  
  X1 = (A1-A3*(A4^(-1))*A2)^(-1);
  X4 = (A4-A2*(A1^(-1))*A3)^(-1);
  X2 = -(A4^(-1))*A2*X1;
  X3 = -(A1^(-1))*A3*X4;
  X = [X1 X3;X2 X4];
endfunction

