package com.hck.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


/**
 * The persistent class for the userrole database table.
 * 
 */
@Entity
public class Userrole implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userroleid;

	private String username;

	private String userpassword;

	//bi-directional many-to-one association to Roleconfig
    @ManyToOne
	@JoinColumn(name="roleid")
	private Roleconfig roleconfig;

    public Userrole() {
    }

	public int getUserroleid() {
		return this.userroleid;
	}

	public void setUserroleid(int userroleid) {
		this.userroleid = userroleid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpassword() {
		return this.userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public Roleconfig getRoleconfig() {
		return this.roleconfig;
	}

	public void setRoleconfig(Roleconfig roleconfig) {
		this.roleconfig = roleconfig;
	}
	
}