function graph = TenFigure5_6(p1, p2, p3)
    simGraph = CompoundLink3(10, p1, p2, p3)
    hold on
    grid on
    set(simGraph, "Color", "#c800ff")
