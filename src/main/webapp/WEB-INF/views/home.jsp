<!-- <%@ page contentType="text/html; charset=utf-8" %> -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">
    <title>main</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

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
            margin-left: 20%;
            width: 60%;
            text-align:center;
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
    <script src="/resources/js/home.js"></script>
</head>
<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column wrapper">
            <div class="ui middle aligned grid">
                <div class="six wide blue column">
                    <div class="ui middle aligned center aligned grid">
                        <div class="column description">
                            <h1 style="font-family : '2hour'; font-size: 40px;">이지금</h1>
                            <p>하루 중 지금 이순간을 정리하는 다이어리</p>
                            <div class="pt">
                                <i class="envira big icon"></i>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="ten wide column">
                    <div class="ui center aligned grid">
                        <div class="column">
                            <h2 class="ui blue image header">
                                <!-- <img src="assets/images/logo.png" class="image"> -->
                                <div class="content" style="font-family : '2hour';">
                                    '이지금'에 오신것을 환영합니다.
                                </div>
                            </h2>
                            <form class="ui large form" method="POST" action="/login">
                                <div class="ui vertical segment">
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="envelope icon"></i>
                                            <input type="text" name="email" placeholder="이메일 주소">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="lock icon"></i>
                                            <input type="password" name="pass" placeholder="비밀번호">
                                        </div>
                                    </div>
                                    <button class="ui blue fluid circular button" style="font-family : '2hour'; font-size:15px;">로그인</button>
                                </div>
                                <div class="ui error message"></div>
                                <div class="ui message" style="font-family : '2hour'; font-size:15px;">
                                    계정이 없습니까? <a href="/signup" style="font-family : '2hour';">회원가입</a>
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