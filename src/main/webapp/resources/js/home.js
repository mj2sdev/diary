$(document) .ready(function() {
    $('.ui.form')
        .form({
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
                identifier  : 'pass',
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
            }
        }
    });
});