// JavaScript Document
var slide_index = 0;
var slides_container = document.getElementsByClassName("slider");
var cont_idx = slides_container.length;

for (var o = 0; o < cont_idx; o++){
	var slides = slides_container[o].getElementsByClassName("movies-container");
	var total_slide = slides.length - 1;
	var index = slide_index - 1;

	if (total_slide > 4){
		var j = 0;
		var y_arr = [];

		for (var i = index; j < 7; i++) {			
			if (i == -1){
				i = total_slide;
			}
			else if (i > total_slide){
				i = 0;
			}
			slides[i].style.left = (-11.5 + 17.5 * j) + "vw";
			y_arr.push(i);
			j++;
		}

		for (var x = 0; x <= total_slide; x++){
			if(y_arr.includes(x)){
				slides[x].style.display = "block";
				continue;
			}
			else{
				slides[x].style.display = "none";
				slides[x].style.left = "0";
				continue;
			}
		}
	}

	else{
		j = 0;

		for (i = slide_index; j <= total_slide; i++) {			
			if (i == -1){
				i = total_slide;
			}
			else if (i > total_slide){
				i = 0;
			}
			slides[i].style.left = (6 + 17.5 * j) + "vw";
			j++;
		}
	}
}

var o = 0;
function slider(n, o) {
        var slides = slides_container[o].getElementsByClassName("movies-container");
	var total_slide = slides.length - 1;
	var index = slide_index - 1;
	if (total_slide > 4){
		slide_index = slide_index + n;
		
		if (slide_index > total_slide){
			slide_index = 0;
		}
		else if (slide_index == -1){
			slide_index = total_slide;
		}

		index = slide_index - 1;
		j = 0;
		y_arr = [];

		for (var i = index; j < 7; i++) {			
			if (i == -1){
				i = total_slide;
			}
			else if (i > total_slide){
				i = 0;
			}
			slides[i].style.left = (-11.5 + 17.5 * j) + "vw";
			y_arr.push(i);
			j++;
		}
		
		for (var x = 0; x <= total_slide; x++){
			if(y_arr.includes(x)){
				slides[x].style.display = "block";
			}
			else{
				slides[x].style.display = "none";
				slides[x].style.left = "0";
			}
		}
	}
}



//  6  7 0 1 2 3 4 5 6 7 0 1  2  3  4  5
// -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13
