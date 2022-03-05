var = input('Introduceti variabila: ');
sum = 0;
for i = 1:var
  if rem(i,2) == 1
    sum = sum + i;
  endif
endfor
disp(sum);