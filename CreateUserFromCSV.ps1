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

Script qui accepte un ficher .csv et qui crée des utilisateurs et groupes.

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



.EXAMPLE



.EXAMPLE



.LINK

-

#>
Param([String]$path)

Import-Module -Name Microsoft.PowerShell.LocalAccounts -UseWindowsPowerShell;

if(Test-Path -Path $path) {
    $fullPath = $path.Split('\');
    $name_csv = $fullPath[$fullPath.Length - 1].Split('.');
    if($name_csv[$name_csv.Length - 1] -eq 'csv') {
        $csv = Get-ChildItem -Path $path -File
        if($csv.Length -eq 0) {
            Write-Host "Désolé mais votre fichier csv est vide"
            Write-Host 
        } else {
            $data = Import-Csv -Path $path -Encoding utf8;
            for ($i = 0; $i -le $data.Count; $i++) {
                if ($data[$i].status -eq "user") {
                    $path = "E:\Entreprise\Utilisateurs";
                    $userName = $data[$i].fname + ' ' + $data[$i].lname
                    $userGroup = $data[$i].group;

                    $allUser = (Get-LocalUser).Name
                    $allGroup = (Get-LocalGroup).Name

                    if($alluser.Contains($userName)) {
                        Write-Host "L' utilisateurs $userName exists";
                        Write-Host ""
                    } else {
                        New-LocalUser -Name "$userName" -NoPassword
                        Write-Host "L'utilisateur $userName a bien été crée"
                        Write-Host ""
                        Write-Host ""
                        if($allGroup.Contains($userGroup)) {
                            Add-LocalGroupMember -Group "$usergroup" -Member "$userName"
                            Write-Host "L'utilisateur $userName a bien été crée dans le groupe $userGroup"
                            Write-Host ""
                        }
                        Add-NTFSAccess -Path "E:\Test" -Account $userName -AccessRights FullControl -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                    }
                    if(-not(Test-Path -Path "$path\$userName")) {
                        New-Item -Path $path -Name "$userName" -ItemType Directory
                        Write-Host "Le dossier $userName dans $path\$username a bien été crée"
                        Write-Host ""
                    } else {
                        Write-Host "The directory $userName exists"
                        Write-Host ""
                    }
                } else {
                    if(($data[$i].fname).Length -gt 0) {
                        $path = "E:\Entreprise\Groupes";
                        $groupName = $data[$i].fname
                        $allGroup = (Get-LocalGroup).Name
                        if($allGroup.Contains($groupName)) {
                            Write-Host "The group $groupName exists";
                            Write-Host ""
                        } else {
                            New-LocalGroup -Name "$groupName"
                            Write-Host "Le groupe $groupName a bien été crée"
                            Write-Host ""
                        }
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
                <#
                switch($groupName) {
                    "Direcion"{ 
                        Add-NTFSAccess -Path "E:\Test\1" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                        Add-NTFSAccess -Path "E:\Test" -Account $userName -AccessRights ReadAndExecute -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                        break; 
                    }
                    "Management"{
                        Add-NTFSAccess -Path "E:\Test\2" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                        break;
                    }
                    "Marketing"{
                        Add-NTFSAccess -Path "E:\Test\3" -Account $userName -AccessRights Modify -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                        break;
                    }
                    "Admin"{
                        Add-NTFSAccess -Path "E:\" -Account $userName -AccessRights FullControl -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru;
                    }
                }#>
            }
        }
    } else {
        Write-Host "Désolé mais votre fichier a la mauvaise extension";
    }
} else {
    Write-Host "Désolé ce fichier n'existe pas";
}