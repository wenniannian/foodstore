/**
 * Created by web on 2018/12/8.
 */
//查找触发事件的元�??
var as = document.querySelectorAll(
    ".detail_middle>#food_tab>ul>li>[data-toggle=tab]"
);
console.log(as);
//绑定事件处理函数
for(var a of as){
    a.onclick=function(e){
        e.preventDefault();
        var a=this;
    //查找要修改的元素
        var id=a.getAttribute("data-id");
        var div=document.getElementById(id);
        var divs=document.querySelectorAll(
            "#container>div"
        );
        //修改元素  遍历divs中的每一个div 将其设置style的display为none
        for(var d of divs){
            d.style.display="none";
        }
       //将带有id参数的div的div设置为block
            div.style.display="block";
    }
}
var ul=document.querySelector(
    "#food_tab>ul"
);
ul.onclick=function(e){
    //e.preventDefault();
    if(e.target.nodeName=="A"){
        var lis=document.querySelectorAll(
            "#food_tab>ul>li"
        );
        for(var li of lis){
            li.className="";
        }
        e.target.parentNode.className="active";
    }
}