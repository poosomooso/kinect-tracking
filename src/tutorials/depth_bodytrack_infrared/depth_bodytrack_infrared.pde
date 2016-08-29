import KinectPV2.*;

KinectPV2 kinect;

void setup() {   
  size(1536, 424);   
  kinect = new KinectPV2(this);   
  kinect.enableDepthImg(true);   
  kinect.enableInfraredImg(true);   
  kinect.enableBodyTrackImg(true);   
  kinect.init();
}  

void draw() {   
  background(0);    
  image(kinect.getDepthImage(), 0, 0);   
  image(kinect.getBodyTrackImage(), 512, 0);   
  image(kinect.getInfraredImage(), 512*2, 0);
} 