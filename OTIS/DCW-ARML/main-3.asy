if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-3";
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

size(15cm);
picture Ln(int n) {
picture p;
for (int i=0; i<=n; ++i) {
filldraw(p, shift(i,0)*unitsquare, lightgrey, black);
filldraw(p, shift(0,i)*unitsquare, lightgrey, black);
}
label(p, "$L_{" + ((string) n) + "}$", ((n+1)/2,0), dir(-90));
draw(p, (0,0)--(0,n+1)--(1,n+1)--(1,1)--(n+1,1)--(n+1,0)--cycle, black+1.4);
return p;
}
add(shift(0,11)*Ln(1));
add(shift(3,11)*Ln(2));
add(shift(7,11)*Ln(3));
add(shift(12,11)*Ln(4));
add(shift(18,11)*Ln(5));

add(shift(0,0)*Ln(6));
add(shift(8,0)*Ln(7));
add(shift(17,0)*Ln(8));

int xs = -14;
int ys = 4;
for (int x = xs; x <= xs+9; ++x) {
draw((x,ys)--(x,ys+9), grey);
}

for (int y = ys; y <= ys+9; ++y) {
draw((xs,y)--(xs+9,y), grey);
}

draw(box((xs,ys),(xs+9,ys+9)), black+1.5);
fill(shift(xs+2,ys+5)*unitsquare, black);
label("$S$", (xs+4.5,ys), dir(-90));
