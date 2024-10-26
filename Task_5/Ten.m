function graph = Ten(p1, p2, p3)
    simGraph = CompoundLink1(10, p1, p2, p3)
    hold on
    grid on
    set(simGraph, "Color", "#c800ff")