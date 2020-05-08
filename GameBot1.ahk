PgUp::

Loop, 100000000000000000
{
	Loop
	{
		PixelSearch, Px, Py, 750, 490, 1000, 635, 0x3A3539, 3, fast ;locates a certain color and designates its coordinates to Px and Py
		if ErrorLevel ;if it doesn't find the color, it sleeps for 4 seconds
			sleep, 4000
		else { ;if it finds the color, it does:
			random, sleepTime, 500, 1750 ;random sleep times to prevent being caught
			sleep, %sleepTime%
			random, clickingAreaX, %Px%, %Px% + 100
			random, clickingAreaY, %Py%, %Py% + 100 			
			Click, %clickingAreaX%, %clickingAreaY%
		}
	} until ErrorLevel=0 ;color found, Loop ends for a short time
	{
		random, sleepyTime, 750, 1500 ;random sleep times to prevent being caught
		sleep, %sleepyTime%
	}
}

Esc:: ;kills the program
ExitApp
Return

]:: ;pauses the program
Pause
Suspend
Return