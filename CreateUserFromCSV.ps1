<#
.NOTES

Nom du fichier : CreateUserFromCSV.ps1
Prérequis : Powershell 7.4.0
Version du script : 1.0
Auteur : Quentin Metroz
Date de création : 22.12.2023
Lieu : ETML, Sébeillon
Changement : Aucun

.SYNOPSIS

Script qui accepte un ficher .csv et qui crée des utilisateurs et groupes et donnent des droits.

.DESCRIPTION

Script qui accepte un paramètres path qui est donc le chemin vers le fichier csv, le script crée les utilisateurs les mets dans des groupes, crée le dossier avec leur nom dans E:\Entreprise\Utilisateurs 
et donne les droits définis auparavant. Il crée aussi des groupes, crée leur dossier dans E:\Entreprise\Groupes.

.PARAMETER path

Spécifie le chemin du fichier csv.

.INPUTS

-

.OUTPUTS

-

.EXAMPLE

PS C:\Users\EtmlPowershell\Desktop> .\CreateUserFromCSV.ps1 C:\Users\EtmlPowershell\Desktop\CSV\data.csv

Etat du fichier CSV : 

fname, "lname", "group", "mdp", "status"
"toto", "tot", "Management", "mdp", "user" 
"toto", "toto", "Marketing", "mdp", "user" 
"toto", "tot", "Management", "mdp", "user" 
"Admin", "", "", "", "group" 
"Management", "", "", "", "group" 
"Direction", "", "", "", "group"

Résultat du script : 

WARNING: Module Microsoft.PowerShell.LocalAccounts is loaded in Windows PowerShell using WinPSCompatSession remoting session; please note that all input and output of commands from this module will be deserialized objects. If you want to load this module into PowerShell please use 'Import-Module -SkipEditionCheck' syntax.

L'utilisateur toto tot a bien été crée

Le dossier Management a bien été crée dans E:\Entreprise\Groupes\

Name     Enabled Description
----     ------- -----------
toto tot True

PSPath              : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes\Management
PSParentPath        : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes
PSChildName         : Management
PSDrive             : E
PSProvider          : Microsoft.PowerShell.Core\FileSystem
PSIsContainer       : True
Name                : Management
Parent              : E:\Entreprise\Groupes
Root                : E:\
Exists              : True
FullName            : E:\Entreprise\Groupes\Management
Extension           :
CreationTime        : 12.01.2024 10:29:04
CreationTimeUtc     : 12.01.2024 09:29:04
LastAccessTime      : 12.01.2024 10:29:04
LastAccessTimeUtc   : 12.01.2024 09:29:04
LastWriteTime       : 12.01.2024 10:29:04
LastWriteTimeUtc    : 12.01.2024 09:29:04
LinkTarget          :
UnixFileMode        : -1
Attributes          : Directory
Mode                : d----
ModeWithoutHardLink : d----
BaseName            : Management
ResolvedTarget      : E:\Entreprise\Groupes\Management
Target              :
LinkType            :


PSPath               : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Utilisateurs\toto tot
PSParentPath         : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Utilisateurs
PSChildName          : toto tot
PSDrive              : E
PSProvider           : Microsoft.PowerShell.Core\FileSystem
PSIsContainer        : True
Name                 : toto tot
Parent               : E:\Entreprise\Utilisateurs
Root                 : E:\
Exists               : True
FullName             : E:\Entreprise\Utilisateurs\toto tot
Extension            :
CreationTime         : 12.01.2024 10:29:04
CreationTimeUtc      : 12.01.2024 09:29:04
LastAccessTime       : 12.01.2024 10:29:04
LastAccessTimeUtc    : 12.01.2024 09:29:04
LastWriteTime        : 12.01.2024 10:29:04
LastWriteTimeUtc     : 12.01.2024 09:29:04
LinkTarget           :
UnixFileMode         : -1
Attributes           : Directory
Mode                 : d----
ModeWithoutHardLink  : d----
BaseName             : toto tot
ResolvedTarget       : E:\Entreprise\Utilisateurs\toto tot
Target               :
LinkType             :
Owner                :
IsInheritanceBlocked :

Le dossier Management a bien été crée dans E:\Entreprise\Groupes\
Les droits ont bien été accordé pour toto tot

The directory toto tot exists

toto to… True
L'utilisateur toto toto a bien été crée


PSPath               : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes\Marketing
PSParentPath         : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes
PSChildName          : Marketing
PSDrive              : E
PSProvider           : Microsoft.PowerShell.Core\FileSystem
PSIsContainer        : True
Name                 : Marketing
Parent               : E:\Entreprise\Groupes
Root                 : E:\
Exists               : True
FullName             : E:\Entreprise\Groupes\Marketing
Extension            :
CreationTime         : 12.01.2024 10:29:04
CreationTimeUtc      : 12.01.2024 09:29:04
LastAccessTime       : 12.01.2024 10:29:04
LastAccessTimeUtc    : 12.01.2024 09:29:04
LastWriteTime        : 12.01.2024 10:29:04
LastWriteTimeUtc     : 12.01.2024 09:29:04
LinkTarget           :
UnixFileMode         : -1
Attributes           : Directory
Mode                 : d----
ModeWithoutHardLink  : d----
BaseName             : Marketing
ResolvedTarget       : E:\Entreprise\Groupes\Marketing
Target               :
LinkType             :
Owner                :
IsInheritanceBlocked :

Le dossier Marketing a bien été crée dans E:\Entreprise\Groupes\

PSPath               : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Utilisateurs\toto toto
PSParentPath         : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Utilisateurs
PSChildName          : toto toto
PSDrive              : E
PSProvider           : Microsoft.PowerShell.Core\FileSystem
PSIsContainer        : True
Name                 : toto toto
Parent               : E:\Entreprise\Utilisateurs
Root                 : E:\
Exists               : True
FullName             : E:\Entreprise\Utilisateurs\toto toto
Extension            :
CreationTime         : 12.01.2024 10:29:04
CreationTimeUtc      : 12.01.2024 09:29:04
LastAccessTime       : 12.01.2024 10:29:04
LastAccessTimeUtc    : 12.01.2024 09:29:04
LastWriteTime        : 12.01.2024 10:29:04
LastWriteTimeUtc     : 12.01.2024 09:29:04
LinkTarget           :
UnixFileMode         : -1
Attributes           : Directory
Mode                 : d----
ModeWithoutHardLink  : d----
BaseName             : toto toto
ResolvedTarget       : E:\Entreprise\Utilisateurs\toto toto
Target               :
LinkType             :
Owner                :
IsInheritanceBlocked :

Le dossier Marketing a bien été crée dans E:\Entreprise\Groupes\
Les droits ont bien été accordé pour toto toto

The directory toto toto exists

L' utilisateurs toto tot exists

The directory toto tot exists


RunspaceId      : f33d3f8a-39be-4993-9b48-afb2b1560a77
Description     :
Name            : Admin
SID             : S-1-5-21-1865299722-1268469716-1634073996-1126
PrincipalSource : Local
ObjectClass     : Groupe

Le groupe Admin a bien été crée


PSPath               : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes\Admin
PSParentPath         : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes
PSChildName          : Admin
PSDrive              : E
PSProvider           : Microsoft.PowerShell.Core\FileSystem
PSIsContainer        : True
Name                 : Admin
Parent               : E:\Entreprise\Groupes
Root                 : E:\
Exists               : True
FullName             : E:\Entreprise\Groupes\Admin
Extension            :
CreationTime         : 12.01.2024 10:29:04
CreationTimeUtc      : 12.01.2024 09:29:04
LastAccessTime       : 12.01.2024 10:29:04
LastAccessTimeUtc    : 12.01.2024 09:29:04
LastWriteTime        : 12.01.2024 10:29:04
LastWriteTimeUtc     : 12.01.2024 09:29:04
LinkTarget           :
UnixFileMode         : -1
Attributes           : Directory
Mode                 : d----
ModeWithoutHardLink  : d----
BaseName             : Admin
ResolvedTarget       : E:\Entreprise\Groupes\Admin
Target               :
LinkType             :
Owner                :
IsInheritanceBlocked :

Le dossier Admin dans E:\Entreprise\Groupes\Admin a bien été crée


RunspaceId      : f33d3f8a-39be-4993-9b48-afb2b1560a77
Description     :
Name            : Management
SID             : S-1-5-21-1865299722-1268469716-1634073996-1127
PrincipalSource : Local
ObjectClass     : Groupe

Le groupe Management a bien été crée

The directory Management exists


RunspaceId      : f33d3f8a-39be-4993-9b48-afb2b1560a77
Description     :
Name            : Direction
SID             : S-1-5-21-1865299722-1268469716-1634073996-1128
PrincipalSource : Local
ObjectClass     : Groupe

Le groupe Direction a bien été crée


PSPath               : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes\Direction
PSParentPath         : Microsoft.PowerShell.Core\FileSystem::E:\Entreprise\Groupes
PSChildName          : Direction
PSDrive              : E
PSProvider           : Microsoft.PowerShell.Core\FileSystem
PSIsContainer        : True
Name                 : Direction
Parent               : E:\Entreprise\Groupes
Root                 : E:\
Exists               : True
FullName             : E:\Entreprise\Groupes\Direction
Extension            :
CreationTime         : 12.01.2024 10:29:04
CreationTimeUtc      : 12.01.2024 09:29:04
LastAccessTime       : 12.01.2024 10:29:04
LastAccessTimeUtc    : 12.01.2024 09:29:04
LastWriteTime        : 12.01.2024 10:29:04
LastWriteTimeUtc     : 12.01.2024 09:29:04
LinkTarget           :
UnixFileMode         : -1
Attributes           : Directory
Mode                 : d----
ModeWithoutHardLink  : d----
BaseName             : Direction
ResolvedTarget       : E:\Entreprise\Groupes\Direction
Target               :
LinkType             :
Owner                :
IsInheritanceBlocked :

Le dossier Direction dans E:\Entreprise\Groupes\Direction a bien été crée

Arborescence : 

E:\ENTREPRISE
├───Commun
├───Groupes
│   ├───Admin
│   ├───Direction
│   ├───Management
│   └───Marketing
└───Utilisateurs
    ├───toto tot
    └───toto toto

.EXAMPLE

PS C:\Users\EtmlPowershell\Desktop> .\CreateUserFromCSV.ps1 C:\Users\EtmlPowershell\Desktop\CSV\datas.csv

Désolé ce fichier n'existe pas.

.EXAMPLE

PS C:\Users\EtmlPowershell\Desktop> .\CreateUserFromCSV.ps1 C:\Users\EtmlPowershell\Desktop\CSV\data.cs

Désolé mais votre fichier à la mauvaise extension.

.LINK

Module NTFSAccess : https://devblogs.microsoft.com/scripting/weekend-scripter-use-powershell-to-get-add-and-remove-ntfs-permissions/

Remove NTFSAccess : https://www.manageengine.com/au/products/ad-manager/help/user_management/file-server-management/active-directory-remove-ntfs-permissions.html

Vérifier si un nom d'utilisateur existe : https://forums.futura-sciences.com/programmation-langages-algorithmique/861915-script-verifier-lexistence-dun-nom-dutilisateur.html

Import-CSV : https://lazyadmin.nl/powershell/import-csv-powershell/

Arrays : https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays?view=powershell-7.4

ForEach-Object : https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object?view=powershell-7.4

Lister les droits d'un utilisateur : https://answers.microsoft.com/fr-fr/msoffice/forum/all/comment-lister-en-powershell-tous-les-droits-dun/3f52a7db-4916-4809-b336-2450b4ba226f

Try - Catch - Finally : https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_try_catch_finally?view=powershell-7.4

Import-CSV : https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/import-csv?view=powershell-7.4

Opérateur de comparaison : https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/about/about_comparison_operators?view=powershell-7.4

#>
Param(
    [Parameter(Mandatory=$true, ParameterSetName='Path', Position=0)]
    [String]$path
)

# Importe le module pour éviter le case d'erreures
Import-Module -Name Microsoft.PowerShell.LocalAccounts -UseWindowsPowerShell;

# Teste si le chemin du CSV existe
if(Test-Path -Path $path) {
    $fullPath = $path.Split('\');
    $name_csv = $fullPath[$fullPath.Length - 1].Split('.');

    # Teste si l'extension est correcte
    if($name_csv[$name_csv.Length - 1] -eq 'csv') {
        $csv = Get-ChildItem -Path $path -File

        # Teste si le fichier a des valeurs
        if($csv.Length -eq 0) {
            Write-Host "Désolé mais votre fichier csv est vide"
            Write-Host 
        } else {
            $data = Import-Csv -Path $path -Encoding utf8;

            # Boucle sur les valeurs du CSV
            for ($i = 0; $i -le $data.Count; $i++) {

                # Teste si c'est un utilisateur ou un groupe via le status
                if ($data[$i].status -eq "user") {
                    $path = "E:\Entreprise\Utilisateurs";
                    $userName = $data[$i].fname + ' ' + $data[$i].lname
                    $userGroup = $data[$i].group;

                    $allUser = (Get-LocalUser).Name
                    $allGroup = (Get-LocalGroup).Name

                    # Teste si l'utilisateur existe déjà
                    if($alluser.Contains($userName)) {
                        Write-Host "L' utilisateurs $userName exists";
                        Write-Host ""
                    } else {
                        New-LocalUser -Name "$userName" -NoPassword
                        Write-Host "L'utilisateur $userName a bien été crée"
                        Write-Host ""

                        # Teste si le groupe de l'utilisateur existe déjà
                        if($allGroup.Contains($userGroup)) {
                            Add-LocalGroupMember -Group "$usergroup" -Member "$userName"
                            Write-Host "L'utilisateur $userName a bien été crée dans le groupe $userGroup"
                            Write-Host ""
                        }

                        # Accorde les droits suivant le groupe de l'utilisateur
                        if($groupName -eq "Direction") {

                            # Teste si le dossier Direction existe
                            if(-not(Test-Path -Path "E:\Entreprise\Groupes\Direction")) {
                                New-Item -Path "E:\Entreprise\Groupes" -Name "Direction" -ItemType Directory;
                                Write-Host "Le dossier $userGroup a bien été crée dans E:\Entreprise\Groupes\";
                            }
                            Add-NTFSAccess -Path "E:\Entreprise\Groupes\Direction" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Add-NTFSAccess -Path "E:\Entreprise\Commun" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Add-NTFSAccess -Path "E:\Entreprise" -Account $userName -AccessRights ReadAndExecute -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Write-Host "Les droits ont bien été accordé pour $userName";
                        } elseif($groupName -eq "Admin") {
                            Add-NTFSAccess -Path "E:\Entreprise" -Account $userName -AccessRights FullControl -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Write-Host "Les droits ont bien été accordé pour $userName";
                        } else {

                            # Teste si le dossier existe
                            if (-not(Test-Path -Path "E:\Entreprise\Groupes\$userGroup")) {
                                New-Item -Path "E:\Entreprise\Groupes" -Name $userGroup -ItemType Directory;
                                Write-Host "Le dossier $userGroup a bien été crée dans E:\Entreprise\Groupes\"
                            }
                            Add-NTFSAccess -Path "E:\Entreprise\Groupes\$userGroup" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Add-NTFSAccess -Path "E:\Entreprise\Commun" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;

                            # Teste si le dossier existe
                            if(-not(Test-Path -Path "E:\Entreprise\Utilisateurs\$userName")) {
                                New-Item -Path "E:\Entreprise\Utilisateurs" -Name $userName -ItemType Directory;
                                Write-Host "Le dossier $userGroup a bien été crée dans E:\Entreprise\Groupes\";
                            }
                            Add-NTFSAccess -Path "E:\Entreprise\Utilisateurs\$userName" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles;
                            Write-Host "Les droits ont bien été accordé pour $userName";
                        }
                        Write-Host ""
                    }

                    # Check si le dossier existe
                    if(-not(Test-Path -Path "$path\$userName")) {
                        New-Item -Path $path -Name "$userName" -ItemType Directory
                        Write-Host "Le dossier $userName dans $path\$username a bien été crée"
                        Write-Host ""
                    } else {
                        Write-Host "The directory $userName exists"
                        Write-Host ""
                    }
                } else {

                    # Check si c'est un groupe
                    if($data[$i].status -eq "group") {
                        $path = "E:\Entreprise\Groupes";
                        $groupName = $data[$i].fname
                        $allGroup = (Get-LocalGroup).Name

                        # Teste si le groupe a déjà été crée
                        if($allGroup.Contains($groupName)) {
                            Write-Host "The group $groupName exists";
                            Write-Host ""
                        } else {
                            New-LocalGroup -Name "$groupName"
                            Write-Host "Le groupe $groupName a bien été crée"
                            Write-Host ""
                        }
                        
                        # Check si le dossier existe
                        if(-not(Test-Path -Path "$path\$groupName")) {
                            New-Item -Path $path -Name "$groupName" -ItemType Directory
                            Write-Host "Le dossier $groupName dans $path\$groupName a bien été crée"
                            Write-Host ""
                        } else {
                            Write-Host "The directory $groupName exists"
                            Write-Host ""
                        }
                    }
                }
            }
        }
    } else {
        Write-Host "Désolé mais votre fichier a la mauvaise extension";
    }
} else {
    Write-Host "Désolé ce fichier n'existe pas";
}
