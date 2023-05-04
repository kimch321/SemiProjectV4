package kimch321.spring4.semiprojectv4.model;


public class Board {
    private String bno;
    private String title;
    private String thumbs;
    private String views;
    private String content;
    private String regdate;

    public Board(){
    }

    public Board(String bno, String title, String thumbs, String views, String content, String regdate) {
        this.bno = bno;
        this.title = title;
        this.thumbs = thumbs;
        this.views = views;
        this.content = content;
        this.regdate = regdate;
    }

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbs() {
        return thumbs;
    }

    public void setThumbs(String thumbs) {
        this.thumbs = thumbs;
    }

    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }
}
