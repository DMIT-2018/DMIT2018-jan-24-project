# Starting State

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 30             | 0          | 0         |        |
| 1880                  | 3      | RAM           | 60         | 60             | 0          | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 32             | 0          | 0         |        |
| 1882                  | 14     | Power Supply  | 200        | 200            | 0          | 0         |        |

## Initial Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 100            | 30              | $10.00 |
| 3   | RAM           | 60           | 0              | 60              | $20.00 |
| 6   | Motherboard   | 45           | 11             | 32              | $18.00 |
| 14  | Power Supply  | 45           | 90             | 200             | $21.25 |

# First Truck (Receiving)

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 30             | 10         | 0         |        |
| 1880                  | 3      | RAM           | 60         | 60             | 8          | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 32             | 0          | 7         | Broken |
| 1882                  | 14     | Power Supply  | 200        | 200            | 0          | 0         |        |

## Updated Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 110            | 20              | $10.00 |<-
| 3   | RAM           | 60           | 8              | 52              | $20.00 |<-
| 6   | Motherboard   | 45           | 11             | 32              | $18.00 |
| 14  | Power Supply  | 45           | 90             | 200             | $21.25 |

# Second Truck (Receiving)

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 20             | 20         | 2         | Over Ship |
| 1880                  | 3      | RAM           | 60         | 52             | 52         | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 32             | 0          | 0         |        |
| 1882                  | 14     | Power Supply  | 200        | 200            | 0          | 0         |        |

## Updated Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 130            | 0               | $10.00 |<-
| 3   | RAM           | 60           | 60             | 0               | $20.00 |<-
| 6   | Motherboard   | 45           | 11             | 32              | $18.00 |
| 14  | Power Supply  | 45           | 90             | 200             | $21.25 |

# Third (Receiving)

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | RAM           | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 32             | 17         | 0         |        |
| 1882                  | 14     | Power Supply  | 200        | 200            | 191        | 0         |        |

## Updated Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 130            | 0               | $10.00 |
| 3   | RAM           | 60           | 60             | 0               | $20.00 |
| 6   | Motherboard   | 45           | 28             | 15              | $18.00 |<-
| 14  | Power Supply  | 45           | 281            | 9               | $21.25 |<-

# Fourth (Receiving)

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | RAM           | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 15             | 15         | 0         |        |
| 1882                  | 14     | Power Supply  | 200        | 9              | 9          | 0         |        |

## Updated Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 130            | 0               | $10.00 |
| 3   | RAM           | 60           | 60             | 0               | $20.00 |
| 6   | Motherboard   | 45           | 43             | 0               | $18.00 |<-
| 14  | Power Supply  | 45           | 290            | 0               | $21.25 |<-

# Purchase Order Can Now Be Close

| PurchaseOrderDetailID | PartID | Description   | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|---------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | CPU           | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | RAM           | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Motherboard   | 32         | 0              | 0          | 0         |        |
| 1882                  | 14     | Power Supply  | 200        | 0              | 0          | 0         |        |

## Final Inventory
| ID  | Description   | ReorderLevel | QuantityOnHand | QuantityOnOrder | Price  |
| --- | ------------- | ------------ | -------------- | --------------- | ------ |
| 1   | CPU           | 150          | 130            | 0               | $10.00 |
| 3   | RAM           | 60           | 60             | 0               | $20.00 |
| 6   | Motherboard   | 45           | 43             | 0               | $18.00 |
| 14  | Power Supply  | 45           | 290            | 0               | $21.25 |