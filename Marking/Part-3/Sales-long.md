# Sales Sub-System

> Name: **STUDENT_NAME**

| Mark | Weight | Area |
|:----:|:----:|:-----|
| **`TBA`**|2 | DISPLAYING – PARTS FILTERED BY CATEGORY |
| **`TBA`**|3 | PROCESSING – ADD TO CART |
| **`TBA`**|1 | DISPLAYING – SALES - CLEAR CART |
| **`TBA`**|3 | DISPLAYING/PROCESSING –EDIT CART |
| **`TBA`**|5 | PROCESSING – PLACE ORDER |
| **`TBA`**|2 | DISPLAYING – DISPLAY INVOICE ON REFUND |
| **`TBA`**|5 | PROCESSING – PROCESS REFUND |
| **`TBA`**|1 | DISPLAYING – REFUND - CLEAR CART |
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

- **`TBA`**/2 - DISPLAYING – PARTS FILTERED BY CATEGORY
  - **UI**
    - [ ] Dropdown - Display list of categories 
    - [ ] Dropdown - Display parts, filtered by category
  - **BLL**
    - [ ] Get list of categories 
    - [ ] Get list of parts by category
- **`TBA`**/3 - PROCESSING – ADD TO CART
  - **UI**
    - [ ] Inform user of errors/success in adding to cart
    - [ ] Validation of Quantity to be positive integer if entered else numeric value - defaults to 1
    - [ ] check item not already on the cart
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/1 - DISPLAYING – SALES - CLEAR CART
  - **UI**
    - [ ] Cart items cleared
    - [ ] Totals cleared
    - [ ] Product List cleared
    - [ ] Category re-set 
    - [ ] Quantity set to default of 1
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/3 - VIEW/PROCESSING –EDIT CART
  - **UI**
    - [ ] UI - Validation quantity is positive numeric
    - [ ] UI - Update quantity of item in cart to value
    - [ ] UI - Remove item from cart
    - [ ] UI - Display all cart items / totals
    - [ ] UI - Totals calculation correct at all times
    - [ ] UI - Informs user after Update/Remove
  - **BLL**
    - [ ] Does **not** alter tables
- **`TBA`**/5 - PROCESSING – CHECKOUT/PLACE ORDER
  - **UI**
    - [ ] UI - Informs user of result of placing order
    - [ ] UI - Maintains display of sale items and totals
    - [ ] UI - Unable to add new items to sale after processing
    - [ ] UI - Validate entered coupon and apply if valid
    - [ ] UI - Totals calculation correct at all times
  - **BLL**
    - [ ] SINGLE TRANSACTION!
    - [ ] Sales – create a sale record
    - [ ] SaleDetails – create saledetails 
    - [ ] Parts – Update QuantityOnHand
- **`TBA`**/2 - DISPLAYING – DISPLAY INVOICE ON REFUND
  - **UI**
    - [ ] UI - Display list of sale items 
    - [ ] UI - Display data is correct
    - [ ] UI - Display totals set to zero
  - **BLL**
    - [ ] Get requested invoice details
- **`TBA`**/5 - PROCESSING – PROCESS REFUND
  - **UI**
    - [ ] Inform user of errors/success in processing
    - [ ] Validation of Quantity to be positive integer
    - [ ] Display Refund Invoice # if successful
    - [ ] Totals calculation shows amount that was refunded 
  - **BLL**
    - [ ] SINGLE TRANSACTION!
    - [ ] Validation
    - [ ] refund quantity cannot exceed original sold quantity for Item 
    - [ ] Parts quantity on hand increased by refunded quantity
    - [ ] SaleRefund created for refund with correct totals
    - [ ] SaleRefundDetail record created for each refunded item.
    - [ ] Original Sales record unaltered
- **`TBA`**/1 - DISPLAYING – REFUND - CLEAR CART
  - **UI**
    - [ ] No invoice displayed
    - [ ] Totals and invoice number cleared

*Back to the [Part 3 Marking](./ReadMe.md)*