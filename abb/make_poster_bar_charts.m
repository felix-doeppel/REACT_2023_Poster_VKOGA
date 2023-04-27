close all
err = flip([76,0.3,546,23600]);
PEI_share = flip([78,3,100,100]);

color2B = [0,131,204]/255;
text_pos = 30;

figure()
h = gca;
h.Units = 'centimeters';
h.Position(3) = 6.5*0.9;
h.Position(4) = 8;
% subplot(1,2,1)
b1 = barh(err);
b1.FaceColor = color2B;
xlim([0,100])
ylim([0.25,4.75])
h.YTickLabel = [];
h.XTick = 0:25:100;
h.LineWidth = 2;
% xlabel('prediction error in %')
for i = 4
   text(text_pos,i,[num2str(err(i)),' %'],'HorizontalAlignment','right',...
       'FontWeight','bold','Color','w') 
end
for i = 3
   text(text_pos,i,[num2str(err(i)),' %'],'HorizontalAlignment','right',...
       'FontWeight','bold','Color','k') 
end
for i = 1:2
   text(text_pos,i,'>100 %','HorizontalAlignment','right',...
       'FontWeight','bold','Color','w')
end
saveas(gcf,'error_bar.svg')

figure()
h = gca;
h.Units = 'centimeters';
h.Position(3) = 6.5*0.9;
h.Position(4) = 8;
% subplot(1,2,1)
b1 = barh(PEI_share);
b1.FaceColor = color2B;
xlim([0,100])
ylim([0.25,4.75])
% xlabel('average reversibility in %')
h.YTickLabel = [];
h.XTick = 0:25:100;
h.LineWidth = 2;
for i = [1,2,4]
   text(text_pos,i,[num2str(PEI_share(i)),' %'],'HorizontalAlignment','right',...
       'FontWeight','bold','Color','w') 
end
for i = 3
   text(text_pos,i,[num2str(PEI_share(i)),' %'],'HorizontalAlignment','right',...
       'FontWeight','bold','Color','k') 
end
saveas(gcf,'PEI_share_bar.svg')