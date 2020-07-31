package ezen.teamd.web.model;

import lombok.Data;

@Data
@SuppressWarnings("unused")
public class BoardVO {
    private int bid;
    private String cate_cd;
    private String title;
    private String content;
    private String tag;
    private int view_cnt;
    private String reg_id;
    private String reg_dt;
    private String edit_dt;
}