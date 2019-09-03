--myComment
Ticket = false;
function story(aName)
    if(aName == "start") then
        CLS()
		setBackground("bedroom.jpg")
		createTextfield("It's finally weekend and you're going to a concert")
		createButton("livingroom", "go to the Livingroom")
	end

	if(aName=="livingroom")then
		CLS()
		setBackground("home.jpg")
		createTextfield("After getting dressed up and eating breakfast \n you go to the concert")
		createButton("back alley", "go via the back alley it's faster")
		createButton("streets", "go via the streets it's saver")
		if(Ticket== false)then
		createButton("closet", "aren't i forgetting something")
		end
	end
	
	if(aName=="closet")then
		CLS()
		if (Ticket==false)then
		setBackground("closet.jpg")
		createTextfield("You remebered you left your tickets in you other jacket. \n You search the closet for your Ticket")
		createButton("livingroom", "You grab your Ticket")
		Ticket = true;
		end
	end

	if(aName=="back alley")then 
		CLS()
		setBackground("alley.jpg")
		createTextfield("You decide to go through the Back alley. \n Suddenly you see some angry looking thugs,  What will you do?")
		createButton("go past", "Walk past them(maybe they won't notice you) ")
		createButton("go back","i'd better return and go via the streets")
	end

	if(aName=="go past")then
		CLS()
		setBackground("shoot.jpg")
		playSound("gunshots.wav")
		createTextfield("You decide to walk past them, but they notice you \n and shoot several times.")
		createButton("hospital", "...")
	end

	if(aName=="hospital")then
		CLS()
		setBackground("hospital.jpg")
		createTextfield("You got shot in the leg, a passerby brings you to the hospital, \n your day is ruined")
		createButton("exit", "end")
	end
	
	if(aName=="go back")then
		CLS()
		createTextfield("You decide to play it safe and return")
		createButton("livingroom", "go back")
	end

	if(aName=="streets")then 
		CLS()
		setBackground("entrance.jpg")
		createTextfield("You decide to go via the streets \n and arrive safely at the concert")
		if (Ticket==false)then
		createButton("closet", "Ah you forgot your Ticket, you return home to get your Ticket")
		else
		createButton("concert", "You've got everything you need for a good time and enter the concert.")
		end
	end
	
	if (aName=="concert")then
		CLS()
		playMusic("kiss.wav")
		setBackground("kiss.jpg")
		createTextfield("You entered the the concert hall, \n the band starts playing and you have an amazing day")
		createButton("exit", "The end")
	end
	
	if(aName=="exit")then 
		exitGame();
	end
end


