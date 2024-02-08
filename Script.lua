--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		playMusic("")
		setBackground("")
		createTextfield("you ar in front of a german camp, and you are looking for general Hans von Ahlfen to kill him. MISSION: KILL GENERAL HANS VON AHLFEN TRY TO NOT GET SPOTTED AND KILLED")
		createButton("exit", "you are scared and you don't enter'")
		createButton("entrance","enter the german camp and kill Hans von Ahlfen")
	end
		if(aName == "entrance") then
		playMusic("")
		setBackground("")
		createTextfield("you entered the camp")
		createButton("go right", "go right'")
		createButton("go left","go left")
		createButton("go the basement","go to basement")
		createButton("go forward","go forward")
	end
		if(aName == "basement") then
		playMusic("")
		setBackground("")
		createTextfield("you are in the basement seems no one is here")
		createButton("go to basement", " go look for general Hans von Ahlfen'")
		createButton("leave","you leave and go back to entrance")
	end
	
	if(aName == "exit") then
		exitGame();
	end
end

