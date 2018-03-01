package com.itmd566;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Data {
@NotNull(message = "zip cannot be null")
@Size(min=5, message="ZIP Must be minimum 5 characters")
@Pattern(regexp="(^\\d{5}$)|(^\\d{5}-\\d{4}$)",message="Invalid zip")
private String zip;

@NotNull(message="email cannot be null")
@Pattern(regexp="^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$",message="Invalid email")
private String email;
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getZip() {
	return zip;
}

public void setZip(String zip) {
	this.zip = zip;
}

}
