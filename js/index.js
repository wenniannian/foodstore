
<!--图片轮播-->
function task(){
    var img = document.querySelector("#carousel img.show");
    img.className = "";
    if(img.parentNode.nextElementSibling){
        img.parentNode.nextElementSibling.children[0].className= "show";
    }else{
        document.querySelector("#carousel>a:first-child>img").className = "show";
    }
}
var timer = setInterval(task, 2000);

//当鼠标进入
carousel.onmouseover = function(){
    clearInterval(timer);
}
//当鼠标移除时
carousel.onmouseout = function(){
    timer = setInterval(task, 2000);
}


