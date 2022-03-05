function ok = func(dir)
  fileout = fopen(dir, "w");
  for i = 0:0.1:1
    fprintf(fileout, "f(%d) = %d\n", i, 2*i + 1);
  endfor
  fclose(fileout);
  ok = 1