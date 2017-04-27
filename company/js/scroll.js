var area = document.getElementById('scrollarea');
var area1 = document.getElementById('area1');
var area2 = document.getElementById('area2');
var speed = 50;
area.scrollTop = 0;
area2.innerHTML = area1.innerHTML;
function scrollUp() {
	if (area.scrollTop >= area1.scrollHeight) {
		area.scrollTop = 0
	} else {
		area.scrollTop++
	}
}
var myScroll = setInterval("scrollUp()", speed);
area.onmouseover = function() {
	clearInterval(myScroll)
};
area.onmouseout = function() {
	myScroll = setInterval("scrollUp()", speed)
}