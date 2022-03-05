function y = NumarAparitii(numefis, sir)
  filein = fopen(numefis, "r");
  line = fgetl(filein);
  y = 0;
  aux = 0;
  while ischar(line)
    found = strfind(line, sir)
    aux = length(found);
    y = y + aux;
    printf("Numarul de aparitii in linie este = %d\n", aux);
    printf("Sirul este %s\n", line);
    line = fgetl(filein);
  endwhile
  printf("Numarul total de aparitii este = %d\n", y);
endfunction