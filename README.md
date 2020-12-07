# SecretSanta
Secret Santa Randomizer

## Input
Given a list of names as either a positional parameter or from user input, `secretsanta.sh` will verify & shuffle the list, then print & save the output:
```
~# ./secretsanta.sh names.txt

*** 2020 Secret Santa Randomizer ***

Alonso       Suzy
Shanta       Alonso
Seema        Shanta
Leona        Seema
Gretchen     Leona
Talitha      Gretchen
Garth        Talitha
Edmundo      Garth
Annabel      Edmundo
Sanford      Annabel
Barry        Sanford
Queen        Barry
Ronny        Queen
Tran         Ronny
Duane        Tran
Marisela     Duane
Vito         Marisela
Aurora       Vito
Beverley     Aurora
Suzy         Beverley

```
```
~# ./secretsanta.sh

*** 2020 Secret Santa Randomizer ***

Enter the list's filename: names.txt

Queen        Ronny
Annabel      Queen
Leona        Annabel
Marisela     Leona
Gretchen     Marisela
Alonso       Gretchen
Suzy         Alonso
Talitha      Suzy
Sanford      Talitha
Shanta       Sanford
Aurora       Shanta
Beverley     Aurora
Edmundo      Beverley
Barry        Edmundo
Vito         Barry
Seema        Vito
Duane        Seema
Garth        Duane
Tran         Garth
Ronny        Tran

```

## Validation

```
~# ./secretsanta.sh name.txt

*** 2020 Secret Santa Randomizer ***

Enter the list's filename: name.txt

*** 'name.txt' is empty ***

Enter the list's filename: names.txt

Aurora       Seema
Annabel      Aurora
Suzy         Annabel
Tran         Suzy
Vito         Tran
Duane        Vito
Marisela     Duane
Talitha      Marisela
Garth        Talitha
Barry        Garth
Shanta       Barry
Sanford      Shanta
Alonso       Sanford
Edmundo      Alonso
Ronny        Edmundo
Queen        Ronny
Leona        Queen
Gretchen     Leona
Beverley     Gretchen
Seema        Beverley

```
```
~# ./secretsanta.sh

*** 2020 Secret Santa Randomizer ***

Enter the list's filename: name.txt

*** 'name.txt' is empty ***

Enter the list's filename: names.txt

Marisela     Barry
Suzy         Marisela
Vito         Suzy
Aurora       Vito
Gretchen     Aurora
Leona        Gretchen
Sanford      Leona
Edmundo      Sanford
Duane        Edmundo
Alonso       Duane
Talitha      Alonso
Shanta       Talitha
Ronny        Shanta
Garth        Ronny
Queen        Garth
Tran         Queen
Annabel      Tran
Seema        Annabel
Beverley     Seema
Barry        Beverley

```

## Output
The recipient's output will be saved to the corresponding user's `$HOME` directory under `~/SecretSanta/$year/recipients_$year.txt`:
```
~# ls -lah ~/SecretSanta/2020/recipients_2020.txt
-rw-r--r-- 1 root root 397 Dec  7 05:28 /root/SecretSanta/2020/recipients_2020.txt
```
```
~# cat ~/SecretSanta/2020/recipients_2020.txt
Queen        Ronny
Annabel      Queen
Leona        Annabel
Marisela     Leona
Gretchen     Marisela
Alonso       Gretchen
Suzy         Alonso
Talitha      Suzy
Sanford      Talitha
Shanta       Sanford
Aurora       Shanta
Beverley     Aurora
Edmundo      Beverley
Barry        Edmundo
Vito         Barry
Seema        Vito
Duane        Seema
Garth        Duane
Tran         Garth
Ronny        Tran
```