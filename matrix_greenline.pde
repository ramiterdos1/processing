//green-rgb(0,128,0),darkgreen-rgb(0,100,0)

class matrix_greenline
{
  String s="1qwe%5rt2}yu3i0o4plk7jh6gnm8bvf9#@d&{+csxaz",sub_s="";
  float start_pos_x,start_pos_y,accel_y,t,inc;
  int len;
  matrix_greenline(float x,float y,float acc,float i)
  {
   start_pos_x=x;
   start_pos_y=y;
   accel_y=acc;
   t=0;
   inc=i;
   len=(int)random(15);
   for(int j=0;j<len;j++)
     {
       sub_s+=s.charAt((int)random(0,s.length()));
     }
  }
  void fall()
  {
    start_pos_y+=0.5*accel_y*t*t;
    //print(pow(-1.0,(int)random(5)%2));
    //start_pos_x+=pow(-1.0,(int)random(5)%2)*noise(start_pos_x);
    if(start_pos_y>height)
    {
      start_pos_y=random(-200,-50);
      //t=0;
    }
    t+=inc;
  }
  void show()
  {
    stroke(0,100,0);
    //line(start_pos_x,start_pos_y,start_pos_x,start_pos_y+len);
    //circle(start_pos_x,start_pos_y,1);
    //textrain
    textSize(15);

     fill(0,100,0);
     //text("shi", 10+frameCount , 210);
     for(int i=0;i<sub_s.length();i++)
        text(sub_s.charAt(i),start_pos_x,start_pos_y+10*i);
  }
}
