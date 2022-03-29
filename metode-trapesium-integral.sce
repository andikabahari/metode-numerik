
// Andika Bahari
// IF5_10119204

clear;

f_xy = '2*x - 3*y';

// mendifinisikan fungsi f(x,y)
deff('z = f(x,y)', 'z = ' + f_xy);

// jumlah n bagian
n = 4;

// mengisi nilai xi
ax = 0;
bx = 2;
hx = (bx - ax)/n;
for i = 1:1:(n + 1)
    xi(i) = i*hx - hx;
end

// mengisi nilai yi
ay = 0;
by = 1;
hy = (by - ay)/n;
for i = 1:1:(n + 1)
    yi(i) = i*hy - hy;
end

// mengisi nilai f(xi, yi)
for i = 1:1:(n + 1)
    for j = 1:1:(n + 1)
        fi(i,j) = f(xi(i), yi(j));
    end
end

// perhitungan dalam arah x
dx = xi(2) - xi(1);

for i = 1:1:(n + 1)
    s = 0;
    for j = 1:1:(n + 1)
        if j == 1 | j == (n + 1) then
            s = s + fi(j,i);
        else
            s = s + 2*fi(j,i);
        end
    end
    sumx(i) = (dx/2)*s;
end

// perhitungan dalam arah y
dy = yi(2) - yi(1);

for i = 1:1:(n + 1)
    s = 0;
    for j = 1:1:(n + 1)
        if j == 1 | j == (n + 1) then
            s = s + fi(i,j);
        else
            s = s + 2*fi(i,j);
        end
    end
    sumy(i) = (dy/2)*s;
end

printf("\n");
printf("# QUIZ\n");
printf("Nama : Andika Bahari\n");
printf("NIM  : 10119204\n");
printf("Kelas: IF-5\n");
printf("\n");

printf("## Menghitung integral ganda menggunakan metode trapesium\n");
printf("f(x,y) = %s\n", f_xy);
printf("n = %d\n", n);
printf("\n");

printf("### Nilai xi\n");
for i = 0:1:n
    printf("x%d = %.2f\n", i, xi(i + 1));
end
printf("\n");

printf("### Nilai yi\n");
for i = 0:1:n
    printf("y%d = %.2f\n", i, yi(i + 1));
end
printf("\n");

printf("### Tabel perkalian f(xi,yi)\n");
disp(fi);
printf("\n");

printf("### Perhitungan dalam arah x\n");
printf("a = %d\n", ax);
printf("b = %d\n", bx);
printf("h = %.2f\n", hx);
printf("\n");
for i = 1:1:(n + 1)
    printf("y = %.2f; maka hasil integral f(xi,y) = %.2f\n", yi(i), sumx(i));
end
printf("\n");

printf("### Perhitungan dalam arah y\n");
printf("a = %d\n", ay);
printf("b = %d\n", by);
printf("h = %.2f\n", hy);
printf("\n");
for i = 1:1:(n + 1)
    printf("x = %.2f; maka hasil integral f(x,yi) = %.2f\n", xi(i), sumy(i));
end
printf("\n");
