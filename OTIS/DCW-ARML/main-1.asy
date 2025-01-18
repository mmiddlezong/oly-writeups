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

size(10cm);
draw( (11,0)--(0,0)--(0,11), Arrows);
for (int i=1; i<=10; ++i) {
label("$"+(string)i+"$", (i,0), dir(-90));
label("$"+(string)i+"$", (0,i), dir(180));
dot( (i,0) );
dot( (0,i) );
}
label("$(0,0)$", (0,0), dir(225));
label("$\mathtt{RRURURURRUURUURRUURUU}$ ", (3.5,10), dir(90), deepgreen);
draw((0,0)--(10,10), red);
draw(
(0,0)--(2,0)--(2,1)--(3,1)--(3,2)--(4,2)--(4,3)--(6,3)--
(6,5)--(7,5)--(7,7)--(9,7)--(9,9)--(10,9)--(10,10),
deepgreen+1.5
);
dot( (0,0) );
draw((10,10)--(10,11), lightcyan+1.5);
dot("$(n,n)$", (10,10), dir(0));
dot("$(n,n+1)$", (10,11), dir(90), deepcyan);
draw((0,0)--(10,11), deepcyan);
