package com.ams.app.services;

import java.util.ArrayList;

import com.ams.app.entities.UserDto;
import com.ams.app.entities.UserSearch;

public interface UserService {
	
	public ArrayList<UserDto> list(UserSearch us);
	public boolean insertUser(UserDto user);
	public boolean updateUser(UserDto user);
	public UserDto getUser(int id);
	public ArrayList<UserDto> getPagination(int page,int limit);
	public int getTotalPage(int limit);
	public boolean toggle(int artId);	//toggle between enable/disable an article		
	public UserDto showUser(String usrName);
	public ArrayList<UserDto> search(UserSearch us);
	public int getLastID();
}
