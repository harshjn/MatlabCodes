% We create a triangular lattice and then draw the lattice

%% Create the lattice
num=5;
iVal=num;
jVal=num;
a=1;
x0=-12;
y0=-10;
CoordMat=zeros(iVal,jVal,2);
for i=1:1:iVal
    for j=1:1:jVal
        if rem(j,2)==0
            CoordMat(i,j,1)=x0+i*a;
        elseif rem(j,2)==1
            CoordMat(i,j,1)=x0+i*a+a/2;
        end
        CoordMat(i,j,2)=y0+sqrt(3)/2*a*j;
    end
end
figure();
scatter(reshape(CoordMat(:,:,1),[num^2,1]),reshape(CoordMat(:,:,2),[num^2,1]),'.');
a_=CoordMat(uint8(num/2),uint8(num/2),1); b_=CoordMat(uint8(num/2),uint8(num/2),2); R_=3; %Parameters of circle

X_vertices=reshape(CoordMat(:,:,1),[num^2,1]);
Y_vertices=reshape(CoordMat(:,:,2),[num^2,1]);


%% Draw Lattice
figure
hold on

for i=1:1:iVal-1
    for j = 1:1:jVal-1
        
        if rem(j,2)==1
            % Triangle 1 is formed by (i,j) and (i+1,j) and (i,j+1)
            %Find final size of the triangle
            A1=CoordMat(i,j,1); A2=CoordMat(i,j,2);
            B1=CoordMat(i,j+1,1); B2=CoordMat(i,j+1,2);
            C1=CoordMat(i+1,j+1,1); C2=CoordMat(i+1,j+1,2);
            plot([A1,B1,C1,A1],[A2,B2,C2,A2],'k')
            
            A1=CoordMat(i,j,1); A2=CoordMat(i,j,2);
            B1=CoordMat(i+1,j,1); B2=CoordMat(i+1,j,2);
            C1=CoordMat(i+1,j+1,1); C2=CoordMat(i+1,j+1,2);
            plot([A1,B1,C1,A1],[A2,B2,C2,A2],'k')
        else
            % Triangle 1 is formed by (i,j) and (i+1,j) and (i,j+1)
            %Find final size of the triangle
            A1=CoordMat(i,j,1); A2=CoordMat(i,j,2);
            B1=CoordMat(i,j+1,1); B2=CoordMat(i,j+1,2);
            C1=CoordMat(i+1,j,1); C2=CoordMat(i+1,j,2);
            plot([A1,B1,C1,A1],[A2,B2,C2,A2],'k')
            
            A1=CoordMat(i+1,j+1,1); A2=CoordMat(i+1,j+1,2);
            B1=CoordMat(i,j+1,1); B2=CoordMat(i,j+1,2);
            C1=CoordMat(i+1,j,1); C2=CoordMat(i+1,j,2);
            plot([A1,B1,C1,A1],[A2,B2,C2,A2],'k')
           
        end
    end
end
