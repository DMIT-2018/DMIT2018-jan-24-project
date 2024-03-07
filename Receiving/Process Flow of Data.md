# Starting State
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | Widget C    | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 0              | 0          | 0         |        |
| 1882                  | 14     | Widget N    | 200        | 0              | 0          | 0         |        |


# First Truck (Receiving)
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 30             | 10         | 0         |        |
| 1880                  | 3      | Widget C    | 60         | 60             | 8          | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 32             | 0          | 7         | Broken |
| 1882                  | 14     | Widget N    | 200        | 200            | 0          | 0         |        |

# Second Truck (Receiving)
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 20             | 22         | 2         | Over Ship |
| 1880                  | 3      | Widget C    | 60         | 52             | 52         | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 32             | 0          | 0         |        |
| 1882                  | 14     | Widget N    | 200        | 200            | 0          | 0         |        |


# Third (Receiving)
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | Widget C    | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 32             | 17         | 0         |        |
| 1882                  | 14     | Widget N    | 200        | 200            | 191        | 0         |        |

# Fourth (Receiving)
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | Widget C    | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 15             | 15         | 0         |        |
| 1882                  | 14     | Widget N    | 200        | 9              | 9          | 0         |        |

# Purchase Order Can Now Be Close
| PurchaseOrderDetailID | PartID | Description | QtyOnOrder | QtyOutstanding | QtyReceive | QtyReturn | Reason |
|-----------------------|--------|-------------|------------|----------------|------------|-----------|--------|
| 1879                  | 1      | Widget A    | 30         | 0              | 0          | 0         |        |
| 1880                  | 3      | Widget C    | 60         | 0              | 0          | 0         |        |
| 1881                  | 6      | Widget F    | 32         | 0              | 0          | 0         |        |
| 1882                  | 14     | Widget N    | 200        | 0              | 0          | 0         |        |