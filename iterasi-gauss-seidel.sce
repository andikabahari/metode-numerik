// Latihan 2
// 10119204_if5_latihan2.sce

clear;

x0 = 1;
y0 = 2;
z0 = 2;

x = x0;
y = y0;
z = z0;

n = 6;

printf("\n");

printf("# ITERASI GAUSS-SEIDEL\n");

printf("\n");

printf("## Persamaan\n");
printf("\n");
printf("4x - y + z = 7\n");
printf("4x - 8y + z = -21\n");
printf("-2x + y + 5z = 15\n");

printf("\n");

printf("## Persamaan Iterasi\n");
printf("\n");
printf("x = (7 + y - z) / 4\n");
printf("y = (-21 - 4x - z) / -8\n");
printf("z = (15 + 2x - y) / 5\n");

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
    printf("Iterasi ke-%d:\n", i);
    
    x = (7 + y - z) / 4;
    
    printf("x%d = (7 + %f - %f) / 4\n", i, y, z);
    printf("   = %f\n", x);
    
    y = (-21 - 4*x - z) / -8;
    
    printf("y%d = (-21 - 4(%f) - %f) / -8\n", i, x, z);
    printf("   = %f\n", y);
    
    
    z = (15 + 2*x - y) / 5;
    
    printf("z%d = (15 + 2(%f) - %f) / 5\n", i, x, y);
    printf("   = %f\n", z);
    
    printf("\n");
end

printf("Iterasi berhenti!\n");

printf("\n");

printf("## Hasil\n");
printf("\n");
printf("x = x%d = %f\n", i, x);
printf("y = y%d = %f\n", i, y);
printf("z = z%d = %f\n", i, z);
