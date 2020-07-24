<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Semantic ui library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
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
        .blue {
            background:#01509e;
        }
        .ui.blue.circular.large.button{
            width : 55px;
        }
        .undo.big.icon
        {
            position : relative;
        }
    </style>
</head>
<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column wrapper">
            <div class="ui middle aligned grid">
                <div class="six wide blue column">
                    <div class="ui middle aligned center aligned grid">
                        <div class="column description">
                            <h1 style="font-family : '2hour'; font-size: 30px;">페이지를 찾을 수 없습니다.</h1>
                            <p>PAGE NOT FOUND : 404</p>
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
                                <div class="content" style="font-family : '2hour'; font-size: 35px;">
                                    메인으로 돌아가시겠습니까?
                                </div>
                            </h2>
                            <div class="ui vertical segment">
                                <button class="ui circular undo large icon blue button" onclick="location.href='/'">
                                    <i class="undo big icon"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</body>
</html>