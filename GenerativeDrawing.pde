size(400,400); 
background(255);
noFill();
 
/* This is added to the bezier to move it up and down randomly each time the code is run */
float changer = random(-150,height-100); 
 
/*These are randomly generating new colours for every run of the code*/
float randcolour1 = random(255);
float randcolour2 = random(255);
//this one is the hue which is part of the loop
int loopcolour = 0; 
float wave; 
 
 
/*This changes the maximum and minimum height of the amplitude*/
float ampheight = random(0.5,1.5);
 
/*This begins by picking a random number between 1 and 2 every time the code is run and based on this there is a 50% chance
if sin or cos is used to generate the bezier's curve. Then a loop used to draw many bezier curves all equidistant following the same sin or cos curve
Inside here the loopcolour variable is also looped and 1 is added to its value every time. Loopcolour is 
multipied by 3 because the y += 3 means that the loop only runs 133.3 repeater times, when I want it to run
more often so the gradient change is smoother*/
float operator = random(1,2);
   if (operator > 1.5) {
    for (float y = 0; y < height; y += 3) { 
      stroke(loopcolour*3, randcolour1, randcolour2);
      bezier(0,y,(sin(y/62.5)+ampheight)*150,100+changer,((sin(y/62.5)+ampheight)*150)+50,200+changer,400,y);
      loopcolour += 1;
  }
 }
   else {
    for (float y = 0; y < height; y += 3) {
      stroke(loopcolour*3, randcolour1, randcolour2);
      bezier(0,y,(cos(y/62.5)+ampheight)*150,100+changer,((cos(y/62.5)+ampheight)*150)+50,200+changer,400,y);
      loopcolour += 1;
  }
 }
