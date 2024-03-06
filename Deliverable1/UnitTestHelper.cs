/// <summary>
/// Helper class containing utility methods primarily intended for generating test data.
/// </summary>
using System;
namespace HogWildSystem
{
	public static class UnitTestHelper
	{
		/// <summary>
		/// Generates a random name of a given length.
		/// The generated name follows a pattern of alternating consonants and vowels.
		/// </summary>
		/// <param name="len">The desired length of the generated name.</param>
		/// <returns>A random name of the specified length.</returns>
		public static string GenerateName(int len)
		{
			// Create a new Random instance.
			Random r = new Random();

			// Define consonants and vowels to use in the name generation.
			string[] consonants = { "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "l", "n", "p", "q", "r", "s", "sh", "zh", "t", "v", "w", "x" };
			string[] vowels = { "a", "e", "i", "o", "u", "ae", "y" };

			string Name = "";

			// Start the name with an uppercase consonant and a vowel.
			Name += consonants[r.Next(consonants.Length)].ToUpper();
			Name += vowels[r.Next(vowels.Length)];

			// Counter for tracking the number of characters added.
			int b = 2;

			// Add alternating consonants and vowels until we reach the desired length.
			while (b < len)
			{
				Name += consonants[r.Next(consonants.Length)];
				b++;
				Name += vowels[r.Next(vowels.Length)];
				b++;
			}

			return Name;
		}

		/// <summary>
		/// Generates a random phone number.
		/// The generated phone number ensures the first digit is not 0 or 1.
		/// </summary>
		/// <returns>A random phone number.</returns>
		public static string RandomPhoneNumber()
		{
			var random = new Random();
			string phoneNumber = string.Empty;

			// Iterate until we generate an 11-digit phone number.
			while (phoneNumber.Length < 11)
			{
				int currentDigit = random.Next(10);

				// Ensure the first digit isn't 0 or 1.
				if (phoneNumber.Length == 0 && currentDigit > 1)
				{
					phoneNumber = $"{phoneNumber}{currentDigit}";
				}
				else
				{
					if (phoneNumber.Length > 0 && currentDigit > 1)
					{
						phoneNumber = $"{phoneNumber}{currentDigit}";
					}
				}
			}

			return phoneNumber;
		}

		/// <summary>
		/// Generates an email address using the provided first name, last name,
		///   and a random domain name.
		/// </summary>
		/// <param name="firstName">The first name to use in the email address.</param>
		/// <param name="lastName">The last name to use in the email address.</param>
		/// <returns>An email address in the format [firstName].[lastName]@[randomDomain].com</returns>
		public static string GetEmailAddress(string firstName, string lastName)
		{
			// Generate an email in the format: firstname.lastname@randomDomain.com
			return $"{firstName.ToLower()}.{lastName.ToLower()}@{GenerateName(7).ToLower()}.com";
		}

		//	Gets the Exception instance that caused the current exception.
		//	An object that describes the error that caused the current exception.
		public static Exception GetInnerException(System.Exception ex)
		{
			while (ex.InnerException != null)
				ex = ex.InnerException;
			return ex;
		}
	}
}
