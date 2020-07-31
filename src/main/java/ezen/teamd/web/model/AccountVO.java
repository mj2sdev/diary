package ezen.teamd.web.model;

import lombok.Data;

@Data
@SuppressWarnings("unused")
public class AccountVO {
    private String accountid;
    private String email;
    private String pass;
    private String nick;
    private String birthday;
    private int emailconfirm;
}

// CREATE TABLE Account (
//     AccountID VARCHAR(36) NOT NULL PRIMARY KEY,
//     Email VARCHAR(20) NOT NULL,
//     Pass VARCHAR(100) NOT NULL,
//     Nick VARCHAR(10) NOT NULL,
//     BirthDay DATE NOT NULL,
//     EmailConfirm INT DEFAULT 0 NOT NULL
// )