GameObject cells[][];
GameManager manager;

float cellSize=10;
int numberOfColumns;
int numberOfRows;
int fillPercentage=5;

  void setup(){

    size(600, 600);
    ellipseMode(LEFT);
    frameRate(4);

    numberOfColumns= (int)Math.floor(width/cellSize);
    numberOfRows=(int)Math.floor(height/cellSize);

    cells = new GameObject[numberOfColumns][numberOfRows];
    manager = new GameManager();

    for(int y=0; y<numberOfColumns; y++){
      for(int x=0; x<numberOfColumns; x++){

        cells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);

          if(random(0,100)>fillPercentage){
          cells[x][y].alive=false;
            }

      }
    }



  }

  void draw(){
  background(255);

      for(int y=0; y<numberOfColumns; y++){
      for(int x=0; x<numberOfColumns; x++){

        manager.update();
        cells[x][y].draw();

       }
    }
delay(1000);


}
