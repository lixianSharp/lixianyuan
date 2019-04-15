package lixianyuan.bean;

public class Bkyblog {
    private String bkyblogid;

    private String title;

    private String url;

    public String getBkyblogid() {
        return bkyblogid;
    }

    public void setBkyblogid(String bkyblogid) {
        this.bkyblogid = bkyblogid == null ? null : bkyblogid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}