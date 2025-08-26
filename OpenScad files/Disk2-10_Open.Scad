dx=10;

scale=10;
$fn=60;

n=round(4/(dx/scale));
echo (n);
for (i=[0:1:n]){
    x=i*dx/scale;
    echo(x);
    translate ([i*dx,0,0])
    rotate ([0,90,0])
    difference(){
        cylinder (h=dx,r=((.25)*(x^2))*scale);
        cylinder (h=dx,r=2);
    }
    
}
