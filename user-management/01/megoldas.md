1. feladat

```bash
adduser dilemm
adduser hozdon
adduser gojos
```

2. feladat

```bash
groupadd MG
groupadd HR
```

3. feladat

```bash
usermod -a -G MG dilemm
usermod -a -G HR hozdon
```

4. feladat

```bash
usermod -a -G sudo gojos
```

5. feladat

```bash
chage -d 0 gojos
```

6. feladat

```bash
chage -E "2025-01-01" dilemm
```

7. feladat

```bash
chage -m 3 dilemm
```

8. feladat

```bash
usermod -L hozdon
```

9. feladat

```bash
deluser --backup gojos
```

10. feladat

```bash
usermod -c "Fo Somané Dil Emma" dilemm
```

11. feladat

```bash
mkdir -p /home/titkos/dilemm
cp -r /home/dilemm/* /home/titkos/dilemm
usermod -d /home/titkos/dilemm dilemm
```

12. feladat

```bash
adduser --allow-bad-names --home /home/titkos/fa.zoltan fa.zoltan
chage -E "2023-10-11" fa.zoltan
chage -M 7 fa.zoltan
chage -d 0 fa.zoltan
```
