var = input('Introduceti variabila: ');
sum = 0;
i = 1;
while i < var
  if rem(i,2) == 1
    sum = sum + i;
  endif
  i = i+1;
endwhile
disp(sum);