package ezen.teamd.web.model;

import lombok.Data;

@Data
@SuppressWarnings("unused")
public class scheduleVO {
    private int scheduleid;
    private String title;
    private String description;
    private String start;
    private String end;
    private String type;
    private String backgroundColor;
    private String fontColor;
    private boolean allDay;
}