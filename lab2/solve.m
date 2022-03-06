function x = solve(A,b)
  [L U] = crout(A);
  y = SIT(L,b);
  x = SST(U,y);
endfunction