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
            text-align:center;
        }
        input {
            border-radius: 10rem !important;
        }
        .blue {
            background:#01509e;
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
                        <div class="column">
                            <h3>이지금</h3>
                            <p>하루 중 지금 이순간, 스쳐는 지금을 추억으로 만들어 주고, 일정관리 및 오늘 하루를 정리할 수 있는 다이어리</p>
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
                                <div class="content">
                                    '이지금'에 오신것을 환영합니다.
                                </div>
                            </h2>
                            <form class="ui large form" method="POST" action="/login">
                                <div class="ui vertical segment">
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="envelope icon"></i>
                                            <input type="text" name="email" placeholder="E-mail address">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="lock icon"></i>
                                            <input type="password" name="pass" placeholder="Password">
                                        </div>
                                    </div>
                                    <button class="ui blue fluid circular button">로그인</button>
                                </div>
                                <div class="ui error message"></div>
                                <div class="ui message">
                                    계정이 없습니까? <a href="/signup">회원가입</a>
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