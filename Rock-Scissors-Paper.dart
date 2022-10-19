import 'dart:io';
 import 'dart:math';

 enum move {rock, paper, scissors}
 void main() {

  int wScore = 0;
  int dScore = 0;
  int lScore = 0;

while(true){

  stdout.write('Welcome to my game please enter your option =  ');
    final input = stdin.readLineSync();  
    var playerMove;
    
    // Selecting player move 
    if(input == 'r')
    {
       playerMove = move.rock;
    }
    else if(input == 'p')
    {
      playerMove = move.paper;
    }
    else if(input == 's')
    {
      playerMove = move.scissors;
    }
    else if(input == 'exit' )
    {
      break;
    }else{
      print('undefined move, try again!');
    }
  
    // Selecting random pc movement
    final randomNum = Random().nextInt(3);
    final pcMove = move.values[randomNum];

    // Writing player move and pc move
    if(playerMove != null)
    {
    
    print('You played : $playerMove');
    print('Pc played :  $pcMove');
    }
    // Algorithm
    if(playerMove == move.rock && pcMove == move.scissors ||
       playerMove == move.paper && pcMove == move.rock ||
       playerMove == move.scissors && pcMove == move.paper)
       {
          print('You win');
          wScore++;
       }
    else if(playerMove == pcMove)
    {
      print('Draw');
      dScore++;
    }
    else if(pcMove == move.rock && playerMove == move.scissors ||
            pcMove == move.paper && playerMove == move.rock ||
            pcMove == move.scissors && playerMove == move.paper)
       {
          print('You lost');
          lScore++;
       }
       print('Your score = ' + wScore.toString());
       print('Draw score = '+ dScore.toString());
       print('Ai score = ' + lScore.toString());

       if((wScore + lScore == 5) && (wScore > lScore))
       {
        print('You win this game');
        stdout.write('You want to play again ? yes or no =  ');
        final input1 = stdin.readLineSync(); 

        if(input1 == 'yes')
        {
           wScore = 0;
           dScore = 0;
           lScore = 0;
        }
        if(input1== 'no')
        {
          break;
        }
        else if(input1 != 'yes' || input1 != 'no'){
          print('Undefined value entered, game exit !');
         break;
       }
        
       }
       else if((wScore + lScore == 5) && (wScore < lScore))
       {
        print('Ai win this game');
        stdout.write('You want to play again ? yes or no =  ');
        final input1 = stdin.readLineSync(); 

        if(input1 == 'yes')
        {
           wScore = 0;
           dScore = 0;
           lScore = 0;
        }
        if(input1== 'no')
        {
          break;
        }
        else if(input1 != 'yes' || input1 != 'no'){
        print('Undefined value entered, game exit !');
        break;
       }
        


       }
      
     } 
  }