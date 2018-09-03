

echo "Calculatrice Powershell";


# demande le premier nombre à l'utilisateur
# [int] précise le type de variable, présentement un type de variable nombre entier

[int] $valeure1 = read-host "entre le premier nombre";



# [string] précise qu'il s'agit d'un type de variable chaine de caractère

[string]$operation = read-host "Entre l'opérateur";



[int] $valeure2 = read-host "entre le deuxieme nombre";


<# 

switch permet de faire plusieurs "if" à la suite
dans l'exemple suivant, nous avons if la variable "$operation" = chaine de caractère "+" créer une nouvelle variable 
"$res" qui sera égale à la somme des variables "$valeure1" + "valeure2"
#>
switch($operation) {
    "+" {$res = $valeure1+$valeure2}
    "-" {$res = $valeure1-$valeure2}
    "*" {$res = $valeure1*$valeure2}
    "/" {$res = $valeure1/$valeure2}
    "x" {$res = $valeure1*$valeure2}
    default {$res = "Erreur, revoyez l'opérateur ou le chiffre"}
                    }
# Affiche le résultat (`n représente un saut de ligne)
echo "`nResultat: $res `n"
