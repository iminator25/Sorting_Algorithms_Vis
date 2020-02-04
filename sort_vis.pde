void setup() {
 size(800,800);
 surface.setResizable(true);
 //rect(100,100,100,100);
 //for(int i = 0; i < 100; i++) {
 //  line(i, i, i, i);
 //  rect(0,i,i,12); 
 //}
 
 // array to be sorted initialized
 int[] arr;
 arr = new int[1000];
 
for (int i = 0; i < 800; i =i+10) {
  float r = (int)random(100);
  arr[i] = (int)r;
  rect(i,400,10,-r);
}
println(arr[0]);
}
