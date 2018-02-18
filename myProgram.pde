/* 
 * STREAM OF CONSCIOUSNESS ASSIGNMENT
 * SAD GIRL: ONE LINE POETRY BY FIONA TRAN
 *
 * A program that randomly generates simple poems and titles
 * based on lists of nouns, adjectives, and verbs
 * created through streams of consciousness.
 * The sentence structure is
 * ADJ NOUN VERB NOUN.
 * Each mouse click generates a new poem.
 * Complete with a self-made animation.
 *
 * Created for VIS 145A WINTER JAN 2017
 */


PFont f;
int x = 50;
int y = 50;
int ranAdj= (int) random(20);
int ranVer= (int) random(20);
int ranBod= (int) random(20);
int ranThi= (int) random(20);
int ranTA= (int) random(20);
int ranTN= (int) random(20);

String poem;
String title;

int clickCount=0;
int bg = 0; //bacground color
Animation background;

void setup() {
  //set the background color
  background(bg);
  size(640,360);
  
  
  
  background = new Animation ("poems",4);
  
}

void draw(){
  frameRate(10);
  //background.display(width/2,height/2);
  background.display(0,0);
   //background(0);
  
  //create the top text with instructions
  //create the font
  f = createFont("HelveticaNeue-Italic", 15, true); 
  textFont(f);
  fill(114,164,216);
  text( "SAD GIRL: ONE LINE POEMS (click to create)", 10, 20);
  
  //create margin
  int margin = 10;
  translate(margin*4, margin*4);
  
  //title adjective part
  String [] titleA = new String[20];
  titleA[0] = "HUMBLE";
  titleA[1] = "WET";
  titleA[2] = "CARELESS";
  titleA[3] = "EXHAUSTING";
  titleA[4] = "ENDEARING";
  titleA[5] = "SOFT";
  titleA[6] = "MODERN";
  titleA[7] = "FEARLESS";
  titleA[8] = "LOUD";
  titleA[9] = "INCOHERENT";
  titleA[10] = "THIN";
  titleA[11] = "LATE";
  titleA[12] = "VIOLENT";
  titleA[13] = "GRIEVING";
  titleA[14] = "MAMA'S";
  titleA[15] = "BABY'S";
  titleA[16] = "WILD";
  titleA[17] = "TIRED";
  titleA[18] = "PALE";
  titleA[19] = "UGLY";
  
  //Title noun part
  String [] titleN = new String[20];
  titleN[0] = "MOVE";
  titleN[1] = "DANCES";
  titleN[2] = "STEPS";
  titleN[3] = "CALLS";
  titleN[4] = "BREEZE";
  titleN[5] = "CRY";
  titleN[6] = "YAWN";
  titleN[7] = "KISS";
  titleN[8] = "MOODS";
  titleN[9] = "PULL";
  titleN[10] = "DAWN";
  titleN[11] = "DREAM";
  titleN[12] = "NIGHT";
  titleN[13] = "SIGH";
  titleN[14] = "DELIGHTS";
  titleN[15] = "DRAMA";
  titleN[16] = "WISHES";
  titleN[17] = "NIGHTMARE";
  titleN[18] = "ROMANCE";
  titleN[19] = "DRINK";
  
  
  
  //Arrays of words for sentence structures
  String [] adjR = new String[20];
  adjR[0] = "Innocent";
  adjR[1] = "Tasty";
  adjR[2] = "Young";
  adjR[3] = "Terrified";
  adjR[4] = "Graceful";
  adjR[5] = "Hazy";
  adjR[6] = "Sublime";
  adjR[7] = "Whimsical";
  adjR[8] = "Bewildered";
  adjR[9] = "Breathtaking";
  adjR[10] = "Suffocating";
  adjR[11] = "Heavy";
  adjR[12] = "Timeless";
  adjR[13] = "Wise";
  adjR[14] = "Hungry";
  adjR[15] = "Restless";
  adjR[16] = "Relentless";
  adjR[17] = "Peculiar";
  adjR[18] = "Sober";
  adjR[19] = "Drunk";
  
  String [] bodyR = new String[20];
  bodyR[0] = "hearts";
  bodyR[1] = "eyes";
  bodyR[2] = "boys";
  bodyR[3] = "fingers";
  bodyR[4] = "hands";
  bodyR[5] = "shoulders";
  bodyR[6] = "hips";
  bodyR[7] = "poets";
  bodyR[8] = "ears";
  bodyR[9] = "couples";
  bodyR[10] = "realities";
  bodyR[11] = "wrists";
  bodyR[12] = "bones";
  bodyR[13] = "jaws";
  bodyR[14] = "lovers";
  bodyR[15] = "girls";
  bodyR[16] = "teenagers";
  bodyR[17] = "enemies";
  bodyR[18] = "politicians";
  bodyR[19] = "faces";
  
  String [] verbR = new String[20];
  verbR[0] = "grow up in";
  verbR[1] = "ask for";
  verbR[2] = "yearn for";
  verbR[3] = "chase after";
  verbR[4] = "stray from";
  verbR[5] = "singing for";
  verbR[6] = "opposed to";
  verbR[7] = "lacking of";
  verbR[8] = "filled with";
  verbR[9] = "leaning towards";
  verbR[10] = "reaching for";
  verbR[11] = "searching for";
  verbR[12] = "living with";
  verbR[13] = "dreaming of";
  verbR[14] = "choking from";
  verbR[15] = "comsumed with";
  verbR[16] = "overwhelmed with";
  verbR[17] = "waiting for";
  verbR[18] = "breathing in";
  verbR[19] = "observing";
  
  String [] thingR = new String[20];
  thingR[0] = "warmth";
  thingR[1] = "blisters";
  thingR[2] = "respect";
  thingR[3] = "Obama";
  thingR[4] = "love";
  thingR[5] = "feelings";
  thingR[6] = "memories";
  thingR[7] = "regret";
  thingR[8] = "melancholy";
  thingR[9] = "anger";
  thingR[10] = "the truth";
  thingR[11] = "doubt";
  thingR[12] = "grief";
  thingR[13] = "happiness";
  thingR[14] = "the cold";
  thingR[15] = "emptiness";
  thingR[16] = "sacrifice";
  thingR[17] = "forever";
  thingR[18] = "nothingness";
  thingR[19] = "alternative facts";
  

  //Call mehtod to create a new title
  newTitle(titleA[ranTA],titleN[ranTN]);
  
  //Call the method to create a new line
  newLine(adjR[ranAdj], bodyR[ranBod], verbR[ranVer], thingR[ranThi]);
  

}

//Method that describes what happens when the mouse is clicked
void mouseClicked() {
  clear();
  background(bg);
  ranAdj= (int) random(20);
  ranVer= (int) random(20);
  ranBod= (int) random(20);
  ranThi= (int) random(20);
  ranTA= (int) random(20);
  ranTN= (int) random(20);
  
  clickCount++;
  
}

//Method tthat creates the poem
void newLine ( String adj, String body, String verb, String thing) {
  if (clickCount == 0){
  }
  else{
    color text = color(255);
    poem = adj + " " + body + " " + verb + " " + thing + ".";
    f = createFont("HelveticaNeue-LightItalic", 20, true); 
    textFont(f);
    fill(text);
    text( poem , x , y + 30, 200,200);
  }
}

//Method to generate title
void newTitle ( String titleA, String titleN) {
  if (clickCount == 0){
  }
  else{
    color text = color(255);
    title = titleA+ " " + titleN + "--";
    f = createFont("HelveticaNeue-Italic", 20, true); 
    textFont(f);
    fill(text);
    text( title , x , y);
  }
}

//method to animate the back ground
class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];
    
    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + "-0"+ i + ".png";
      images[i] = loadImage(filename);
      //images[i].resize(width/2,height/2);  
    }
  }

  void display(float xpos, float ypos) {
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  }
  
  int getWidth() {
    return images[0].width;
  }
}