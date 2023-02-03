public void setup(){
  size(500, 500);
  background(255);
  frameRate(20);
  noStroke();
}

int z = 0;
boolean increase = true;
int c = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

public void draw(){
  fill(c);
  if(increase){
      background(255);
      z+=20;
      sierpinski(0, 500, z, 1);
      sierpinski(500, 500, z, 2);
      sierpinski(500, 0, z, 3);
      sierpinski(0, 0, z, 4);
      
      if(z>2000){
        increase = false;
      }
  }else{
    background(255);
      z-=20;
      sierpinski(0, 500, z, 1);
      sierpinski(500, 500, z, 2);
      sierpinski(500, 0, z, 3);
      sierpinski(0, 0, z, 4);
      
      if(z<=0){
        increase = true;
        c = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

      }
    }
 
   
}
public void sierpinski(int x, int y, int len, int corner){
  if(corner == 1){
    if(len <= 10){
      triangle(x, y, x + len, y, x + len/2, y - len);
    }else{
      sierpinski(x, y, len/2, corner);
      sierpinski(x+len/2, y, len/2, corner);
      sierpinski(x+len/4, y-len/2, len/2, corner);
    }
  }else if(corner == 2){
    if(len <= 10){
      triangle(x, y, x + len, y, x + len/2, y - len);
    }else{
      sierpinski(x, y, len/2, corner);
      sierpinski(x-len/2, y, len/2, corner);
      sierpinski(x-len/4, y-len/2, len/2, corner);
  }
}else if(corner == 3){
    if(len <= 10){
      triangle(x, y, x + len, y, x + len/2, y + len);
    }else{
      sierpinski(x, y, len/2, corner);
      sierpinski(x-len/2, y, len/2, corner);
      sierpinski(x-len/4, y+len/2, len/2, corner);
  }
}else if(corner == 4){
    if(len <= 10){
      triangle(x, y, x + len, y, x + len/2, y + len);
    }else{
      sierpinski(x, y, len/2, corner);
      sierpinski(x+len/2, y, len/2, corner);
      sierpinski(x+len/4, y+len/2, len/2, corner);
  }
}
}
