int n = 100;
int array[] = new int[n];

void setup()
{
  size(600,600);
  array = create_random_array(n, width / 2);

}

void draw()
{
  background(0);
  int i, j, temp;
  
  for (i = 0; i < n; i++)
  {
    temp = array[i];
    for (j = i; j > 0 && array[j - 1] > temp; j--)
    {
      array[j] = array[j - 1];
    }
    array[j] = temp;
    plot_array(array, n);
  }
}

int[] create_random_array(int n, int max)
{
  int[] x = new int[n];
  for (int i = 0; i < n; i++)
  {
    x[i] = int(random(max));
  }
  return x;
}

void plot_array(int[] x, int s)
{
  for (int i = 0; i < s; i++)
  {
    rect(0, height / s * i, x[i], height / s);
  }
}

void mouseClicked() 
{
  array = create_random_array(n, width / 2);  
}