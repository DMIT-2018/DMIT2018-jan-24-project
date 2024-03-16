# Service Sub-System

> Name: **STUDENT_NAME**

| Mark | Weight |Area |
|:----:|:----:|:-----|
| **`TBA`**|2 | DISPLAYING – FILTER SEARCH FOR CUSTOMER |
| **`TBA`**|1 | DISPLAYING - FILTER SEARCH FOR CUSTOMER VEHICLE SELECTION |
| **`TBA`**|1 | DISPLAYING – VECHICLE SELECTION |
| **`TBA`**|2 | PROCESSING/WEB PAGE – ADD A SERVICE |
| **`TBA`**|1 | DISPLAYING - RESET SERVICE REQUEST |
| **`TBA`**|1 | DISPLAYING - CANCEL JOB REQUEST |
| **`TBA`**|2 | PROCESSING/WEB PAGE – REMOVE A SERVICE  |
| **`TBA`**|2 | DISPLAYING/WEB PAGE - ADD A STANDARD SERVICE |
| **`TBA`**|2 | DISPLAYING – COUPON VERIFICATION |
| **`TBA`**|2 | DISPLAYING – CALCULATE ESTIMATED CHARGES |
| **`TBA`**|6 (3 * 2) | PROCESSING – REGISTER JOB |
| **`TBA`**|**22** | **TOTAL** |

----

### Marking Rubric

| Weight | Breakdown |
| ----   | --------- |
| **1** | 1 = Proficient (requirement is met)<br />0 = Incomplete (requirement not met, missing large portions) |
| **2** | 2 = Proficient (requirement is met)<br />1 = Limited (requirement is poorly met, minor errors, missing component)<br />0 = Incomplete (requirement not met, missing large portions) |
| **3** | 3 = Proficient (requirement is met)<br />2 = Capable (requirement is adequately met, minor errors, missing component)<br />1 = Limited (requirement is poorly met, major errors)<br />0 = Incomplete (requirement not met, missing large portions) |
| **4** | 4 = Proficient (requirement is met)<br />3 = Capable (requirement is adequately met, minor errors, missing component)<br />2 = Satisfactory (requirement is partially met, minor errors, missing component)<br />1 = Limited (requirement is poorly met, major errors)<br />0 = Incomplete (requirement not met, missing large portions) |
| **5** | 5 = Proficient (requirement is met)<br />4 = Capable (requirement is adequately met, minor errors, missing component)<br />3 = Acceptable (requirement is partially met, minor errors, missing component)<br />2 = Satisfactory (requirement is partially met, errors, missing component)<br />1 = Limited (requirement is poorly met, major errors)<br />0 = Incomplete (requirement not met, missing large portions) |

----
## Area Checklist

> **Note:** Additional notes/deductions may be added for unusual/problematic implementations.

- **`TBA`**/2 - DISPLAYING – FILTER SEARCH FOR CUSTOMER
  - **UI**
    - [ ]  Display list of customers for query value
    - [ ]  Display selected customer information
  - **BLL**
    - [ ]  Get customer list for value
    - [ ]  Get customer information for selected customer
- **`TBA`**/1 - DISPLAYING – FILTER SEARCH FOR CUSTOMER VEHICLE SELECTION
  - **UI**
    - [ ]  Display list of customer vehicle(s)
    - [ ]  Use selection list on display
  - **BLL**
    - [ ]  Get customer vechicle records for display
- **`TBA`**/1 - DISPLAYING – VEHICLE SELECTION
  - **UI**
    - [ ]  Display selected vehicle VIN
  - **BLL**
    - [ ]  Does **not** alter tables
- **`TBA`**/2 - PROCESSING/WEB PAGE – ADD A SERVICE
  - **UI**
    - [ ] Add service to service list
    - [ ] Refresh service list
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/1 - DISPLAYING – RESET SERVICE REQUEST
  - **UI**
    - [ ]  Clear service request data 
    - [ ]  Does not clear current service list
  - **BLL**
    - [ ]  Does **not** alter tables
- **`TBA`**/1 - DISPLAYING – CANCEL JOB REQUEST
  - **UI**
    - [ ]  Clear service request data 
    - [ ]  Clear current service list
  - **BLL**
    - [ ]  Does **not** alter tables
- **`TBA`**/2 - PROCESSING/WEB PAGE – REMOVE A SERVICE
  - **UI**
    - [ ] Remove service from service list
    - [ ] Refresh service list
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/2 - PROCESSING/WEB PAGE – ADD A STANDARD SERVICE
  - **UI**
    - [ ] Place standard service data into the appropriate fields ready to ADD the service
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/2 - DISPLAYING – COUPON VERIFICATION
  - **UI**
    - [ ] Verify entered coupon code against database
    - [ ] Display percentage if verified coupon  
  - **BLL**
    - [ ]  Does **not** alter tables
- **`TBA`**/2 - DISPLAYING – CALCULATE CHARGES 
  - **UI**
    - [ ] Calculate charges based on shop rate and estimated hours
    - [ ] Validate: positive hours
    - [ ] Refresh totals display
  - **BLL**
    - [ ] Does **not** alter tables  
- **`TBA`**/6 - PROCESSING – REGISTER JOB
  - **UI**
    - [ ] Check entered Coupon for validate status
    - [ ] Submit service list for processing
  - **BLL**
	- [ ] Validation –
      - [ ] Appropriate data type, data present and non-zero positive values
      - [ ] Service request has at least one service
    - [ ] SINGLE TRANSACTION!
      - [ ] Create a Job record with appropriate data (date in, employeeid, shop rate, VIN)
      - [ ] Create a JobDetail record with appropriate data for each service
      - [ ] JobDetail Status set to In

*Back to the [Part 3 Marking](./ReadMe.md)*