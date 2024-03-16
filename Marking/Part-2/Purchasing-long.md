# Purchasing Sub-System

> Name: **STUDENT_NAME**

| Mark | Weight | Area |
|:----:|:-----:|:-----|
| **`TBA`** |3 | Deliverable Issue with Task comment   |
| **`TBA`**|2 | DISPLAYING – VENDORS PROCESSING (SELECTION, VENDOR DATA) |
| **`TBA`**|3 | DISPLAYING – ORDER (ACTIVE/SUGGESTED), VENDOR INVENTORY |
| **`TBA`**|3 | PROCESSING – ADD ITEMS TO CURRENT ACTIVE ORDER |
| **`TBA`**|3 | DISPLAYING/PROCESSING – UPDATE/REMOVE ITEMS FROM CURRENT ACTIVE ORDER |
| **`TBA`**|1 | PROCESSING – CANCEL CURRENT ACTIVE ORDER PROCESSING|
| **`TBA`**|2 | PROCESSING – DELETE CURRENT ACTIVE ORDER |
| **`TBA`**|3 | PROCESSING – SAVE CURRENT ACTIVE ORDER |
| **`TBA`**|3 | PROCESSING – PLACE CURRENT ACTIVE ORDER |
| | | |
| **`TBA`**|**23** | **TOTAL** |

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

- DISPLAYING – VENDORS PROCESSING (SELECTION, VENDOR DATA)
  - **UI**
    - [ ] Vendor List for selection
    - [ ] Display vendor information on selection
  - **BLL**
    - [ ] Get Vendor List
    - [ ] Obtains data for selected vendor

- DISPLAYING – ORDER (ACTIVE/SUGGESTED), VENDOR INVENTORY
  - **UI**
    - [ ] Display Current Active order (if existing) or Suggested Order (no current active order) on vendor selection
    - [ ] Display vendor inventory on vendor selection
    - [ ] Subtotals correct for order (Active or Suggested).
  - **BLL**
    - [ ] Obtains data for vendor inventory
    - [ ] Obtains data for existing Current Active/Suggested order
- PROCESSING – ADD ITEMS TO CURRENT ORDER
  - **UI**
    - [ ] Add item to order list.
    - [ ] Quantity to order set at minimum to 1 with current inventory price.
    - [ ] Subtotals adjusted for order.
    - [ ] Part can only appear once on current order (not on vendor inventory).
    - [ ] Part can only appear once on vendor inventory (not on current order).
  - **BLL**
    - [ ] No alternations to database
- DISPLAYING/PROCESSING – ALTER/REMOVE ITEMS FROM CURRENT ACTIVE ORDER
  - **UI**
    - [ ] Remove item from order (remove from list)
    - [ ] Add item to vendor inventory (add to list)
    - [ ] Subtotals adjusted correctly when adding/removing from order
    - [ ] Allows price and/or quantity to be altered
    - [ ] Validation positive values only
   - **BLL**
    - [ ] No alternations to database
- PROCESSING – CANCEL CURRENT ACTIVE ORDER PROCESSING
  - **UI**
    - [ ] Clears display
    - [ ] Reset for Vendor selection
    - [ ] Reset totals to zero
    - [ ] Web page process ONLY
  - **BLL**
    - No alternations to database
- PROCESSING – DELETE CURRENT ACTIVE ORDER
  - **UI**
    - [ ] Clears display
    - [ ] Reset for Vendor selection
    - [ ] Reset totals to zero
    - [ ] Uses confirmation prompt to allow event to complete
  - **BLL**
    - [ ] SINGLE TRANSACTION!
      - [ ] PurchaseOrderDetails – remove Current Active order detail records if present on database
      - [ ] PurcahseOrders – remove Current Active order record
- PROCESSING – UPDATE CURRENT ACTIVE ORDER
  - **UI**
    - [ ] Informs user on result of processing order
    - [ ] Collects all data for processing Current Active order
  - **BLL**
    - [ ] Validation
    - [ ] SINGLE TRANSACTION!
      - [ ] PurchaseOrderDetails – Creates/Updates/Deletes record(s) values as appropriate
      - [ ] PurchaseOrder –
          - [ ] Create record if new current order
          - [ ] Update subtotal and gst on exsiting current order
- PROCESSING – PLACE CURRENT ACTIVE ORDER
  - **UI**
    - [ ] Informs user on result of placing order
    - [ ] Collects all data for processing Current Active order
  - **BLL**
    - [ ] Validation
    - [ ] TRANSACTION:
      - [ ] Does an Update of Current Active Order
      - [ ] Sets OrderDate to Today
      - [ ] Update Part QuantityOnOrder

*Back to the [Part 3 Marking](./ReadMe.md)*
