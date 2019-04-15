package lixianyuan.bean;

public class SysRolePermission {
    private String id;

    private String sysRoleId;

    private Long sysPermissionId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
    }

    public Long getSysPermissionId() {
        return sysPermissionId;
    }

    public void setSysPermissionId(Long sysPermissionId) {
        this.sysPermissionId = sysPermissionId;
    }
}