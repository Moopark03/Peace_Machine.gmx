switch (mpos)
{
    case 0:
    {
        score = 0;
        room_goto(rm_rm1);
        lives = 3;
        break;
    }
    case 1:
    {
        score = score - global.currentscore;
        global.currentscore = 0;
        room_restart();
        break;

    }
    case 2:
    {
        game_end();
        break;
    }


}