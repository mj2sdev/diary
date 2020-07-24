<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible">
    <title>이지금</title>
    <link rel="stylesheet" href="/resources/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="/resources/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='/resources/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <div class="container">
        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">중요</a></li>
                <li><a tabindex="-1" href="#">할일</a></li>
                <li><a tabindex="-1" href="#">약속</a></li>
                <li><a tabindex="-1" href="#">기념일</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>
        <!-- 내 정보 확인 -->
        <div class="col-md-2">
            <button class="btn btn-default" data-toggle="collapse" data-target="#info" 
            aria-expanded="false" aria-controls="info">
                <span class="glyphicon glyphicon-user"></span>
            </button>
            <div id="info" class="collapse">
                <div class="col-md-4 information text-center" id="email" name="email">이메일</div><div class="col-md-1 colon">:</div><div class="col-md-7 data">${Account.email}</div>
                <div class="col-md-4 information text-center" id="nick" name="nick">닉네임</div><div class="col-md-1 colon">:</div><div class="col-md-7 data">${Account.nick}</div>
                <div class="col-md-4 information text-center" id="birthday" name="birthday">생일</div><div class="col-md-1 colon">:</div><div class="col-md-7 data">${Account.birthday}</div>
                <div class="col-md-4 col-md-offset-8 text-center"><a href="/logout">로그아웃</a></div>
            </div>
        </div>
        <div class="col-md-10" id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>
        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="allDay">하루종일</label>
                                <input class='allDayNewEvent' id="allDay" name="allDay" type="checkbox">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="title">일정명</label>
                                <input class="inputModal" type="text" name="title" id="title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="start">시작</label>
                                <input class="inputModal" type="text" name="start" id="start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="end">끝</label>
                                <input class="inputModal" type="text" name="end" id="end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="type">구분</label>
                                <select class="inputModal" type="text" name="type" id="type">
                                    <option value="중요">중요</option>
                                    <option value="할일">할일</option>
                                    <option value="약속">약속</option>
                                    <option value="기념일">기념일</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="backgroundColor">색상</label>
                                <select class="inputModal" name="backgroundColor" id="backgroundColor">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="description">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="description" id="description"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="Eventwrite">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div class="background"></div>
    </div>
    <!-- /.container -->
    <script src="/resources/vendor/js/jquery.min.js"></script>
    <script src="/resources/vendor/js/bootstrap.min.js"></script>
    <script src="/resources/vendor/js/moment.min.js"></script>
    <script src="/resources/vendor/js/fullcalendar.min.js"></script>
    <script src="/resources/vendor/js/ko.js"></script>
    <script src="/resources/vendor/js/select2.min.js"></script>
    <script src="/resources/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <script src="/resources/js/addEvent.js"></script>
    <script src="/resources/js/editEvent.js"></script>
    <script src="/resources/js/etcSetting.js"></script>
    <script>
        $('.collapse').collapse({
            toggle : false
        });

        $('[class*="fc-button fc-state-default"]').addClass('btn btn-default');
    </script>
</body>
</html>