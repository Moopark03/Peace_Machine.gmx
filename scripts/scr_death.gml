if (global.checkpointR != 0 && lives > 1) //if it is 0 we have no check points

{
    room_goto(global.checkpointR); //To put in checkpoints, remember to save the full score at that to a different variable and restore score to that score when dying.
    lives -= 1;
}

if (global.checkpointR == 0 && lives > 1)
{
    lives-= 1;
    score = score - global.currentscore;
    room_restart();
}

else
{
    if(global.highscore < score) global.highscore = score;
    score = 0;
    game_restart();
}