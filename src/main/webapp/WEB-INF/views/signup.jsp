<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <!-- Semantic ui library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
    <style>
        .grid {
            height: 100%;
        }
        .wrapper {
            width: 70rem !important;
            box-shadow: 0 0 15px 5px #ddd;
        }
        
        .six.wide {
            height: 40rem;
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
            margin-left: 20%;
            width: 60%;
        }
        input {
            border-radius: 10rem !important;
        }
        .blue {
            background:#01509e;
        }
    </style>
    <script>
        $(document).ready(function() {
            $("input").click(function(event) {
                $("#title").html($(this).attr("placeholder"));
                $("#desc").html($(this).attr("description"));
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
                        <div class="column">
                            <h3 id="title">이지금</h3>
                            <p id="desc">하루 중 지금 이순간, 스쳐는 지금을 추억으로 만들어 주고, 일정관리 및 오늘 하루를 정리할 수 있는 다이어리</p>
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
                                <div class="content">
                                    회원가입
                                </div>
                            </h2>
                            <form class="ui large form" method="POST" action="/login">
                                <div class="ui vertical segment">
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="envelope icon"></i>
                                            <input type="text" name="email" placeholder="이메일 주소" description="이메일 주소를 입력합니다. 확인 메일이 발송되오니 유효한 이메일을 입력해 주세요.">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="lock icon"></i>
                                            <input type="password" name="pass" placeholder="비밀번호" description="로그인에 필요한 비밀번호를 설정합니다. 최소6자리 이상 입력해야 합니다.">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="lock icon"></i>
                                            <input type="password" name="pass2" placeholder="비밀번호 확인" description="최초에 입력한 로그인과 일치하도록 입력합니다.">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="address card icon"></i>
                                            <input type="text" name="nick" placeholder="닉네임" description="활동시에 노출되는 나를 표현하는 닉네임 입니다.">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="birthday cake icon"></i>
                                            <input type="date" name="birthday" placeholder="생년월일" description="사용자의 생일입니다. 다이어리에 표시될 수도 있습니다.">
                                        </div>
                                    </div>
                                    <button class="ui blue fluid circular button">회원가입</button>
                                </div>
                                <div class="ui error message"></div>
                                <div class="ui message">
                                    홈페이지로 <a href="/">돌아가기</a><br>
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