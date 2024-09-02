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

size(5cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair H = orthocenter(A, B, C);
pair D = foot(B, A, C);
pair E = foot(C, A, B);
pair F = foot(H, A, extension(D, E, B, C));

draw(A--B--C--cycle, orange);
filldraw(circumcircle(A, B, C), opacity(0.1)+orange, orange);
filldraw(circumcircle(D, E, F), opacity(0.1)+red, yellow);
draw(B--D, orange);
draw(C--E, orange);
draw(B--F--C, orange);
pair L = extension(A, H, B, C);
draw(A--L, orange);

pair X = extension(A, H, -A, (B-C)-A);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$H$", H, dir(315));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$L$", L, dir(L));
