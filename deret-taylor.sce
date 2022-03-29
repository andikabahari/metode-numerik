// Latihan 2b
// 10119204_if5_latihan2b.sce

clear;

function e = galatRelatifHampiran(x1, x0)
    e = (x1 - x0) / x1;
endfunction

function d = turunan(x, k)
    select pmodulo(k, 4)
        case 0 then
            d = sin(x);
        case 1 then
            d = cos(x);
        case 2 then
            d = -sin(x);
        case 3 then
            d = -cos(x);
    end
endfunction

function s = deretTaylor(x, x0, es)
    s = sin(x0);
    e = es + 1;
    i = 1;
    k = 1;
    
    printf("\nSuku ke-%d", i);
    printf("\nNilai suku = %f\n", s);
    
    while e >= es
        tmps = s;
        
        s = s + (((x - x0) ^ i) / factorial(i)) * turunan(x0, k);
        k = k + 1;
        
        e = abs(galatRelatifHampiran(s, tmps));
        
        printf("\nSuku ke-%d", i + 1);
        printf("\nNilai suku = %f", s);
        printf("\nNilai absolut galat = %.8f\n", e);
        
        if e < es
            printf("\n%.8f < %.8f iterasi berhenti.\n", e, es);
        end
        
        i = i + 1;
    end
endfunction

x  = 0.5;
x0 = 0;
es = 0.00000001; // toleransi galat

printf("\nMenghitung nilai hampiran sin(x) menggunakan deret Taylor.\n")
printf("\nx  = %.2f", x);
printf("\nx0 = %.2f", x0);
printf("\ne  = %.8f (toleransi galat)\n", es);

deretTaylor(x, x0, es);
