
<!--ͼƬ�ֲ�-->
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

//��������
carousel.onmouseover = function(){
    clearInterval(timer);
}
//������Ƴ�ʱ
carousel.onmouseout = function(){
    timer = setInterval(task, 2000);
}


