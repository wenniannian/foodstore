$(function(){
    // 创建一个中等图片的数组
    var arrmdImg=[
        "../example/md/f1_01_md1.jpg",
        "../example/md/f1_01_md2.jpg",
        "../example/md/f1_01_md3.jpg",
        "../example/md/f1_01_md4.jpg",
        "../example/md/f1_01_md5.jpg",
    ];
    // 创建一个大图片的数组
    var arrbigImg=[
        "../example/lg/lg.jpg",
        "../example/lg/lg2.jpg",
        "../example/lg/lg3.jpg",
        "../example/lg/lg4.jpg",
        "../example/lg/lg5.jpg",
    ];
    // 当鼠标进入小图的时候触发事件
    $("small-box img").mouseover(function(){
        // 获取到选中小图的下标
        var i=$(this).index();
        // 点击小图实现中图的切换,再实现大图的切换
        $(".mid-box").css("background",arrmdImg[i]);
        $(".big-box").css("background",arrbigImg[i]);
        // 将选中的小图的边框在原来的基础上变粗,将其余的兄弟的边框属性设置为透明
        $(this).css("border","2px solid pink").siblings().css("border","2px solid transparent")
    });
        // 当鼠标在中图框中移动时
        $(".mid-box").mousemove(function(e){
            // 获得鼠标相对于整个文档的位置
            var x=e.pageX;
            var y=e.pageY;
            console.log(x+":"+y)
            // 元素相对于文档mid-box偏移坐标
            mbl=$(".mid-box").offset().left;
            mbt=$(".mid-box").offset().top;
        })

})