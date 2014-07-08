run("Images to Stack", "name=Stack title=[] use");
run("Z Project...", "start=1 stop=12 projection=[Max Intensity]");
selectWindow("Stack");
run("Z Project...", "start=1 stop=12 projection=Median");
imageCalculator("Difference create", "MAX_Stack","MED_Stack");

selectWindow("MED_Stack");
close();
selectWindow("Result of MAX_Stack");

selectWindow("MAX_Stack");
close();
selectWindow("Result of MAX_Stack");

selectWindow("Stack");
close();
selectWindow("Result of MAX_Stack");

// save the file here
waitForUser("Save"); 

run("Gaussian Blur...", "sigma=1");

run("Window/Level...");
run("Enhance Contrast", "saturated=0.35");
run("Close");

run("Camera setup", "isemgain=false pixelsize=1.0 offset=400.0 photons2adu=3.6");


