package lixianyuan.bean;

public class Ydyblog {
    private String ydyblogid;

    private String title;

    private String url;

    public String getYdyblogid() {
        return ydyblogid;
    }

    public void setYdyblogid(String ydyblogid) {
        this.ydyblogid = ydyblogid == null ? null : ydyblogid.trim();
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