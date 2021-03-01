
PImage imgSrc;

void setup () {
  size(640, 480);

  imgSrc = loadImage("sample.jpg");
}

void draw () {
  background(0);
//  // metodo fit: cubrir ell ancho del canvas con la imagen
//  float widthImg = width;
//  float heightImg = (imgSrc.height * width) / imgSrc.width;

//  float y = (height - heightImg) /2.0;

//  image(imgSrc, 0, y, widthImg, heightImg);
//
          //metodo fill: cubrir el alto del canvas 
          
         float widthImage = (imgSrc.width * height) / imgSrc.height   ;
         float heightImage =  height  ;
         
         float x = (widthImage - width) / 2.0;
         
         image(imgSrc, -x , 0, widthImage, heightImage);
}


void drawImage(boolean fit){
    float x, y, widthImage, heightImage;

  if (fit){
    widthImage = width;
    heightImage = (imgSrc.height * width) / imgSrc.width;
    
    x = 0;
    y = (widthImage - width) / 2;
  }
  //metodo fill
  else{
    widthImage = (imgSrc.width * height) / imgSrc.height;
    heightImage = height;
    
    y= 0;
    x = (widthImage - width) / -2;
  }
  
  image(imgSrc, x, y, widthImage, heightImage);
}
