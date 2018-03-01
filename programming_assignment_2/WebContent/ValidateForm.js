function validateForm()
{
	var name = document.customer.yourName;
	var ssn= document.customer.yourSSN;
	var address=document.customer.yourAddress;
	var city= document.customer.yourCity;
	if(name_validation(name,4,50)){	
			if(address_validation(address,4,50)){
				if(city_validation(city,3,50)){
					if(ssn_validation(ssn)){
				}
			}
		}
	}
	return false;
}
function name_validation(name,mx,my)
{
	var uid_len = name.value.length;
	if (uid_len == 0 || uid_len >= my || uid_len < mx)
	{
		alert("Customer name should not be empty / length be between "+mx+" to "+my);
		name.focus();
		return false;
	}
	return true;
}
function address_validation(address,mx,my)
{
	var add_len = address.value.length;
	if (add_len == 0 || add_len >= my || add_len < mx)
	{
		alert("Address should not be empty / length be between "+mx+" to "+my);
		address.focus();
		return false;
	}
	return true;
}
function city_validation(city,mx,my)
{
	var city_len = city.value.length;
	if (city_len == 0 || city_len >= my || city_len < mx)
	{
		alert("City should not be empty / length be between "+mx+" to "+my);
		city.focus();
		return false;
	}
	return true;
}
function ssn_validation(ssn){
	var x;
	var ssn_len = ssn.value.length;
	if(ssn_len ==11)
	{
		if(ssn.charAt(3)=='-')
		{
			if(ssn.charAt(6)=='-')
			{
				x=true;
			}else
				x=false;
		}
		else
			x=false;
	}else
		x=false;
	if(x==false){
		alert("SSN format wrong Ex:xxx-xx-xxxx");
		ssn.focus();
	}
	return x;
}
