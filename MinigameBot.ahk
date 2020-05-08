PGUP::

phase1()
phase2()
phase3()
phase4()
phase5()


randSleep() {
random, randomSleep, 40, 100 ;gotta have random sleeps to prevent getting caught
Return randomSleep
}

findArrow() { ;finds out which way the arrow is pointing and spits out the direction in WASD form
	Loop {
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG
			if (!errorLevel) return "w"
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG
			if (!errorLevel) return "d"
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG
			if (!errorLevel) return "s"
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG
			if (!errorLevel) {
			MsgBox, "Found it!"
			return "a"
		}
	}
}


phase1() {	
a := findArrow()
sleep 20
b := findArrow()
sleep 20
c := findArrow()
sleep 300
Send %a%
sleep % randSleep()
Send %b%
sleep % randSleep()
Send %c%
sleep % randSleep()
Return
}

phase2() {
a := findArrow()
sleep 20
b := findArrow()
sleep 20
c := findArrow()
sleep 20
d := findArrow()
sleep, 300 ;wait until it lets you input stuff
send, %a% ;send the first direction
sleep, % randSleep()
send, %b% ;send the second direction
sleep, % randSleep()
send, %c% ;send the third direction
sleep, % randSleep()
send, %d% ;send the fourth direction
Return
}

phase3() {
a := findArrow()
sleep 20
b := findArrow()
sleep 20
c := findArrow()
sleep 20
d := findArrow()
sleep 20
e := findArrow()

sleep, 300 ;wait until it lets you input stuff
send, %a% ;send the first direction
sleep, % randSleep()
send, %b% ;send the second direction
sleep, % randSleep()
send, %c% ;send the third direction
sleep, % randSleep()
send, %d% ;send the fourth direction
sleep, % randSleep()
send, %e%
Return
}

phase4() {
a := findArrow()
sleep 20
b := findArrow()
sleep 20
c := findArrow()
sleep 20
d := findArrow()
sleep 20
e := findArrow()
sleep 20
f := findArrow()

sleep, 300 ;wait until it lets you input stuff
send, %a% ;send the first direction
sleep, % randSleep()
send, %b% ;send the second direction
sleep, % randSleep()
send, %c% ;send the third direction
sleep, % randSleep()
send, %d% ;send the fourth direction
sleep, % randSleep()
send, %e%
sleep, % randSleep()
send, %f%
Return
}

phase5() {
a := findArrow()
sleep 20
b := findArrow()
sleep 20
c := findArrow()
sleep 20
d := findArrow()
sleep 20
e := findArrow()
sleep 20
f := findArrow()
sleep 20
g := findArrow()

sleep, 300 ;wait until it lets you input stuff
send, %a% ;send the first direction
sleep, % randSleep()
send, %b% ;send the second direction
sleep, % randSleep()
send, %c% ;send the third direction
sleep, % randSleep()
send, %d% ;send the fourth direction
sleep, % randSleep()
send, %e%
sleep, % randSleep()
send, %f%
sleep, % randSleep()
send, %g%
Return
}


; Previous failed attempts:

LoopA() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {

	}
	else {
		a = "w"
		break
		;MsgBox "The down icon was found"
	}

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		a = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		a = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		a = "s"
		break
		;MsgBox "The down icon was found"
	}	
}
}

LoopB() {
Loop {
	
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		b = "w"
		break
		;MsgBox "The down icon was found"
	}	
	
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		b = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		b = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		b = "s"
		break
		;MsgBox "The down icon was found"
	}	
}
}

LoopC() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		c = "w"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		c = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		c = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		c = "s"
		break
		;MsgBox "The down icon was found"
	}	
}
}

LoopD() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		d = "w"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		d = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		d = "a"
		break
		;MsgBox "The down icon was found"
	}	
	
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		d = "s"
		break
		;MsgBox "The down icon was found"
	}	
}
}

LoopE() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		e = "w"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		e = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		e = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		e = "s"
		break
		;MsgBox "The down icon was found"
	}
}
}

LoopF() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		f = "w"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		f = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		f = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		f = "s"
		break
		;MsgBox "The down icon was found"
	}	
}
}

LoopG() {
Loop {
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\up.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		g = "w"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\right.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		g = "d"
		break
		;MsgBox "The down icon was found"
	}	

		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\left.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		MsgBox "Could not conduct the search."
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		g = "a"
		break
		;MsgBox "The down icon was found"
	}	

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Ethan\Downloads\down.PNG ;WORKS WOO
	if (ErrorLevel = 2) {
		success += 0
		;MsgBox "Could not conduct the search.
	}
	else if (ErrorLevel = 1) {
		success += 0
	}
	else {
		g = "s"
		break
		;MsgBox "The down icon was found"
	}
}
}

Escape::
ExitApp
Return