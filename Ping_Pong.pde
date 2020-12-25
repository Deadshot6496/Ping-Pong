

int window_width = 600, window_height = 800;

int slider_height = 30, slider_wid = 100;

int player1_pos_x = window_width / 2 - slider_wid / 2;

int player2_pos_x = window_width / 2 - slider_wid / 2;

long previous_millis = 0;

void setup() {
  size(600, 800);
  background(0);
   frameRate(100);
  smooth();
}


void draw()
{
  background(0);
  rect(player1_pos_x, 769, slider_wid, slider_height);
  rect(player2_pos_x, 0, slider_wid, slider_height);

  player_controls();

  player_pos_locker();
}

void player_controls()
{
  if (keyPressed)
  {
    switch(key)
    {
    case 'j':
      {
        player2_pos_x -= 5;
        break;
      }
    case 'l':
      {
        player2_pos_x += 5;
        break;
      }
    default:
      {
      }
    }
  }
  print(player2_pos_x);
}

void player_pos_locker()
{
  player2_pos_x = (player2_pos_x > window_width - slider_wid) ? window_width - slider_wid : 
    (player2_pos_x < 0) ? 0 : player2_pos_x;

  player1_pos_x = (player1_pos_x > window_width - slider_wid) ? window_width - slider_wid : 
    (player1_pos_x < 0) ? 0 : player1_pos_x;
}
