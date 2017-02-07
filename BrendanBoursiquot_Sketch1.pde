float offSetX = 0;
float offSetY = 0;
float maxOSX = 15;
float maxOSY = 50;
boolean left = true;
boolean down = true;
boolean positive = true;

void setup()
{
  size(500, 500);
  smooth();
}

// Calculate whether a monster reaches the "max"
// or "min" point of their horizontal movement
// so that they can switch directions
boolean directionX( float current )
{
  if( current == maxOSX )
  {
    maxOSX += 1;
    left = false;
  }
  else if( current == 0 )
  {
    left = true;
  }
  return left;
}

// Calculate whether a monster reaches the "max"
// or "min" point of their vertical movement
// so that they can switch directions
boolean directionY( float current )
{
  if( current == maxOSY )
  {
    maxOSY += 1;
    down = false;
  }
  else if( current == 0 )
  {
    down = true;
  }
  return down;
}

void draw()
{
  background(255, 255, 255);
  
  
  // Make a "center" variable to avoid needless math operations 
  // and to make all locations easier to comprehend
  float centerX = width/2;
  float centerY = height/2;
  
  
  // FLOATING DISK
  // Disk Edges
  stroke( 0, 0, 0 );
  ellipseMode( CENTER );
  fill(204, 200, 155, 70);
  ellipse( centerX, centerY + 50, 175, 125 );
  
  
  // MAIN TV MONSTER
  // outer TV
  strokeWeight(3);
  fill(0, 0, 0);
  rectMode( CENTER );
  rect( centerX, centerY, 100, 100 );
  
  // inner TV (the screen)
  fill(255, 237, 220);
  rectMode( CENTER );
  rect( centerX, centerY, 80, 80 );
  
  // antennas
  // first antenna
  strokeWeight(2);
  line( centerX, centerY - 50, centerX - 37.5, centerY - 87.5 );
  line( centerX, centerY - 50, centerX + 25, centerY - 62.5 );
  // second antenna
  strokeWeight(5);
  point( centerX - 37.5, centerY - 87.5 );
  point( centerX + 25, centerY - 62.5 );
  
  // frown
  strokeWeight(2);
  noFill();
  arc( centerX, centerY + 25, 50, 25, PI, 2*PI );
  
  // eyes
  fill(98, 255, 0);
  ellipse( centerX - 18.75, centerY - 12.5, 12.5, 12.5 );
  ellipse( centerX + 18.75, centerY - 12.5, 12.5, 12.5 );
  
  // eyebrows
  line( centerX - 30, centerY - 30, centerX - 7.25, centerY - 18.75 );
  line( centerX + 30, centerY - 30, centerX + 7.25, centerY - 18.75 );
  
  
  // Calculate the offset of the Oribital Monsters x-position
  // so that they can move back and forth
  if( directionX( offSetX ) )
  {
    offSetX += 1;
  }
  else
  {
    offSetX -= 1;
  }
  
  // Calculate the offset of the Oribital Monsters y-position
  // so that they can move up and down  
  if( directionY( offSetY ) )
  {
    offSetY += 1;
  }
  else
  {
    offSetY -= 1;
  }
  
  
  // ALL Orbital Monsters (OM) Positions
  // OM 1 Positions
  float om1X = centerX - 75 - offSetX;
  float om1Y = centerY - 125 + offSetY;
  
  // OM 2 Positions
  float om2X = centerX - 125 - offSetX;
  float om2Y = centerY - 25 + offSetY;
  
  //OM 3 Positions
  float om3X = centerX + 75 - offSetX;
  float om3Y = centerY - 75 - offSetY;
  
  // OM 4 Positions
  float om4X = centerX + 175 - offSetX;
  float om4Y = centerY - 25 - offSetY;
  
  
  // OM 1 DRAWING
  // BODY
  fill(180, 55, 25);
  ellipse( om1X, om1Y, 50, 50 );
  // IRIS
  fill(118, 166, 178);
  ellipse( om1X, om1Y, 40, 25 );
  // PUPIL
  fill(204, 200, 155);
  ellipse( om1X, om1Y, 7.5, 25 );
  

  // OM 2 DRAWING
  // BODY
  fill(25, 55, 180);
  ellipse( om2X, om2Y, 50, 50 );
  // IRIS
  fill(118, 166, 178);
  ellipse( om2X, om2Y, 40, 25 );
  // PUPIL
  fill(204, 200, 155);
  ellipse( om2X, om2Y, 7.5, 25 );
  
  
  // OM 3 DRAWING
  // BODY
  fill(55, 180, 25);
  ellipse( om3X, om3Y, 50, 50 );
  // IRIS
  fill(118, 166, 178);
  ellipse( om3X, om3Y, 40, 25 );
  // PUPIL
  fill(204, 200, 155);
  ellipse( om3X, om3Y, 7.5, 25 );


  // OM 4 DRAWING
  // BODY
  fill(180, 180, 185);
  ellipse( om4X, om4Y, 50, 50 );
  // IRIS
  fill(118, 166, 178);
  ellipse( om4X, om4Y, 40, 25 );
  // PUPIL
  fill(204, 200, 155);
  ellipse( om4X, om4Y, 7.5, 25 );
}