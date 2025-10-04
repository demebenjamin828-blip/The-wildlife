function dx = f(x, y)
    dx = a*x - b*x*y;
endfunction

function dy = g(x, y)
    dy = -c*y + d*x*y;
endfunction

function EulerEx()
               a = 0.1;
                b = 0.2;
                c =0.9 ;
                d = 0.4;

    n = 10000;    // nombre de pas
    T = 100;      // temps final
    h = T/n;     // pas de temps

    t = linspace(0, T, n+1);

    // le nombre de proie et de prédateurs initial
    x0 = 1;
    y0 = 1;

    x = zeros(1, n+1);
    y = zeros(1, n+1);

    x(1) = x0;
    y(1) = y0;

    // Utilisation de la méthode(Euler Explicite)
    for i = 1:n
        x(i+1) = x(i) + h*f(x(i), y(i));
        y(i+1) = y(i) + h*g(x(i), y(i));
    end

  // tracé du graphique
    clf();
    plot(t, x, 'r','linewidth',3);
    plot(t, y, 'y','linewidth',3);
    legend("Population X (proie)", "Population Y (prédateur)");
endfunction

EulerEx();
