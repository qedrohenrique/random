int[] arr = new int[32];

void setup(){
 size(805, 600);
 for(int i = 0; i < arr.length; i++){
  arr[i] = (int) random(1, 250); 
 }
}

boolean isSorted(int[] arr){
  for(int i = 1; i < arr.length; i++){
    if(arr[i-1] > arr[i]) return false;
  }
  return true;
}

void searchGreenAnim(int c){
  int min = 251, posGreen = start;
  
  if(c == arr.length){
   start++;
   count = start;
  }
  
  for(int i = start; i <= count; i++){
   fill(255,0,0);
   rect(5+i*25, height - 10, 20, -arr[i]);
   if(arr[i] < min){
     min = arr[i];
     fill(255,0,0);
     rect(5+posGreen*25, height - 10, 20, -arr[posGreen]);
     posGreen = i;
     fill(0,255,0);
     rect(5+i*25, height - 10, 20, -arr[i]);
   }
  }
  
  if(c == arr.length - 1){
    int aux = arr[posGreen];
    arr[posGreen] = arr[start];
    arr[start] = aux;
  }
}

int count = 0;
int start = 0;

void draw(){
  
  background(255);
  fill(0);
  
 for(int i = 0; i < arr.length; i++){
  rect(5+i*25, height - 10, 20, -arr[i]);
 }
 
 if(!isSorted(arr)) searchGreenAnim(count);
 
 count++;
}
