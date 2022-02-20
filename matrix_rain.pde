matrix_greenline[] d=new matrix_greenline[1000];
void setup()
{
//background(0,0,0);  
size(1000,1000);
for(int i=0;i<d.length;i++)
 {
   float acc=map(random(100),0,100,0.2,0.67);
   d[i]=new matrix_greenline(width/2+random(-500,500),random(-100,-50),acc,0.01);
  }
}
void draw()
{
  background(0,0,0);
  for(int i=0;i<d.length;i++)
 {
   d[i].fall();
   d[i].show();
 }
}
