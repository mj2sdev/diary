<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">

    <!-- Semantic ui library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
    <style>
        @font-face{
            font-family: "2hour";
            src : url("/resources/vendor/fonts/2hour.ttf");
        }
        
        p{
            font-size : 20px;
            font-family : "2hour";
        }

        .grid {
            height: 100%;
        }
        .wrapper {
            width: 80rem !important;
            box-shadow: 0 0 15px 5px #ddd;
        }
        
        .six.wide {
            height: 45rem;
        }
        .pt {
            position: absolute;
            right: -2.5rem;
            bottom: 50%;
            background: #2185d0;
            width: 5rem;
            height: 5rem;
            border-radius: 100%;
            border: 0.75rem solid white;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form {
            margin: 0 3rem;
        }
        input {
            border-radius: 10rem !important;
        }
        .blue {
            background:#01509e;
        }
        .description {
            padding: 0 3rem !important;
        }
        input::placeholder
        {
            font-family : '2hour';
        }
    </style>
    <script>
        $(document).ready(function() {
            $("input").focus(function(event) {
                $("#title").html($(this).attr("placeholder"));
                $("#desc").html($(this).attr("description"));
            });
            $('.ui.form').form({
                inline : true,
                fields: {
                    email: {
                        identifier  : 'email',
                        rules: [
                            // {
                            //     type   : 'empty',
                            //     prompt : '이메일을입력해 주세요.'
                            // },
                            {
                                type   : 'email',
                                prompt : '유효한 이메일을 입력하세요.'
                            }
                        ]
                    },
                    password: {
                        identifier: 'pass',
                        rules: [
                            // {
                            //     type   : 'empty',
                            //     prompt : '비밀번호를 입력하세요.'
                            // },
                            {
                                type   : 'length[6]',
                                prompt : '비밀번호는 6자 이상입니다.'
                            }
                        ]
                    },
                    pass2: {
                        identifier: 'pass2',
                        rules: [
                            {
                                type: 'match[pass]',
                                prompt: '비밀번호가 일치하지 않습니다.'
                            }
                        ]
                    },
                    nick: {
                        identifier: 'nick',
                        rules: [
                            {
                                type: 'length[2]',
                                prompt: '닉네임의 길이는 최소 2글자 입니다.'
                            },
                            {
                                type: 'maxLength[10]',
                                prompt: '닉네임의 길이는 최대 10글자 입니다.'
                            }
                        ]
                    },
                    birthday: {
                        identifier: 'birthday',
                        rules: [
                            {
                                type: 'empty',
                                prompt: '생일을 입력해 주세요'
                            }
                        ]
                    }
                }
            });
        });
    </script>
</head>
<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column wrapper">
            <div class="ui middle aligned grid">
                <div class="six wide blue column">
                    <div class="ui middle aligned center aligned grid">
                        <div class="column description">
                            <h1 id="title" style="font-family : '2hour'; font-size: 40px;">이지금</h1>
                            <p id="desc">하루 중 지금 이순간을 정리하는 다이어리</p>
                            <div class="pt">
                                <i class="envira big icon"></i>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="ten wide column">
                    <div class="ui grid">
                        <div class="column">
                            <h2 class="ui blue image header">
                                <!-- <img src="assets/images/logo.png" class="image"> -->
                                <div class="content" style="font-family : '2hour'; font-size: 30px;">
                                    회원가입
                                </div>
                            </h2>
                            <form class="ui large form" method="POST" action="/signup">
                                <div class="ui vertical segment">
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="envelope icon"></i>
                                            <input type="text" name="email" placeholder="이메일 주소" description="이메일 주소를 입력합니다. <br>확인 메일이 발송되오니 <br>유효한 이메일을 입력해 주세요.">
                                        </div>
                                    </div>
                                    <div class="two fields">
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="lock icon"></i>
                                                <input type="password" name="pass" placeholder="비밀번호" description="로그인에 필요한 비밀번호를 설정합니다. <br>최소6자리 이상 입력해야 합니다.">
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="lock icon"></i>
                                                <input type="password" name="pass2" placeholder="비밀번호 확인" description="최초에 입력한 로그인과 일치하도록 입력합니다.">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="two fields">
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="address card icon"></i>
                                                <input type="text" name="nick" placeholder="닉네임" description="활동시에 나를 표현하는 닉네임 입니다.">
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="birthday cake icon"></i>
                                                <input type="date" name="birthday" placeholder="생년월일" description="사용자의 생일입니다.<br> 다이어리에 표시될 수도 있습니다.">
                                            </div>
                                        </div>
                                    </div>
                                    <button class="ui blue fluid circular button" style="font-family : '2hour'; font-size:18px;">회원가입</button>
                                </div>
                                <div class="ui error message"></div>
                                <div class="ui message">
                                    홈페이지로 <a href="/" style="font-family : '2hour'; font-size:18px;">돌아가기</a><br>
                                    <%-- <a href="/">홈페이지</a>로 돌아가기 --%>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</body>
</html>