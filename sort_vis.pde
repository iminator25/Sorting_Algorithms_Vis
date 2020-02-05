void setup() {
 size(1000,220);
 surface.setResizable(true);
 //rect(100,100,100,100);
 //for(int i = 0; i < 100; i++) {
 //  line(i, i, i, i);
 //  rect(0,i,i,12); 
 //}
 
 // array to be sorted initialized with each number corresponding to the 
 // correct index. These will be the heights of the columns. 
 int[] arr;
 arr = new int[101];
 
 // Popluate an array with numbers 1 to 100 in order
 for (int i=1; i<101; i++) {
   arr[i] = i;
 }
 
 // Randomizing the array 
 
 // Print the rectangles onto the screen with a width of 10 and 10 pixels apart 
 for (int i = 0, count = 0; i<1000; i=i+10) {
   rect(i,200,10,-arr[count]);
   println(count);
   count++;
 }
 
 // populates the screen with rectangles of random hight 
//for (int i = 0; i < 800; i =i+10) {
//  float r = (int)random(100);
//  arr[i] = (int)r;
//  rect(i,200,10,-r);
//}
println(arr);
//println(length(arr);)

 int[] sorted_arr;
 int low = 0;
 int high = 100;
 



}
