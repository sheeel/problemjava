package by.itran.polina.dao;

import java.util.List;
import by.itran.polina.domain.Contact;

public interface ContactDAO {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}