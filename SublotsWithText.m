subplot(1,3,1)
k=1
diff_theta_=(theta_(k+1:end)-theta_(1:end-k));
diff_theta_=diff_theta_(abs(diff_theta_)<CutOffTheta_);
diff_theta_(diff_theta_==0)=[];
h=histogram(diff_theta_)
histVals=h.Values/sum(h.Values);
histEdges=h.BinEdges;
bar(histEdges(2:end),histVals)
% set(gca,'YScale','log')
skw=skewness(diff_theta_);
mn_=mean(diff_theta_);
txt1 = ['mean= ' num2str(mn_)];
txt2 = ['Skewness= ' num2str(skw)];
text(0.006,0.045,txt1)
text(0.006,0.042,txt2)
xlabel(['delta theta for dt=0.0072 and k=' num2str(k)])
ylabel({'Probability of DeltaTheta';'valuesWithinBin/totalValues'})  % show result in two lines.
