lenity={}
--[[this moduel is a wrapper for zenity useing lua i'm writting it for my vin_decoder
project so first relese will be incomplete obviously lua and zenity are requiured for this]]--
--[[this is the error dialog it requires a table that has the error dialogs as first arg the code number 
	{"ERROR CODE 12 THIS IS WHERE THE ERROR GOSE ",
	"ERROR CODE 16 THIS US WHERE THE OTHER TEXT GOSE"} second arg would be 1 or 2 you would have to make the table like error={}
	error[12]="ERROR CODE 12 SOME ERROR TEXT'" that would make it so the second arg being 12 would result in the right
	error 12 the last arg you could also put a string for 1st arg is boleen if true it kills the program or least sens an exit whith codenum as a number ]]--
lenity.error=function(codes,codenum,kill)
	if type(codes)==table then
		local et=codes[codenum]
	else
		et=codes
	end
	local k=kill
	local call=tostring('zenity --error --text='..et)
	os.execute(call)
	if k then
		quit=tostring("exit "..codenum)
		os.execute(quit)
	end
end

