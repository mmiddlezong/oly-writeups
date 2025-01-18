if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-2";
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

size(12cm);
picture body;
pen border = black+1.8;
path outline = (0,0)..(0.5,-0.1)..(0.9,0)..(0.9,0)..(1,0.7)
..(0.85,1.3)..(0.4,1.32)..(0.13,1.1)..(0.12,1.08)--(0.12,1.08)..(0.03,0.4)
..(0,0.1)--(-0.1,0.02)--(0,0)..cycle;
filldraw(body, (0.8,0.7)--(1.15,0.35)--(0.85,0.4)--cycle, rgb("#90a0b0"), border);
filldraw(body, outline, rgb("#90a0b0"), border);
filldraw(body, subpath(outline, 0.2, 6.6)
--(0.25,0.9)..(0.25,0.7)--(0.44,0.52)--(0.27,0.45)
..(0.2,0.22)..(0.15,0.1)..cycle,
rgb("#f4f4f4"), border);
filldraw(body, ellipse((0.32,-0.075), 0.12, 0.07), orange, border);
filldraw(body, ellipse((0.72,-0.07), 0.12, 0.07), orange, border);
draw(body, (0.51,1.07)..(0.59,1.09)..(0.66,1.07), black+2);
draw(body, (0.78,1.07)..(0.86,1.09)..(0.94,1.07), black+2);
filldraw(body, (0.7,0.98)--(0.89,0.92)--(0.68,0.89)--cycle, yellow, border);
real r = 1.4;
add(shift( 0,0)*yscale(1.0)*body);
add(shift(1.2,0)*yscale(0.7)*xscale(0.8)*body);
add(shift(2.2,0)*yscale(1.3)*xscale(1.1)*body);
add(shift(3.5,0)*yscale(1.5)*xscale(1.2)*body);
add(shift(4.8,0)*yscale(0.85)*xscale(0.9)*body);
add(shift(5.8,0)*yscale(1.1)*body);
real y = -0.5;
label("$3$", (0.5,y), fontsize(19pt));
label("$1$", (1.5,y), fontsize(19pt));
label("$5$", (2.7,y), fontsize(19pt));
label("$6$", (4.1,y), fontsize(19pt));
label("$2$", (5.3,y), fontsize(19pt));
label("$4$", (6.3,y), fontsize(19pt));
