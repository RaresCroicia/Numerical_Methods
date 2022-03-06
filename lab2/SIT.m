function x = SIT(A,b)
  [n m] = size(A);
  x = zeros(n, 1);
  for i=1:n
    s = 0;
    for j = 1:i-1
      s = s + A(i,j)*x(j);
    endfor
    x(i) = (b(i)-s)/A(i,i);
  endfor
endfunction
  