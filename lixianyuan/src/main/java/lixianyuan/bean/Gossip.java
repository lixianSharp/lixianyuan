package lixianyuan.bean;

public class Gossip {
    private String gossipid;

    private String title;

    private String content;

    private String picture;

    public String getGossipid() {
        return gossipid;
    }

    public void setGossipid(String gossipid) {
        this.gossipid = gossipid == null ? null : gossipid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }
}