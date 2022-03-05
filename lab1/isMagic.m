function ok = isMagic(dir)
  filein = fopen(dir, "r")
  n = fscanf(filein, "%f", 1)
  mat = fscanf(filein, "%f", [n,n])
  fclose(filein);
  sumref = 0;
  sumact = 0;
  ok = 1;
  
  for i = 1:n
    sumref = sumref + mat(1, i);
  endfor

  for i = 2:n
    sumact = 0;
    for j = 1:n
      sumact = sumact + mat(i, j);
    endfor
    if sumref ~= sumact
      ok = 0;
    endif
  endfor
  
  for i = 1:n
    sumact = 0;
    for j = 1:n
      sumact = sumact + mat(j, i);
    endfor
    if sumref ~= sumact
      ok = 0;
    endif
  endfor
  
  sumact = 0;
  for i = 1:n
    sumact = sumact + mat(i,i);
  endfor
  if sumref ~= sumact
      ok = 0;
  endif
  
  sumact = 0;
  for i = 1:n
    sumact = sumact + mat(i,n+1-i);
  endfor
  if sumref ~= sumact
      ok = 0;
  endif
  
endfunction