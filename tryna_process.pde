//int grid1CenterX = 50;
//int grid1CenterY = 40;
//int grid2CenterX = 150;
//int grid2CenterY = 40;
//int grid3CenterX = 50;
//int grid3CenterY = 160;
//int grid4CenterX = 50;
//int grid4CenterY = 300;
//int grid5CenterX = 150;
//int grid5CenterY = 300;
//int grid6CenterX = 250;
//int grid6CenterY = 300;
//int gridColorCenterX = 250;
//int gridColorCenterY = 40;

//Corner refers to Upper Left Corner
int grid1CornerX = 51;
int grid1CornerY = 40;
int grid2CornerX = 151;
int grid2CornerY = 40;
int grid3CornerX = 50;
int grid3CornerY = 160;
int grid4CornerX = 50;
int grid4CornerY = 300;
int grid5CornerX = 150;
int grid5CornerY = 300;
int grid6CornerX = 250;
int grid6CornerY = 300;
int gridColorCornerX = 250;
int gridColorCornerY = 40;

void setup()
{
  size( 3000, 3400 );
}

void draw()
{
  background( 255 );
  
  //GRID 1
  stroke( 0 );
  for( int i = 0; i < 90; i += 10 )
  {
    for( int j = 0; j < 80; j += 10 )
    {
      if( ((i/10) % 2 == 1) )
      {
        if( (j/10) % 2 != 0 )
        {
          fill( 0, 0, 0, 10 );
          ellipseMode( CORNER );
          ellipse( grid1CornerX + i, grid1CornerY + j, 10, 10 );
        }  
      }
      else if( (j/10) % 2 == 0 )
      {
        fill( 5, 100, 50, 100 );
        ellipseMode( CORNER );
        ellipse( grid1CornerX + i, grid1CornerY + j, 10, 10 );
      }
    }
  }
  
  ////GRID 2
  //stroke( 0 );
  //for( int i = 0; i < 90; i += 10 )
  //{
  //  for( int j = 0; j < 80; j += 10 )
  //  {
  //    if( ((i/10) % 2 == 1) )
  //    {
  //      if( (j/10) % 2 != 0 )
  //      {
  //        fill( 0, 0, 0, 10 );
  //        ellipseMode( CORNER );
  //        ellipse( grid2CornerX + i, grid2CornerY + j, 10, 10 );
  //      }  
  //    }
  //    else if( (j/10) % 2 == 0 )
  //    {
  //      fill( 5, 100, 50, 100 );
  //      ellipseMode( CORNER );
  //      ellipse( grid2CornerX + i, grid2CornerY + j, 10, 10 );
  //    }
  //  }
  //}
  
  
  
  
  
  ////GRID 4
  //int grid4Counter = 0;
  //int maxCounter = 2^15;
  //stroke( 0 );
  //for( int c = 2; c < maxCounter; c *= 2 )
  //{
  //  int localMaxCounter = 2^5;
  //  int localCounter = 2;
  //  for( int i = 0; i < 90; i += 10 )
  //  {
  //    for( int j = 0; j < 80; j += 10 )
  //    {
  //      int xPos = grid4CornerX + i;
  //      int yPos = grid4CornerY + j;
        
  //      if( c <= localMaxCounter )
  //      {
  //        localCounter *= 2;
  //      }
  //      else
  //      {
  //        localCounter = 2;
  //      }
        
  //      while( xPos > 80 || yPos > 80 )
  //      {
  //        xPos -= 80;
  //        yPos += xPos;
  //        if( yPos > 80 );
  //        {
  //          yPos -= 80;
  //        }
  //        if( xPos < 0 )
  //        {
  //          xPos = 0;
  //        }
  //        if( yPos < 0 )
  //        {
  //          yPos = 0;
  //        }
  //      }
  //      fill( 5, 100, 50, 100 );
  //      ellipseMode( CORNER );
  //      ellipse( xPos + localCounter, yPos + localCounter, 10, 10 );
  //    }
  //  }
  //}
  
  
  ////GRID 1
  //stroke( 0 );
  //for( int i = 1; i < 90; i += 10 )
  //{
  //  for( int j = 0; j < 80; j += 10 )
  //  {
  //    fill( 0, 0, 0, 10 );
  //    ellipseMode( CORNER );
  //    ellipse( grid1CornerX + i, grid1CornerY + j, 10, 10 );
  //  }
  //}
}