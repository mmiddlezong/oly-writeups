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
real w = 2*Sin(18);
real h = 0.10 * w;
real d = 0.33 * h;
picture wht;
picture blk;

draw(wht, (0,0)--(w,0)--(w+d,h)--(-d,h)--cycle);
fill(blk, (0,0)--(w,0)--(w+d,h)--(-d,h)--cycle, black);

// draw(unitcircle, blue+dotted);

// Original polygon
add(shift(dir(108))*blk);
add(shift(dir(72))*rotate(324)*blk);
add(shift(dir(36))*rotate(288)*wht);
add(shift(dir(0))*rotate(252)*blk);
add(shift(dir(324))*rotate(216)*wht);

add(shift(dir(288))*rotate(180)*blk);
add(shift(dir(252))*rotate(144)*blk);
add(shift(dir(216))*rotate(108)*wht);
add(shift(dir(180))*rotate(72)*blk);
add(shift(dir(144))*rotate(36)*wht);

// White shifted
real Wk = 1.2;
pair W1 = (1.8,0.1);
pair W2 = W1 + w*dir(36);
pair W3 = W2 + w*dir(108);
pair W4 = W3 + w*dir(216);
path Wgon = W1--W2--W3--W4--cycle;
draw(Wgon);
pair WO = (W1+W3)/2;
transform Wt = shift(WO)*scale(Wk)*shift(-WO);
draw(Wt * Wgon);
label("$W$", WO);
/*
draw(W1--Wt*W1);
draw(W2--Wt*W2);
draw(W3--Wt*W3);
draw(W4--Wt*W4);
*/

// Black shifted
real Bk = 1.10;
pair B1 = (1.5,-0.1);
pair B2 = B1 + w*dir(0);
pair B3 = B2 + w*dir(324);
pair B4 = B3 + w*dir(252);
pair B5 = B4 + w*dir(180);
pair B6 = B5 + w*dir(144);
path Bgon = B1--B2--B3--B4--B5--B6--cycle;
pair BO = (B1+B4)/2;
transform Bt = shift(BO)*scale(Bk)*shift(-BO);
fill(Bt * Bgon, black);
fill(Bgon, white);
label("$B$", BO);
