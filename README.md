# Multi-User SSH Container

A single Docker container with multiple SSH users accessible through port **10022**.

## Quick Start

```bash
# Build and start the container
docker compose up --build -d

# Stop the container
docker compose down
```

## SSH Connection

All users connect to the same port **10022**:

```bash
ssh <username>@<host-ip> -p 10022
```

### User Credentials

| Username     | Password    |
| ------------ | ----------- |
| cuong.nguyen | cuongnguyen |
| cuong.nm4    | cuongnm4    |
| doan.ng      | doanng      |
| duc.cuong    | duccuong    |
| giang.ngo    | giangngo    |
| haphong.ng   | haphongng   |
| khanh.pd     | khanhpd     |
| manhdung.ng  | manhdungng  |
| minhhoa.tr   | minhhoatr   |
| oanh.tt      | oanhtt      |
| tien.oanh    | tienoanh    |
| vancanh.ng   | vancanhng   |
| vu.pd        | vupd        |
| vuong.chinh  | vuongchinh  |
| yen.pt1      | yenpt1      |

### Examples

```bash
ssh cuong.nguyen@107.98.150.183 -p 10022
ssh yen.pt1@107.98.150.183 -p 10022
```
