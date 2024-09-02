if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-1";
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

size(13cm);

for (int i=0; i<=3; ++i) {
for (int j=0; j<2**i; ++j) {
transform sh = shift(-(16-2**(3-i)), 3*(3-i));
path cherry = (0,0)--(2**(3-i),3)--(2**(4-i),0);
draw( shift(j*2**(5-i),0) * sh * cherry, grey );
}
}

dot("$14$", (0,12), dir(90));

dot("$15$", (-8,9), dir(90));
dot("$41$", (8,9), dir(90));

dot( "$16$", (-12,6), dir(90));
dot( "$44$", (-4,6), dir(90));
dot( "$42$", (4,6), dir(90));
dot("$122$", (12,6), dir(90));

dot( "$17$", (-14,3), dir(90));
dot( "$47$", (-10,3), dir(90));
dot( "$45$", (-6,3), dir(90));
dot("$131$", (-2,3), dir(90));
dot( "$43$", (2,3), dir(90));
dot("$125$", (6,3), dir(90));
dot("$123$", (10,3), dir(90));
dot("$365$", (14,3), dir(90));

dot( "$18$", (-15,0), dir(-90));
dot( "$50$", (-13,0), dir(-90));
dot( "$48$", (-11,0), dir(-90));
dot("$140$", (-9,0), dir(-90));
dot( "$46$", (-7,0), dir(-90));
dot("$134$", (-5,0), dir(-90));
dot("$132$", (-3,0), dir(-90));
dot("$392$", (-1,0), dir(-90));
dot(" $44$", (1,0), dir(-90));
dot("$128$", (3,0), dir(-90));
dot("$126$", (5,0), dir(-90));
dot("$374$", (7,0), dir(-90));
dot("$124$", (9,0), dir(-90));
dot("$368$", (11,0), dir(-90));
dot("$366$", (13,0), dir(-90));
dot("$1094$", (15,0), dir(-90));

for (int i=0; i<16; ++i) {
label("$s_{" + (string)(i+1) + "}$", (2*i-15,-2), red);
}
