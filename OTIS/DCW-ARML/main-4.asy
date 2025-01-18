if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
import geometry;
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen) { filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen) { filldraw(pic, (path) g, p); }
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }

import roundedpath;
size(12cm);
pair[][] points;
transform sh = shift(-1, -sqrt(3)/3);
path t = sh*((0,0) -- (1,0) -- (1/2, sqrt(3)/2) -- cycle);
picture base;
for (int i = 0; i < 3; ++i) {
points.push(new pair[]);
for (int j = 0; j < 3 - i; ++j) {
points[i].push(sh*(j + i/2, i * sqrt(3)/2));
}
for (int j = 0; j < 2 - i; ++j) {
draw(base, shift((j + i/2, i * sqrt(3)/2)) * t, linewidth(10) + grey);
}
}

void band(picture pic, int[][] p, pen c) {
int n = p.length;
for (int i = 0; i < n; ++i) {
pair A = points[p[i][0]][p[i][1]], B = points[p[(i + 1) % n][0]][p[(i + 1) % n][1]], C = points[p[(i + 2) % n][0]][p[(i + 2) % n][1]];
draw(pic, roundedpath((A + B) / 2 -- B -- (B + C) / 2, 0.15), white + linewidth(8));
draw(pic, roundedpath((A * 2 + B) / 3 -- B -- (B + C * 2) / 3, 0.15), c + linewidth(4));
}
}

picture case1;
add(case1, base);
band(case1, new int[][]{{0,0},{0,2},{2,0}}, orange);
band(case1, new int[][]{{1,0},{1,1},{0,1}}, blue);
add(case1);

picture case2;
add(case2, base);
band(case2, new int[][]{{1,0},{1,1},{2,0}}, orange);
band(case2, new int[][]{{0,0},{0,1},{1,1},{0,2},{0,1},{1,0}}, blue);
add(shift(2.5,0)*case2);
add(shift(5.0,0)*rotate(120)*case2);
add(shift(7.5,0)*rotate(240)*case2);

picture case3;
add(case3, base);
band(case3, new int[][]{{1,0},{1,1},{2,0}}, orange);
band(case3, new int[][]{{0,0},{1,0},{0,1},{1,1},{0,2},{0,1}}, blue);
add(shift(10.0,0)*case3);
add(shift(0,-2.5)*rotate(120)*case3);
add(shift(2.5,-2.5)*rotate(240)*case3);

picture case4;
add(case4, base);
band(case4, new int[][]{{0,2},{0,1},{1,0},{2,0}}, orange);
band(case4, new int[][]{{0,0},{0,1},{1,1},{1,0}}, blue);
add(shift(5.0,-2.5)*case4);
add(shift(7.5,-2.5)*rotate(120)*case4);
add(shift(10.0,-2.5)*rotate(240)*case4);
