
	var isClose = false;
	document.onkeydown = checkKeycode
	function checkKeycode(e) {
	var keycode;
	if (window.event)
	keycode = window.event.keyCode;
	else if (e)
	keycode = e.which;
	if(keycode == 116)
	{
		alert('F5')
	isClose = true;
	}
	}
	function somefunction()
	{
	isClose = true;
	}
	function doUnload()
	{
	if(!isClose)
	{
	alert('window is closing');
	}
	}
