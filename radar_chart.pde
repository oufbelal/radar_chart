  size(300,300);
  background(190);
  
  float [] datesY = {40,60,30,90,110};
  float [] datesX = {80,120,90,60,90};
  float angle = 2*PI/5;
  float difX = width/300.0;
  float difY = height/300.0;
  
  for(int i = width/5*4; i>0;i=i-width/5*4/5){
      stroke(230);     
      noFill();
      strokeWeight(0.5);
      ellipse(width/2,height/2,i,i);    
  }

  translate(width/2,height/2);
  for(int i=0;i<5;i++){
  strokeWeight(1);
  stroke(255);
  line(0,0,0,width/2-width/15);
  rotate(radians(72));
  }
  
  strokeWeight(6);
  stroke(255,0,0);

  for (int i=0;i<datesY.length;i++){  
     point(0,datesY[i]*difY);
     rotate(radians(360/5));
   }
   
   stroke(0,255,0);
   for (int i=0;i<datesX.length;i++){     
     point(0,datesX[i]*difY);
     rotate(radians(360/5));
   }
   
   beginShape();
   for(int i=0;i<5;i++){
       stroke(255,0,0);
      float x = difX*datesY[i]*cos(PI/2+i*angle);
      float y = difY*datesY[i]*sin(PI/2+i*angle);
      vertex(x,y);
      fill(50,100,50);
      textSize(10);
      int a = int(datesY[i]);
      fill(255,50,50);
      text(a,x+10,y+10);     
      fill(200,120,20,20);
      strokeWeight(0.5);
    }
    endShape(CLOSE);
    
    beginShape();
    for(int i=0;i<5;i++){
       stroke(0,255,0);
      float x = difX*datesX[i]*cos(PI/2+i*angle);
      float y = difY*datesX[i]*sin(PI/2+i*angle);
      vertex(x,y);
      fill(50,100,50);
      textSize(10);
      int a = int(datesX[i]);
      text(a,x+10,y+10);
       fill(50,250,120,20);
      strokeWeight(0.5);
     }
     endShape(CLOSE);
     
     save("activity_14");
