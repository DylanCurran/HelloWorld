float dice1 = 0;
float dice2 = 0;
float sum = 0;
float TOTAL_RECTS = 20;
float zero =0;
float counter[] = new float[1000];
void setup()
{
  background(255);
  size(400,400);
  for (int i = 0; i < 1000; i++)
  {
    counter[i] = 0;
  }
  
}
void draw()
{
  dice1 = randomGaussian();
  
 float index = dice1 / 400;
  counter[int(index)] = counter[int(index)] + 1;
  if(dice1 >0)
  {
  line(dice1* 30 + 200,0,dice1* 30 + 200,  counter[int(index)]/ (dice1 * 100));
  }
  else if (dice1 < 0)
  {
    line(dice1* 30 + 200,0,dice1* 30 + 200,  counter[int(index)]/ (-dice1 * 100));
  }
  else
  {
    line(dice1* 30 + 200,0,dice1* 30 + 200,  zero);
    zero = zero + 0.1;
  }
  stroke(int(random(1,255)),int(random(1,255)), int(random(1,255)));
  strokeWeight(1);
  
  
  sum = 0;
}
