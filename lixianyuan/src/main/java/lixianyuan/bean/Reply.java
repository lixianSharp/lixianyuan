package lixianyuan.bean;

public class Reply {
    private String replyid;

    private String replyname;

    private String replycontent;

    private String leavemsgid;

    public String getReplyid() {
        return replyid;
    }

    public void setReplyid(String replyid) {
        this.replyid = replyid == null ? null : replyid.trim();
    }

    public String getReplyname() {
        return replyname;
    }

    public void setReplyname(String replyname) {
        this.replyname = replyname == null ? null : replyname.trim();
    }

    public String getReplycontent() {
        return replycontent;
    }

    public void setReplycontent(String replycontent) {
        this.replycontent = replycontent == null ? null : replycontent.trim();
    }

    public String getLeavemsgid() {
        return leavemsgid;
    }

    public void setLeavemsgid(String leavemsgid) {
        this.leavemsgid = leavemsgid == null ? null : leavemsgid.trim();
    }
}