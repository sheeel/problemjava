package by.itran.polina.service;

import java.util.List;
import by.itran.polina.domain.Contact;

public interface ContactService {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}
