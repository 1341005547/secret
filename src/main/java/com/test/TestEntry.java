package com.test;

/**
 * Created by Administrator on 2018/1/16.
 */
public class TestEntry {
    private String id;
    private String month;
    private String name;
    private String vate;
    private String department;

    public TestEntry(String id, String month, String name, String vate, String department) {
        this.id = id;
        this.month = month;
        this.name = name;
        this.vate = vate;
        this.department = department;
    }

    public String getId() {

        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVate() {
        return vate;
    }

    public void setVate(String vate) {
        this.vate = vate;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
