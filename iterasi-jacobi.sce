// Latihan 1
// 10119204_if5_latihan1.sce

clear;

x0 = 0;
y0 = 1;
z0 = 2;

xi = x0;
yi = y0;
zi = z0;

x = xi;
y = yi;
z = zi;

n = 5;

printf("\n");

printf("# ITERASI JACOBI\n");

printf("\n");

printf("## Persamaan\n");
printf("\n");
printf("4*x + 2*y + z = 1\n");
printf("x + 3*y - z = 4\n");
printf("-x - y + 3*z = 2\n");

printf("\n");

printf("## Persamaan Iterasi\n");
printf("\n");
printf("x = (1 - 2*y - z) / 4\n");
printf("y = (4 - x + z) / 3\n");
printf("z = z = (2 + x + y) / 3\n");

printf("\n");

printf("## Nilai Awal\n");
printf("\n");
printf("x0 = %d\n", x0);
printf("y0 = %d\n", y0);
printf("z0 = %d\n", z0);

printf("\n");

printf("## Proses Iterasi\n");
printf("\n");
printf("Jumlah iterasi = %d\n", n);
printf("\n");

for i = 1:1:n
    xi = (1 - 2*y - z) / 4;
    yi = (4 - x + z) / 3;
    zi = (2 + x + y) / 3;
    
    printf("Iterasi ke-%d:\n", i);
    printf("x%d = (1 - 2(%.7f) - %.7f) / 4\n", i, y, z);
    printf("   = %.7f\n", xi);
    printf("y%d = (4 - %.7f + %.7f) / 3\n", i, x, z);
    printf("   = %.7f\n", yi);
    printf("z%d = (2 + %.7f + %.7f) / 3\n", i, x, y);
    printf("   = %.7f\n", zi);
    
    x = xi;
    y = yi;
    z = zi;
    
    //printf("x%d = %f\n", i, x);
    //printf("y%d = %f\n", i, y);
    //printf("z%d = %f\n", i, z);
    printf("\n");
end

printf("Iterasi berhenti!\n");

printf("\n");

printf("## Hasil\n");
printf("\n");
printf("x = x%d = %.7f\n", i, x);
printf("y = y%d = %.7f\n", i, y);
printf("z = z%d = %.7f\n", i, z);
