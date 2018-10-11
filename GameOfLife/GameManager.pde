public class GameManager{

int edgeX=numberOfRows-1;
int edgeY=numberOfColumns-1;

  void update(){

    for(int y=0; y<numberOfColumns; y++){
      for(int x=0; x<numberOfRows; x++){



        int neighbors=0;

        if((cells[x][y].alive==true)) ;

    if(x!=0&&y!=0&&y!=edgeY&&x!=edgeX){

        if((cells[x][y+1].alive==true)) neighbors++;

        if((cells[x][y-1].alive==true)) neighbors++;

        if((cells[x+1][y].alive==true)) neighbors++;

        if((cells[x+1][y+1].alive==true)) neighbors++;

        if((cells[x+1][y-1].alive==true)) neighbors++;

        if((cells[x-1][y].alive==true)) neighbors++;

        if((cells[x-1][y+1].alive==true)) neighbors++;

        if((cells[x-1][y-1].alive==true)) neighbors++;

    }


      if((cells[x][y].alive==true) && neighbors<2) cells[x][y].alive=false;

      else if((cells[x][y].alive==true) && neighbors>3) cells[x][y].alive=false;

      else if((cells[x][y].alive==false) && neighbors==3) cells[x][y].alive=true;

      else if((cells[x][y].alive==true) && neighbors==2) cells[x][y].alive=true;

      }
    }

  }//end of class


}
