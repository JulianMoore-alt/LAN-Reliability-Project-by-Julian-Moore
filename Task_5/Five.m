function graph = Five(p1, p2, p3)
    simGraph = CompoundLink1(5, p1, p2, p3)
    hold on
    grid on
    set(simGraph, "Color", "#00fff2")
