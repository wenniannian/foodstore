/**
 * Created by web on 2018/12/3.
 */
$("#city").parent().hover(function(){
    //console.log(123);
    $("#city").next().removeClass("hide");
},function(){
    $("#city").next().addClass("hide");
})