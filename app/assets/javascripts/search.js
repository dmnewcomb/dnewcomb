function Search(dropID, imageID, containerID, method, url) {
	var obj = this;
	this.dropMenu = document.getElementById(dropID);
	this.image = document.getElementById(imageID);
	this.container = document.getElementById(containerID);
	this.method = method;
	this.url = url;

	this.dropMenu.onchange = function(event) {
        obj.chosenText = obj.dropMenu.options[obj.dropMenu.selectedIndex].text;
		obj.performSearch(event);
	}
}

Search.prototype.performSearch = function(event) {
	var obj = this;
	var myXHR = new XMLHttpRequest();

	myXHR.onreadystatechange = function() {
		if(this.readyState == 4) {
            obj.container.removeChild(obj.image);
			var newImage = document.createElement("img");
            newImage.id = "zoom_img";
            newImage.className = "zoom";
            newImage.setAttribute('src', this.responseText);
            newImage.setAttribute('data-zoom-image', this.responseText);
            obj.container.appendChild(newImage);
            obj.image = newImage;
            $("#zoom_img").elevateZoom({ 
                zoomWindowFadeIn: 500,
                zoomWindowFadeOut: 500,
                zoomWindowWidth:500, 
                zoomWindowHeight:500,
                lensFadeIn: 500,
                lensFadeOut: 500 
            });
			return;
		}
		if(this.status != 200) {
			return;
		}
	}
	myXHR.open(obj.method, obj.url+encodeURIComponent(obj.chosenText), true);
	myXHR.send();
}