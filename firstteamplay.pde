float [] x, y, d, xx, yy; //d: 비율, xx: x축 증가량, yy: y축 증가량
int state = 0, delay =0;
float w2,h2;
void setup() {
  size(1000, 900);
  w2 = width/2;
  h2 = height/2;
  x = new float[12];
  y = new float[12];
  d = new float[12];
  xx = new float[12];
  yy = new float[12];
  for (int i=0; i<12; i++) {
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(5, 10);
    xx[i] = random(3, 5);
    yy[i] = random(3, 5);
  x[7] = 155; y[7] = 800; d[7] = 2;
  x[11] = 155; y[11] = 850; d[11] = 5;
  }
}
void draw() {
  if (state == 0){
    readyToStart();
  } else if (state == 1) {  // 2. playing
    playing(); 
  } else if (state == 2){    //   3. gameover
     gameOver1();
  } else {    //   3. gameover
    gameOver2();
  }
}
void keyPressed() {
  if (key == 'a') x[7] -= 10;
  else if (key == 'd') x[7] += 10;
  else if (key == 'w') y[7] -= 10;
  else if (key == 's') y[7] += 10;
  else if (key == 'h') x[11] -= 10;
  else if (key == 'k') x[11] += 10;
  else if (key == 'u') y[11] -= 10;
  else if (key == 'j') y[11] += 10;
}

void mousePressed() {
  if (state == 0) { // 1. ready to restart
    if(mouseX>400 && mouseX<600 && 
       mouseY>350 && mouseY<450) state = 1;
  } else if (state != 1) { 
    state = 0;
  }
}

void readyToStart(){
  background(178, 235, 244);
  fill(188, 36, 36); //트랙 색
  stroke(178, 235, 244); //하늘 색
  square(-2, 750, 1002); //트랙
  strokeWeight(8); //사이 선 굵기
  stroke(255); //사이 선 색
  line(-2, 825, 1002, 825); //선 좌표
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(150, 750, 50, 900); //start 사각형
  //for 사용하기 위해 4개 변수
  for (float c=150; c<200; c+=20) {
    for (float v=750; v<900; v+=20) {
      fill(0); //첫 흑
      square(c, v, 10);
    }
  }
  for (float b=160; b<200; b+=20) {
    for (float n=760; n<900; n+=20) {
      fill(0); //두번째 흑
      square(b, n, 10);
    }
  }
  fill(255,255,255);
  rect(400, 350, 200, 100);
  fill(0, 0, 0);
  textSize(70);
  text("START", 400, 430);
}

void playing(){
  background(178, 235, 244);
  fill(188, 36, 36); //트랙 색
  stroke(178, 235, 244); //하늘 색
  square(-2, 750, 1002); //트랙
  strokeWeight(8); //사이 선 굵기
  stroke(255); //사이 선 색
  line(-2, 825, 1002, 825); //선 좌표
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(150, 750, 50, 900); //start 사각형
  //for 사용하기 위해 4개 변수
  for (float c=150; c<200; c+=20) {
    for (float v=750; v<900; v+=20) {
      fill(0); //첫 흑
      square(c, v, 10);
    }
  }
  for (float b=160; b<200; b+=20) {
    for (float n=760; n<900; n+=20) {
      fill(0); //두번째 흑
      square(b, n, 10);
    }
  }
  for (int i=0; i<12; i++) { //12개
    if (i < 3) { //돌아댕기는 토끼
      x[i] += xx[i];
      y[i] += yy[i];
      pkm(x[i], y[i], PI, d[i]);
      if (x[i]>width) xx[i] = -xx[i];
      if (x[i]<0) xx[i] = -xx[i];
      if (y[i]>height) yy[i] = -yy[i];
      if (y[i]<0) yy[i] = -yy[i];
    } else if (i==3) { //마우스 토끼
      x[i] = mouseX;
      y[i] = mouseY;
      pkm(x[i], y[i], PI, d[i]);
    } else if (i < 7) {  //돌아댕기는 곰
      x[i] += xx[i];
      y[i] += yy[i];
      khj(x[i], y[i], d[i]);
      if (x[i]>width) xx[i] = -xx[i];
      if (x[i]<0) xx[i] = -xx[i];
      if (y[i]>height) yy[i] = -yy[i];
      if (y[i]<0) yy[i] = -yy[i];
    } else if (i==7) { //키패드 곰
      khj(x[i], y[i], d[i]);
    } else if (i<11) { //돌아댕기는 춘식이
      x[i] += xx[i];
      y[i] += yy[i];
      syj(x[i], y[i], d[i]);
      if (x[i]>width) xx[i] = -xx[i];
      if (x[i]<0) xx[i] = -xx[i];
      if (y[i]>height) yy[i] = -yy[i];
      if (y[i]<0) yy[i] = -yy[i];
    } else if (i==11) { //키패드 춘식이
      syj(x[i], y[i], d[i]);
    }
  }
  if (x[7] > 950 && y[7] >= 750 && y[7] <=950 || x[11] > 950 && y[11] >= 750 && y[11] <=950) {
    fill(255, 0, 0);
    textSize(50);
    text("GOAL!!", 850, 730);
  }
  if (x[7] > 1000 ) {//도착하면 재시작
    x[7] = 155; y[7] = 800;
    x[11] = 155; y[11] = 850;
    state = 2;
  }
  if ( x[11] > 1000 ) {//도착하면 재시작
    x[7] = 155; y[7] = 800;
    x[11] = 155; y[11] = 850;
    state = 3;
  }
}
void gameOver1() {
  background(178, 235, 244);
  fill(188, 36, 36); //트랙 색
  stroke(178, 235, 244); //하늘 색
  square(-2, 750, 1002); //트랙
  strokeWeight(8); //사이 선 굵기
  stroke(255); //사이 선 색
  line(-2, 825, 1002, 825); //선 좌표
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(150, 750, 50, 900); //start 사각형
  //for 사용하기 위해 4개 변수
  for (float c=150; c<200; c+=20) {
    for (float v=750; v<900; v+=20) {
      fill(0); //첫 흑
      square(c, v, 10);
    }
  }
  for (float b=160; b<200; b+=20) {
    for (float n=760; n<900; n+=20) {
      fill(0); //두번째 흑
      square(b, n, 10);
    }
  }
  fill(250, 0, 0);
  textSize(100);
  text("bear win", 300, 400);
}

void gameOver2() {
  background(178, 235, 244);
  fill(188, 36, 36); //트랙 색
  stroke(178, 235, 244); //하늘 색
  square(-2, 750, 1002); //트랙
  strokeWeight(8); //사이 선 굵기
  stroke(255); //사이 선 색
  line(-2, 825, 1002, 825); //선 좌표
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(150, 750, 50, 900); //start 사각형
  //for 사용하기 위해 4개 변수
  for (float c=150; c<200; c+=20) {
    for (float v=750; v<900; v+=20) {
      fill(0); //첫 흑
      square(c, v, 10);
    }
  }
  for (float b=160; b<200; b+=20) {
    for (float n=760; n<900; n+=20) {
      fill(0); //두번째 흑
      square(b, n, 10);
    }
  }
  fill(250, 0, 0);
  textSize(100);
  text("chunsik win", 300, 400);
}
