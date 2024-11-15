local server_name = Draw(5200, 7500, getHostname());

server_name.font = "FONT_OLD_20_WHITE_HI.TGA";
server_name.color = Color(255, 143, 0);

addEventHandler("onInit", function(){
	clearMultiplayerMessages();
	server_name.visible = true;
});

addEventHandler("onExit", function(){
	server_name.visible = false;
});

addEventHandler("onWorldEnter", function(){
	clearInventory();
});

addEventHandler("onWorldChange", function(world){
	cancelEvent();
});