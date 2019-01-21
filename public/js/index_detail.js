new Vue({
    el:".index_detail",
    data:{
        list:'',
        // param:''
        sid:'',
        result:[{}]
    },
    methods: {
        hover(){
            // 商品的显示和隐藏
           $(".f_left>div>ul>li").mouseenter(function(){
                // console.log($(this))
                $(this).children("ul").show();
                $(this).siblings().children("ul").hide();
            })
        },
        leave(){
            $(".f_left>div>ul>li").children("ul").hide();
        } 
    },
    created() {
        var param=window.location.search.split("=")[1]; 
        var url = "http://127.0.0.1:8888/index_detail/sClass?bid="+param;
        axios.get(url).then((result)=>{
            // console.log(result.data.data[0].sName);
            this.list=result.data.data[0].sName;
            this.sid=result.data.data[0].sId;
            console.log(this.sid);
            var url="http://127.0.0.1:8888/index_detail/goods?sid="+this.sid;
            console.log(url)
            axios.get(url).then((result)=>{
                // console.log(result.data);
                console.log(result.data.data);
                this.result=result.data.data;
            })
        }); 
    },
})