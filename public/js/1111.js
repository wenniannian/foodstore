
// 轮播
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

//¥�������
window.onscroll=function(){
    var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
    console.log(scrollTop);
    var one=document.querySelector(
        "#left_bar>ul>li.left_bar_one"
    );
    var two=document.querySelector(
        "#left_bar>ul li.left_bar_two"
    );
    var three=document.querySelector(
        "#left_bar>ul li:nth-child(3)"
    );
    var four=document.querySelector(
        "#left_bar>ul li:nth-child(4)"
    );
    var five=document.querySelector(
        "#left_bar>ul li:nth-child(5)"
    );
    var six=document.querySelector(
        "#left_bar>ul li:nth-child(6)"
    );
    var seven=document.querySelector(
        "#left_bar>ul li:nth-child(7)"
    );
    var clearBg = function(){
        var lis = document.querySelectorAll("#left_bar>ul li");
        for(var li of lis){
            li.style.backgroundColor = "";
            left_bar.style.display="block";
        }
    }
   // console.log(one);
    if(scrollTop<1000 && scrollTop>=500){
        clearBg();
        one.style.backgroundColor = "red";
    }else if(scrollTop<1600 && scrollTop>=1000){
        clearBg();
        two.style.backgroundColor = "red";
    }else if(scrollTop<2000 && scrollTop>=1600){
        clearBg();
        three.style.backgroundColor = "red";
    }else if(scrollTop<2500 && scrollTop>=2000){
        clearBg();
        four.style.backgroundColor = "red";
    }else if(scrollTop<2900 && scrollTop>=2500){
        clearBg();
        five.style.backgroundColor = "red";
    }else if(scrollTop<3300 && scrollTop>=2900){
        clearBg();
        six.style.backgroundColor = "red";
    }else if(scrollTop<3541 && scrollTop>=3300){
        clearBg();
        seven.style.backgroundColor = "red";
    }
    else{
        left_bar.style.display="none";
    }
}
$(".f_left>div>ul>li").hover(function(){
    console.log($(this))
    $(this).children("ul").toggleClass("hide")
})