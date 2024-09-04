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

size(8cm);
pair A = (1.4,3);
pair B = (0,0);
pair C = (4,0);
real a = 1.7;
real b = 0.5;
real c = 0.8;
filldraw(circle(A,a), paleyellow, black+2);
filldraw(circle(B,b), paleyellow, black+2);
filldraw(circle(C,c), paleyellow, black+2);
pair X = b/(b-c)*(C-B)+B;
pair Y = c/(c-a)*(A-C)+C;
pair Z = a/(a-b)*(B-A)+A;
dot("$X_{23}$", X, dir(270));
dot("$X_{31}$", Y, dir(270));
dot("$X_{12}$", Z, dir(270));
draw(X--Y, dashed+red);
void draw_tangents(pair P, pair O, real r) {
pair Q = r*r / conj(P-O) + O;
pair R = dir(P-O)*dir(90) + Q;
path l = (9*Q-8*R)--(9*R-8*Q);
pair T1 = intersectionpoints(l,circle(O,r))[0];
pair T2 = intersectionpoints(l,circle(O,r))[1];
draw(T1--P--T2, deepblue);
}
draw_tangents(Y,A,a);
draw_tangents(Z,A,a);
draw_tangents(X,C,c);
label("$\omega_1$", A);
label("$\omega_2$", B);
label("$\omega_3$", C);
