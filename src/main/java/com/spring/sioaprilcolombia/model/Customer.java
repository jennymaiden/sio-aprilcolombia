/**
 * 
 */
package com.spring.sioaprilcolombia.model;

/**
 * @author yenny.velez
 *
 */
public class Customer {

	private String firstName;
	private String lastName;
	private String identificationType;
	private int identificationNumber;
	private String gender;
	private String birthdate;
	private int birtCountry;
	private int residenceCountry;
	private int residenceCity;
	private int residenceState;
	private int phoneNumber;
	private int mobileNumber;
	private String address;
	private int age;
	private String firstNameEmergency;
	private String lastNameEmergency;
	private String mailEmergency;
	private int phoneNumberEmergency;
	
	
	public Customer(){
		
	}
	
	public Customer(String firstName, String lastName, String identificationType, int identificationNumber,
			String gender, String birthdate, int birtCountry, int residenceCountry, int residenceCity,
			int residenceState, int phoneNumber, int mobileNumber, String address, int age, String firstNameEmergency,
			String lastNameEmergency, String mailEmergency, int phoneNumberEmergency) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.identificationType = identificationType;
		this.identificationNumber = identificationNumber;
		this.gender = gender;
		this.birthdate = birthdate;
		this.birtCountry = birtCountry;
		this.residenceCountry = residenceCountry;
		this.residenceCity = residenceCity;
		this.residenceState = residenceState;
		this.phoneNumber = phoneNumber;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.age = age;
		this.firstNameEmergency = firstNameEmergency;
		this.lastNameEmergency = lastNameEmergency;
		this.mailEmergency = mailEmergency;
		this.phoneNumberEmergency = phoneNumberEmergency;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getIdentificationType() {
		return identificationType;
	}
	public void setIdentificationType(String identificationType) {
		this.identificationType = identificationType;
	}
	public int getIdentificationNumber() {
		return identificationNumber;
	}
	public void setIdentificationNumber(int identificationNumber) {
		this.identificationNumber = identificationNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public int getBirtCountry() {
		return birtCountry;
	}
	public void setBirtCountry(int birtCountry) {
		this.birtCountry = birtCountry;
	}
	public int getResidenceCountry() {
		return residenceCountry;
	}
	public void setResidenceCountry(int residenceCountry) {
		this.residenceCountry = residenceCountry;
	}
	public int getResidenceCity() {
		return residenceCity;
	}
	public void setResidenceCity(int residenceCity) {
		this.residenceCity = residenceCity;
	}
	public int getResidenceState() {
		return residenceState;
	}
	public void setResidenceState(int residenceState) {
		this.residenceState = residenceState;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFirstNameEmergency() {
		return firstNameEmergency;
	}
	public void setFirstNameEmergency(String firstNameEmergency) {
		this.firstNameEmergency = firstNameEmergency;
	}
	public String getLastNameEmergency() {
		return lastNameEmergency;
	}
	public void setLastNameEmergency(String lastNameEmergency) {
		this.lastNameEmergency = lastNameEmergency;
	}
	public String getMailEmergency() {
		return mailEmergency;
	}
	public void setMailEmergency(String mailEmergency) {
		this.mailEmergency = mailEmergency;
	}
	public int getPhoneNumberEmergency() {
		return phoneNumberEmergency;
	}
	public void setPhoneNumberEmergency(int phoneNumberEmergency) {
		this.phoneNumberEmergency = phoneNumberEmergency;
	}
	
	
}
