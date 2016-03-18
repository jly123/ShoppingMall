$(window).load(function(){
    edit_info();
})
function edit_info(){
    $("#edit_info").bind('click',function(){
        $(this).css({
            display: "none"
        })
        $("#save_info").css({
            display: "block"
        })
        $(".right_info span").css({
            display: "none"
        })
        $(".right_info input").css({
            display: "inline"
        })
    });
    $("#save_info").bind('click',function(){
            phone = $("#phone").val(),
            qq = $("#qq").val();
        $.post(
            '/user/modify',
            {
                user_qq : qq,
                user_phone_number : phone,
            },
            function(res) {
                res = $.parseJSON(res);
                if (res.code != 0) {
                    alert(res.msg);
                    return;
                }
                $("#qq_span").text(qq);
                $("#phone_span").text(phone);
                $("#save_info").css({
                    display: "none"
                });
                $("#edit_info").css({
                    display: "block"
                });
                $(".right_info input").css({
                    display: "none"
                });
                $(".right_info span").css({
                    display: "inline"
                });
            }
        );
    });
}