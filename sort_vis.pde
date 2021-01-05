int[] arr = new int[101];

void setup() {
 size(1000,220); // sets up the size of the sketchpad
 frameRate(1);
 background(100);
 surface.setResizable(true);


 // array to be sorted initialized with each number corresponding to the 
 // correct index. These will be the heights of the columns. 
 

 // Popluate an array with numbers 1 to 100 in order
 for (int i=1; i<101; i++) {
   arr[i] = i;
 }
 
 // Trying out RandomizeArray function
 // it had repeats now I am uxing the one I found online. 
 randomize(arr);
 // I can sort it to easily see if there are repeats
 //BubbleSort(arr);
 
 // Print the rectangles onto the screen with a width of 10 and 10 pixels apart 
 for (int i = 0, count = 0; i<1000; i=i+10) {
   fill(150, 3,2); // Makes the rectangles red
   rect(i,200,10,-arr[count]);
   //println(count);
   count++;
 }
 
 // Now we need to draw the array (or the boxes being moved);
 int n = arr.length; 
       for (int i = 0; i < n-1; i++) 
       for (int j = 0; j < n-i-1; j++) 
           if (arr[j] > arr[j+1]) 
              { 
                 try {
                    Thread.sleep(1000);
                 }
                 catch(InterruptedException ex) {}
                // swap arr[j+1] and arr[i] 
                
                int temp = arr[j]; 
                rect(j,200,10,-arr[j+1]);
                rect(j+1,100,10,-arr[j]);
                arr[j] = arr[j+1]; 
                arr[j+1] = temp;
                 
                }
 
 

 
 
}

//void draw() {
//  background(100);
//  int n = arr.length;
//  for (int i = 0; i < n-1; i++) 
//  for (int j = 0; j < n-i-1; j++)
//  if (arr[j] > arr[j+1])
//  { 
//                // swap arr[j+1] and arr[i] 
//                int temp = arr[j]; 
//                background(00);
//                arr[j] = arr[j+1]; 
//                arr[j+1] = temp; 
//                }
  
  
//}

public void BubbleSort(int[] array) {
  int n = arr.length; 
       for (int i = 0; i < n-1; i++) 
       for (int j = 0; j < n-i-1; j++) 
           if (arr[j] > arr[j+1]) 
              { 
                // swap arr[j+1] and arr[i] 
                int temp = arr[j]; 
                arr[j] = arr[j+1]; 
                arr[j+1] = temp; 
                }
}

public void QuickSort(int[] array) {
  int n = array.lenght()
  print(n)

}





// ============================================================================================================
// Methods 

 // Randomizing the array function this randomizes position in array but allows for duplicates. 
 // I am trying to make a function that does not allow repeats. 
 int[] RandomizeArray(int[] array){
   
   for (int i = 0; i<array.length; i++) {
     float random_num0 = random(9999);
     float random_num1 = random(9999);
     int new_index = (int)((random_num0*random_num1)%100);
     array[i] = array[(int)new_index];
   } 
   return array;
 }
 
 // Method for shuffling found on google 
 //https://forum.processing.org/one/topic/i-made-a-shuffle-for-arrays.html
 //method for randomizing
void randomize (int[] arrMy) {
  for (int k=0; k < arrMy.length; k++) {
    // Goal: swap the value at pos k with a rnd value at pos x.
    // Make rnd index x
    int x = (int)random(0, arrMy.length);    
    // swap pos k and x
    arrMy = swapValues(arrMy, k, x);
  } // for
  // display(a, 39);
  //return arrMy;
} 
// implements the swap values 
int[] swapValues (int[] myArray, int a, int b) {
  // Goal: swap the value at pos a with a value at pos b in
  // Array myArray, return the changed array. 
  // save current value from pos/index a into temp
  int temp=myArray[a];
  // overwrite value at current pos a with value at index b
  myArray[a]=myArray[b];
  // finish swapping by giving the old value at pos a to the
  // pos b.
  myArray[b]=temp;
  // return the changed array
  return myArray;
} // func
//

// Bubble sort algorithm 






 
