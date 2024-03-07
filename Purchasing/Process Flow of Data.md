# Inventory Table (Subset of Inventory Items)

| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 100            | 20              | $10.00 |
| 2   | GPU           | 90           | 80             | 10              | $15.00 |
| 3   | RAM           | 60           | 0              | 0               | $20.00 |
| 4   | SSD           | 30           | 47             | 8               | $25.00 |
| 5   | HDD           | 75           | 22             | 53              | $12.00 |
| 6   | Motherboard   | 45           | 11             | 2               | $18.00 |
| X   | ...           | XXX          | XXX            | XXX             | XXX.XX |
| 14  | Power Supply  | 45           | 90             | 15              | $21.25 |
| X   | ...           | XXX          | XXX            | XXX             | XXX.XX |

# PO Lines (New PO with Suggested Items)

| PurchaseOrderDetailID | ID  | Description   | QOH | ROL | QOO | QTO | Price  | Notes |
| --------------------- | --- | ------------- | --- | --- | --- | --- | ------ | ----- |
| 1879                  | 1   | CPU           | 100 | 150 | 20  | 30  | $10.00 |       |
| 1880                  | 3   | RAM           | 0   | 60  | 0   | 60  | $20.00 |       |
| 1881                  | 6   | Motherboard   | 11  | 45  | 2   | 32  | $18.00 |       |

# Vendor Specific Inventory (Vendors Inventory NOT Populated on PO Lines)

| ID  | Description    | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | -------------- | ------------ | -------------- | --------------- | ------ |
| 2   | GPU            | 90           | 80             | 10              | $15.00 |
| 4   | SSD            | 30           | 47             | 8               | $25.00 |
| 5   | HDD            | 75           | 22             | 53              | $12.00 |
| 7   | Cooling Fan    | 55           | 110            | 15              | $22.00 |
| 8   | Case           | 35           | 70             | 5               | $17.50 |
| 9   | Network Card   | 65           | 130            | 0               | $19.99 |
| 10  | Optical Drive  | 25           | 50             | 10              | $30.00 |
| 11  | CPU Cooler     | 80           | 160            | 0               | $14.00 |
| 12  | Keyboard       | 40           | 80             | 20              | $25.50 |
| 13  | Mouse          | 70           | 140            | 10              | $16.75 |
| 14  | Power Supply   | 45           | 90             | 15              | $21.25 |
| 15  | Monitor        | 30           | 60             | 5               | $28.99 |
| 16  | Sound Card     | 60           | 120            | 0               | $23.00 |

# PO Lines (Updating Price $18.00 -> $12.00)

| PurchaseOrderDetailID | ID  | Description   | QOH | ROL | QOO | QTO | Price  | Notes          |
| --------------------- | --- | ------------- | --- | --- | --- | --- | ------ | -------------- |
| 1881                  | 6   | Motherboard   | 11  | 45  | 2   | 32  | $12.00 | Override Price |

# PO Lines (Adding Extra Items to PO)

| PurchaseOrderDetailID | ID  | Description   | QOH | ROL | QOO | QTO | Price  | Notes          |
| --------------------- | --- | ------------- | --- | --- | --- | --- | ------ | -------------- |
| 1882                  | 14  | Power Supply  | 90  | 45  | 15  | 200 | $21.25 | Ordering Extra |

# PO Lines (Final PO)

| PurchaseOrderDetailID | ID  | Description   | QOH | ROL | QOO | QTO | Price  | Notes          |
| --------------------- | --- | ------------- | --- | --- | --- | --- | ------ | -------------- |
| 1879                  | 1   | CPU           | 100 | 150 | 20  | 30  | $10.00 |                |
| 1880                  | 3   | RAM           | 0   | 60  | 0   | 60  | $20.00 |                |
| 1881                  | 6   | Motherboard   | 11  | 45  | 2   | 32  | $12.00 | Override Price |
| 1882                  | 14  | Power Supply  | 90  | 45  | 15  | 200 | $21.25 | Ordering Extra |

# Inventory Table (After Place Orders)

| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 100            | 50              | $10.00 |
| 2   | GPU           | 90           | 80             | 10              | $15.00 |
| 3   | RAM           | 60           | 0              | 60              | $20.00 |
| 4   | SSD           | 30           | 47             | 8               | $25.00 |
| 5   | HDD           | 75           | 22             | 53              | $12.00 |
| 6   | Motherboard   | 45           | 11             | 32              | $18.00 |
| X   | ...           | XXX          | XXX            | XXX             | XXX.XX |
| 14  | Power Supply  | 45           | 90             | 215             | $21.25 |
| X   | ...           | XXX          | XXX            | XXX             | XXX.XX |



