# Linux playground

A single Docker container with multiple SSH users accessible through port **10022**.

## Quick Start

```bash
# Build and start the container
docker compose up --build -d
```

Change password for sudo user (For now, only `canh25xp` is in sudo user file)

```sh
echo 'canh25xp:password' | podman exec -i ssh-multi-user chpasswd
```

## SSH Connection

All users connect to the same port **10022**:

```bash
ssh -p 10022 <username>@<host-ip>
```

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

For example:

```bash
ssh -p 10022 cuong.nguyen@107.98.150.183
ssh -p 10022 yen.pt1@107.98.150.183
```
