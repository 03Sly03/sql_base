# Utilisation Serveur
## commandes
    create   c <instance-name> <instance-version> -s 
    delete   d <instance-name>
    start    s <instance-name>
    stop     p <instance-name>   -i   -k 
    share    h ["<user_SID>" | "<user_account>" ] "<private-name>" "<shared-name>"
    unshare  u "<shared-name>"
    info     i <instance-name>
    versions v     trace    t [ on | off ]
    help     -?

## Pour Créer une instance de SQL Server
SqlLocaldb c nom_du_serveur

## Pour Démarrer l'instance
SqlLocaldb s nom_du_serveur

## L'instruction INSERT 

INSERT INTO
    nom_table
VALUES
    ('valeur 1', 'valeur 2', ...)