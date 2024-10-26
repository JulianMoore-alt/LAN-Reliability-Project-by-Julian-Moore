function graph = TenFigure3_4(p1, p2, p3)
    simGraph = CompoundLink2(10, p1, p2, p3)
    hold on
    grid on
    set(simGraph, "Color", "#c800ff")
