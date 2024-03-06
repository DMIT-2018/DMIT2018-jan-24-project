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
  <IncludeUncapsulator>false</IncludeUncapsulator>
</Query>

// reference to view model
#load ".\CustomerSearchView.cs"
//	helper class for generating test data & GetInnerException method
#load ".\UnitTestHelper.cs"
//required to access the CustomerSearchView view model
using HogWildSystem;

void Main()
{
	try
	{
		//  get valid data
		string lastName = "Fo";
		GetCustomers(lastName).Dump();

		// testing business rule (last name is required)
		Console.WriteLine("");
		Console.WriteLine("Last name is required");
		lastName = string.Empty; ;
		GetCustomers(lastName).Dump();
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

//	get customers
public List<CustomerSearchView> GetCustomers(string lastName)
{
	//  Business Rules
	//	These are processing rules that need to be satisfied
	//		for valid data
	//		rule:	last name phone number cannot be empty
	//		rule: 	RemoveFromViewFlag must be false

	if (string.IsNullOrWhiteSpace(lastName))
	{
		throw new ArgumentNullException("Please provide a last name");
	}

	//  return customers that meet our criteria
	return Customers
			.Where(x => x.LastName.Contains(lastName)
					&& !x.RemoveFromViewFlag)
			.Select(x => new CustomerSearchView
			{
				CustomerID = x.CustomerID,
				FirstName = x.FirstName,
				LastName = x.LastName,
				City = x.City,
				Phone = x.Phone,
				Email = x.Email,
				StatusID = x.StatusID
			}).OrderBy(x => x.LastName)
			.ToList();
}
