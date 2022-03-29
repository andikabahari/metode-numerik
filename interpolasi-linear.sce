
clear;

// Data

x0 = 1960;
y0 = 179.3;

x1 = 1970;
y1 = 203.2;

// Masukan

x = 1968;

// Penyelsaian

a1 = (y1 - y0)/(x1 - x0);
a0 = (x1*y0 - x0*y1)/(x1 - x0);

p1 = a0 + a1*x;

// Keluaran

printf("\n");

printf("# INTERPOLASI LINEAR\n");

printf("\n");

printf("## Data\n");
printf("x0 = %.2f\n", x0);
printf("y0 = %.2f\n", y0);
printf("x1 = %.2f\n", x1);
printf("y1 = %.2f\n", y1);

printf("\n");

printf("## Masukan\n");
printf("x = %.2f\n", x);

printf("\n");

printf("## Penyelsaian \n");
printf("a1 = %.2f\n", a1);
printf("a0 = %.2f\n", a0);
printf("p1 = %.2f\n", p1);

printf("\n");

printf("Hasilnya adalah %.2f\n", p1);
