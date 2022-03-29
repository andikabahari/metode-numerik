
clear;

// Data

xi(1) = 1.5;
yi(1) = 0.04979;

xi(2) = 2;
yi(2) = 0.01832;

xi(3) = 2.5;
yi(3) = 0.00674;

n = 3;

// Masukan

x = 2.2

// Penyelsaian

for i = 1:1:n
    ai(i) = yi(i)
    
    L(i) = 1;
    
    for j = 1:1:n
        if i <> j then
            L(i) = L(i)*((x - xi(j))/(xi(i) - xi(j)))
        end
    end
end

pn = 0;

for i = 1:1:n
    pn = pn + ai(i)*L(i);
end

// Keluaran

printf("\n");

printf("# POLINOM LAGRANGE\n");

printf("\n");

printf("## Data\n");
for i = 1:1:n
    printf("x%d = %f\n", (i - 1), xi(i));
    printf("y%d = %f\n", (i - 1), yi(i));
    printf("\n");
end

printf("## Masukan\n");
printf("x = %f\n", x);

printf("\n");

printf("## Penyelsaian\n");
for i = 1:1:n
    printf("a%d = %f\n", (i - 1), ai(i));
end

printf("\n");

for i = 1:1:n
    printf("L%d(%f) = %f\n", (i - 1), x, L(i));
end

printf("\n");

printf("P%d(%f) = %f\n", (n - 1), x, pn);

printf("\n");

printf("Jadi hasil dari f(%f) = %f\n", x, pn);
