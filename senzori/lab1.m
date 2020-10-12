p=[0,20.16, 40.32, 60.48, 80.64, 100.80, 120.96, 141.12, 161.28, 181.44];
c=[114, 198, 330, 459, 584, 708,840, 971, 1116, 1255];
d=[181.44, 161.28, 141.12, 120.96, 100.80, 80.64, 60.48, 40.32, 20.16,0];
f=[1331, 1202, 1070, 935, 810, 670, 538, 403, 266, 128];
plot(p, c, 'o' ,'MarkerSize',1.5,'MarkerFaceColor','r', 'MarkerEdgeColor','k','LineWidth',1,  d, f, 'o','MarkerSize',1.5,'MarkerFaceColor','y',  'MarkerEdgeColor','k','LineWidth',1.8, p, N=107.15+6.50*p,'k-','LineWidth',1);
xlabel('Unghi(grad)');
ylabel('Conversie');
title('Caracteristica traductorului potentiometric');
legend(' sens orar',' sens antiorar','caracteristica', 'location','northeastoutside');