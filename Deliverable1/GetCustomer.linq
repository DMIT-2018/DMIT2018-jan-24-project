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
#load ".\CustomerEditView.cs"
//	helper class for generating test data & GetInnerException method
#load ".\UnitTestHelper.cs"
//required to access the CustomerSearchView view model
using HogWildSystem;

void Main()
{
	try
	{
		//  get valid data
		int customerID = 6;
		GetCustomer(customerID).Dump();

		// testing business rule (customer ID is required)
		customerID = 0;
		Console.WriteLine("");
		Console.WriteLine("Customer ID is required");
		GetCustomer(customerID).Dump();
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


//	get customer
public CustomerEditView GetCustomer(int customerID)
{
	//  Business Rules
	//	These are processing rules that need to be satisfied
	//		for valid data
	//		rule:	customerID must be valid 

	if (customerID == 0)
	{
		throw new ArgumentNullException("Please provide a customer ID");
	}

	return Customers
				.Where(x => (x.CustomerID == customerID					
						&& x.RemoveFromViewFlag == false))
				.Select(x => new CustomerEditView
				{
					CustomerID = x.CustomerID,
					FirstName = x.FirstName,
					LastName = x.LastName,
					Address1 = x.Address1,
					Address2 = x.Address2,
					City = x.City,
					ProvStateID = x.ProvStateID,
					CountryID = x.CountryID,
					PostalCode = x.PostalCode,
					Phone = x.Phone,
					Email = x.Email,
					StatusID = x.StatusID,
					RemoveFromViewFlag = x.RemoveFromViewFlag
				}).FirstOrDefault();
}
