function dim = getDim(file)
  filein = fopen(file, "r");
  fseek(filein, 0, 'eof');
  dim = ftell(filein);
endfunction