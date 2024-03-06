<Query Kind="Program">
  <Connection>
    <ID>cf5f4cba-344e-4ae8-b187-a1f69fd7316a</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Driver Assembly="(internal)" PublicKeyToken="no-strong-name">LINQPad.Drivers.EFCore.DynamicDriver</Driver>
    <AllowDateOnlyTimeOnly>true</AllowDateOnlyTimeOnly>
    <Server>.</Server>
    <Database>OLTP-DMIT2018</Database>
    <DisplayName>OLTP-DMIT2018-Entity</DisplayName>
    <DriverData>
      <EncryptSqlTraffic>True</EncryptSqlTraffic>
      <PreserveNumeric1>True</PreserveNumeric1>
      <EFProvider>Microsoft.EntityFrameworkCore.SqlServer</EFProvider>
    </DriverData>
  </Connection>
</Query>

//  reference to view model
#load ".\CustomerEditView.cs"
//  reference the get customer method
#load ".\GetCustomer"
//	helper class for generating test data & GetInnerException method
#load ".\UnitTestHelper.cs"

//required to access the CustomerEditView view model
using HogWildSystem;
void Main()
{
	try
	{
		#region Creating a new record
		//  current record counts
		int totalRecords = Customers.Count();
		//  showing record count before adding a new customer
		Console.WriteLine($"Record count before adding new customer: {totalRecords}");
		//  create test data that will be reuse later
		string firstName = UnitTestHelper.GenerateName(5);
		string lastName = UnitTestHelper.GenerateName(10);
		string email = UnitTestHelper.GetEmailAddress(firstName, lastName);
		string phone = UnitTestHelper.RandomPhoneNumber();

		//	create a new customer edit view model
		CustomerEditView beforeAdd = new CustomerEditView()
		{
			FirstName = firstName,
			LastName = lastName,
			Address1 = "123 Main St.",
			Address2 = "South of Flag Pole",
			City = "Edmonton",
			ProvStateID = 9,    //  Alberta
			CountryID = 11,     //	Canada
			PostalCode = "T0A1A2",
			Email = email,
			Phone = phone,
			StatusID = 14,       //	Bronze						
			RemoveFromViewFlag = false
		};

		//	add a new customer
		CustomerEditView afterAdd = AddEditCustomer(beforeAdd);

		//  new record count
		totalRecords = Customers.Count();
		//  showing record count and customer after adding a new customer
		Console.WriteLine($"Record count after adding new customer: {totalRecords}");
		afterAdd.Dump();
		#endregion Creating a new record

		#region Updating an existing record
		//  showing that postal code has changed
		//	NOTE: you do not need to show the record before hand as
		//			we are reusing the previous new record
		afterAdd.PostalCode = "A0B1C2";
		CustomerEditView afterEdit = AddEditCustomer(afterAdd);

		//	validating that the postal code has changed
		afterEdit.Dump();
		#endregion Updating an existing record

		#region Checking rules (reusing existing data)
		//  we will be reusing the before add view models for testing
		//  NOTE:	You only need to comment out the call to the methods.  
		//			You do not need to comment out the Console.WriteLine

		//	first name is required
		beforeAdd.FirstName = string.Empty;
		Console.WriteLine("");
		Console.WriteLine("First name is required");
		//AddEditCustomer(beforeAdd);
		//	resetting first name
		beforeAdd.FirstName = firstName;

		//	last name is required
		Console.WriteLine("");
		Console.WriteLine("Last name is required");
		//AddEditCustomer(beforeAdd);
		//	resetting last name
		beforeAdd.LastName = lastName;

		//	phone is required
		Console.WriteLine("");
		Console.WriteLine("Phone number is required");
		//AddEditCustomer(beforeAdd);
		//	resetting phone
		beforeAdd.Phone = phone;

		//	email is required
		Console.WriteLine("");
		Console.WriteLine("Email is required");
		//AddEditCustomer(beforeAdd);
		//	resetting email
		beforeAdd.Email = email;

		//  first name, last name and phone number cannot be duplicated 
		Console.WriteLine("");
		Console.WriteLine("First name, last name and phone number cannot be duplicated ");
		//AddEditCustomer(beforeAdd);
		#endregion Checking rules (reusing existing data)
	}
	#region  catch all exceptions
	catch (AggregateException ex)
	{
		foreach (var error in ex.InnerExceptions)
		{
			error.Message.Dump();
		}
	}

	catch (ArgumentNullException ex)
	{
		UnitTestHelper.GetInnerException(ex).Message.Dump();
	}

	catch (Exception ex)
	{
		UnitTestHelper.GetInnerException(ex).Message.Dump();
	}
	#endregion
}

public CustomerEditView AddEditCustomer(CustomerEditView editCustomer)
{
	#region Business Logic and Parameter Exceptions
	//	create a list<Exception> to contain all discovered errors
	List<Exception> errorList = new List<Exception>();
	//  Business Rules
	//	These are processing rules that need to be satisfied
	//		for valid data

	//		rule:	customer cannot be null	
	if (editCustomer == null)
	{
		throw new ArgumentNullException("No customer was supplied");
	}

	//		rule: 	first name, last name, phone number and email are required (not empty)
	if (string.IsNullOrWhiteSpace(editCustomer.FirstName))
	{
		errorList.Add(new Exception("First name is required"));
	}

	if (string.IsNullOrWhiteSpace(editCustomer.LastName))
	{
		errorList.Add(new Exception("Last name is required"));
	}

	if (string.IsNullOrWhiteSpace(editCustomer.Email))
	{
		errorList.Add(new Exception("Email is required"));
	}

	if (string.IsNullOrWhiteSpace(editCustomer.Phone))
	{
		errorList.Add(new Exception("Phone is required"));
	}

	//		rule: 	first name, last name and phone number cannot be duplicated (found more than once)
	if (editCustomer.CustomerID == 0)
	{
		bool customerExist = Customers
						.Where(x => x.FirstName == editCustomer.FirstName
									&& x.LastName == editCustomer.LastName
									&& x.Phone == editCustomer.Phone)
						.Any();

		if (customerExist)
		{
			errorList.Add(new Exception("Customer already exist in the database and cannot be enter again"));
		}
	}
	#endregion

	Customer customer =
			Customers.Where(x => x.CustomerID == editCustomer.CustomerID)
			.Select(x => x).FirstOrDefault();

	//  new customer
	if (customer == null)
	{
		customer = new Customer();
	}

	//  Please review AddEditEmployee.cs for a simpler methods using the pattern below.
	//	DataHelper dataHelper = new DataHelper();
	//	dataHelper.CopyItemPropertyValues(editCustomer, customer, "CustomerID");
	customer.FirstName = editCustomer.FirstName;
	customer.LastName = editCustomer.LastName;
	customer.Address1 = editCustomer.Address1;
	customer.Address2 = editCustomer.Address2;
	customer.City = editCustomer.City;
	customer.ProvStateID = editCustomer.ProvStateID;
	customer.CountryID = editCustomer.CountryID;
	customer.PostalCode = editCustomer.PostalCode;
	customer.Email = editCustomer.Email;
	customer.Phone = editCustomer.Phone;
	customer.StatusID = editCustomer.StatusID;
	customer.RemoveFromViewFlag = editCustomer.RemoveFromViewFlag;

	if (errorList.Count > 0)
	{
		//  we need to clear the "track changes" otherwise we leave our entity system in flux
		ChangeTracker.Clear();
		//  throw the list of business processing error(s)
		throw new AggregateException("Unable to add or edit customer. Please check error message(s)", errorList);
	}
	else
	{
		//  new customer
		if (customer.CustomerID == 0)
			Customers.Add(customer);
		else
			Customers.Update(customer);
		SaveChanges();
	}

	//  return new/updated customer
	return GetCustomer(customer.CustomerID);
}


