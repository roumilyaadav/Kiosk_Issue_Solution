var isClose = false;

//this code will handle the F5 or Ctrl+F5 key
//need to handle more cases like ctrl+R whose codes are not listed here
document.onkeydown = checkKeycode
function checkKeycode(e) {
	var keycode;
	if (window.event){
		keycode = window.event.keyCode;

	}
	else if (e)
		keycode = e.which;
	if(keycode == 116)
	{
		isClose = true;
	}
	/*else if(e.ctrlKey && e.altKey && e.keyCode==115){ // Ctrl + Alt + F4
		isClose = true;
	}
	else if(evt.ctrlKey && keycode == 87){	
		isClose = true;
	}*/

}
function somefunction()
{
	isClose = true;
}

//<![CDATA[

function bodyUnload() {

	if(!isClose)
	{
		var request = GetRequest();
		request.open("GET", "LogoutServlet", true);
		request.send();
	}
}
function GetRequest() {
	var request = null;
	if (window.XMLHttpRequest) {
		//incase of IE7,FF, Opera and Safari browser
		request = new XMLHttpRequest();
	}
	else {
		//for old browser like IE 6.x and IE 5.x
		request = new ActiveXObject('MSXML2.XMLHTTP.3.0');
	}
	return request;
} 
//]]>