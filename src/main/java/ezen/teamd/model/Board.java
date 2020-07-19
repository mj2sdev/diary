package ezen.teamd.model;

public class Board {
    private int bid;
    private String cate_cd;
    private String title;
    private String content;
    private String tag;
    private int view_cnt;
    private String reg_id;
    private String reg_dt;
    private String edit_dt;

    public int getBid() {
        return this.bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getCate_cd() {
        return this.cate_cd;
    }

    public void setCate_cd(String cate_cd) {
        this.cate_cd = cate_cd;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public int getView_cnt() {
        return this.view_cnt;
    }

    public void setView_cnt(int view_cnt) {
        this.view_cnt = view_cnt;
    }

    public String getReg_id() {
        return this.reg_id;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public String getReg_dt() {
        return this.reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getEdit_dt() {
        return this.edit_dt;
    }

    public void setEdit_dt(String edit_dt) {
        this.edit_dt = edit_dt;
    }

}