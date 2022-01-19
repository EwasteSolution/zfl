zfl={}
--[[this moduel is a wrapper for zenity useing lua i'm writting it for my vin_decoder
project so first relese will be incomplete obviously lua and zenity are requiured for this]]--
--[[this is the error dialog it requires a table orat least a string that has the error dialogs as first arg the code number for the second this if a table is used
is also the postioon of the dialog used in the  message this can be over ridden by doing zfl.error(errors[4],17,true) only rlly use full if ya wantr the exit 
a boleen on the third arg to be true and ya want a specific error code ya could also make a sparse tablkde to solvde this ]]--
zfl.error=function(codes,codenum,kill)
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

