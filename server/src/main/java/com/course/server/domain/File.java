package com.course.server.domain;

import java.util.Date;

public class File {
    private String id;

    private String path;

    private String name;

    private String suffix;

    private Integer size;

    private String use;

    private Date createAt;

    private Date updateAt;

    private Integer shareIndex;

    private Integer shareSize;

    private Integer shareTotal;

    private String key;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public Integer getShareIndex() {
        return shareIndex;
    }

    public void setShareIndex(Integer shareIndex) {
        this.shareIndex = shareIndex;
    }

    public Integer getShareSize() {
        return shareSize;
    }

    public void setShareSize(Integer shareSize) {
        this.shareSize = shareSize;
    }

    public Integer getShareTotal() {
        return shareTotal;
    }

    public void setShareTotal(Integer shareTotal) {
        this.shareTotal = shareTotal;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", path=").append(path);
        sb.append(", name=").append(name);
        sb.append(", suffix=").append(suffix);
        sb.append(", size=").append(size);
        sb.append(", use=").append(use);
        sb.append(", createAt=").append(createAt);
        sb.append(", updateAt=").append(updateAt);
        sb.append(", shareIndex=").append(shareIndex);
        sb.append(", shareSize=").append(shareSize);
        sb.append(", shareTotal=").append(shareTotal);
        sb.append(", key=").append(key);
        sb.append("]");
        return sb.toString();
    }
}