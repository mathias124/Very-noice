void setup(){//laver setupet kører kun 1 gang.
  size(200,200);// laver skærmen.
  frameRate(1);//gør så frameraten er 1 så man kan se det lidt langsomere.
  colorMode(HSB);
}
float c;//rainbue float

void draw(){//tegner en funktion som kører 30gange i sekunder, men pga af frame er det nedsat.
 if(c>=255) c=0; else c++;// sammenhæng med colormode og background til at blive rainbue
  background(c,255,255);//synes det mangler noget farve og så trist ud, så den blev sgu rainbow :)(den er langsom til at skifte pga framerate)
for(int i=0;i<6;i++){//laver antallet af grapher og styrer søjler i dette tilfælde.
fill(35,105,225);// gør så søjlerne blive gule
  rect(0,i*10,int(random(1,100)),6);//gjorde det til 100 så det er mere tydeligt at see. (dette skaber 6 søjler i sammenhæng med for int i, og 0 er starting sted, og 6 er hvor tyk. 
  //Hvis jeg erstattede 100 med 6 så vil det stadig virke dog ikke så synligt som lige nu
 
 
int[] terning=new int[6];//skriver tallene i sammehæng med print Array i de 5 cologner. og er selve funktionen der for det hele igang, sammen med int count nedenunder, gør at der er 6 tal(dog siger den 0 istedet for 6)
for(int count = 0; count <terning.length;count=count+1)//her counter then antal slag.
{
  terning[count]=int(random(1,7)); //gør at det man slår bliver mellem 1 til 6.
 print(terning[count]+"");//printer terningens kast ud.
}
printArray(terning);// en anden version af println borset fra at den laver coloner-ish, så man kan se det i flere tal på en gang i consolen.
println();// printer i consolen.
}
}//note kunne ikke fikse hvorfor søjlerne "stackede" ovenpå hinaden.
