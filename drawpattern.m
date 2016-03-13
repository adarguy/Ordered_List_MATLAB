function y = drawpattern(n,theta)

	pxy = [0;0];

	xy = [0,0];
	for i = (1:n-1)
		v = ([cosd(theta), sind(theta); -sind(theta), cosd(theta)]^(i-1))*[i;0]
		pxy = pxy + v
		xy = [xy;pxy']
	end
	plot(xy(:,1),xy(:,2))
	axis equal;
end