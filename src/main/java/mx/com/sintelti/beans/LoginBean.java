package mx.com.sintelti.beans;

public class LoginBean 
{
	private String user;
	private String password;
	private static String users[] = {"verde","otroVerde","yOtroVerde"};
	private static String passwords[] = {"verde","verde","verde"};
	
	public String getUser() 
	{
		return user;
	}
	
	public void setUser(String user) 
	{
		this.user = user;
	}
	
	public String getPassword() 
	{
		return password;
	}
	
	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	@SuppressWarnings("unused")
	public String validarUsuario()
	{
		for(int i=0;i<users.length;i++)
		{
			if(users[i].equals(user))
			{
				if(passwords[i].equals(password))
				{
					return "success";
				}
			}
			break;
		}
		return "error";
	}
}
