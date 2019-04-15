package lixianyuan.bean;

public class Casualnote {
    private String casualnoteid;

    private String title;

    private String author;

    private String content;

    public String getCasualnoteid() {
        return casualnoteid;
    }

    public void setCasualnoteid(String casualnoteid) {
        this.casualnoteid = casualnoteid == null ? null : casualnoteid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}