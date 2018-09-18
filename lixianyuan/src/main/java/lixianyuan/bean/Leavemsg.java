package lixianyuan.bean;

public class Leavemsg {
    private String leavemsgid;

    private String name;

    private String email;

    private String content;

    private String ipaddress;

    public String getLeavemsgid() {
        return leavemsgid;
    }

    public void setLeavemsgid(String leavemsgid) {
        this.leavemsgid = leavemsgid == null ? null : leavemsgid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getIpaddress() {
        return ipaddress;
    }

    public void setIpaddress(String ipaddress) {
        this.ipaddress = ipaddress == null ? null : ipaddress.trim();
    }
}