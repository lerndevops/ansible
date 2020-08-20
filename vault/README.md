## Waht is Ansible Vault ?

##### Ansible vault was introduced with Ansible 1.5 release & is used widely after. 

##### Ansible Vault allows you to keep sensitive data such as passwords or keys in encrypted files, rather than as plaintext in playbooks or roles.

##### These vault files can then be distributed or placed in source control.

##### Ansible Vault encrypts your secrets via AES256 so that you can safely store them with your Ansible Playbooks and inventory.

## What Can be Encrypted

1. Ansible Vault can encrypt any structured data file used by Ansible.

2. This can include `group_vars/` or `host_vars/` inventory variables, variables loaded by `include_vars` or `vars_files`, or variable files passed on the ansible-playbook command line with `-e @file.yml` or `-e @file.json` Role variables and defaults are also included.

3. To hide the names of variables that you’re using, you can encrypt the task files in their entirety.

4. Ansible Vault can also encrypt arbitrary files, even binary files. 

5. If a vault-encrypted file is given as the src argument to the copy, template, unarchive, script or assemble modules, the file will be placed at the destination on the target host decrypted (assuming a valid vault password is supplied when running the play).

## Create New Encrypted Files

##### To create a new encrypted data file, run the following command

```
	ansible-vault create test.yml
```

##### First you will be prompted for a password. The password used with vault currently must be the same for all files you wish to use together at the same time.

##### After providing a password, the tool will launch whatever editor you have defined with $EDITOR, and defaults to vi (before 2.1 the default was vim). 

##### Once you are done with the editor session, the file will be saved as encrypted data.


## Encrypt Existing Files

##### If you have existing files that you wish to encrypt, use the ansible-vault encrypt command. This command can operate on multiple files at once
```
	ansible-vault encrypt foo.yml bar.yml baz.yml
```
##### It will ask for new vault password if you do not have already one. If a vault password exist we can use the same to encrypt. 

## Decrypt Existing Files

##### If you have existing files that you no longer want to keep encrypted, you can permanently decrypt them by running the ansible-vault decrypt command. This command will save them unencrypted to the disk. 
```
	ansible-vault decrypt foo.yml bar.yml baz.yml
```
##### This will ask for the vault password used to encrypt the files. 

## Viewing Encrypted Files

##### Encrypted files can be viewed without decrypting/editing them, we can use ansible-vault view command. It opens the file “read“ mode

```
	ansible-vault view foo.yml bar.yml baz.yml
```

##### This will ask for the vault password used to encrypt the files.

##### It is suggested to use `ansible-vault view` always to see the content of an encrypted file instead `ansible-vault decrypt`

##### `ansible-vault decrypt` should be used only when we no longer need an encrypted format for any file.

## Editing Encrypted files

##### To edit an encrypted file in place, use the ansible-vault edit command. This will open the file & read/write mode. 
```
	ansible-vault edit foo.yml
```
##### This command will decrypt the file to a temporary file and allow you to edit the file, saving it back as encrypted when done and removing the temporary file. 

## Re Keying Encrypted files

##### If we wish to change vault password on a vault-encrypted file or files, we can do with the rekey command
```
	ansible-vault rekey foo.yml
```
##### This command will ask existing Vault password first &  then it will be prompted for new passwork & confirm the same 

## `Providing Vault Passwords`

1. **If we use encrypted files while running any ansible playbook, ansible will try to decrypt in memory and then runs the playbook.**

2. **ansible require vault password to decrypt encrypted files, so the vault password need to be provided while we running the playbook. This can be done in multiple ways**

     * We can enforce to prompt for a vault password on cli while running the playbook.
     * Vault password can put into a file & provide the password file in cli while running the playbook
     * Vault password file can be set as config parameter in ansible.cfg so the ansible directly reads while running the playbooks & need not to provide anything on cli. 

### Prior to Ansible 2.4

##### To prompt for a vault password we used --ask-vault-pass on the cli
```
	 ansible-playbook --ask-vault-pass myplaybook.yml
```

##### To specify a vault password in a text file ‘vaultpass.txt’, use the --vault-password-file option
```
	 ansible-playbook --vault-password-file vaultpass.txt myplaybook.yml 
```

### Since Ansible 2.4

##### recommended way to provide a vault password from the cli is to use the --vault-id cli option
```
To prompt for password 
	ansible-playbook --vault-id @prompt myplaybook.yml 
```
```
To use a password stored in the file
	ansible-playbook --vault-id /path/to/my/vault-password-file myplaybook.yml
```

##### To Configure the vault password file in ansible.cfg file, Edit your ansible.cfg file and place the below string 

```
	vault_password_file = /path/to-my/vault-passwd-file
```

##### Once we have this setting in the ansible.cfg we do not need to prvide `--vault-id` on the cli, It directly reads from ansible.cfg file & execute the playbook.

## `encrypt_string`

##### Do we have to encrypt a whole file just for one secret key word in a file ? `Answer is No`

##### We have way to encrypt only a particular string also through encrypt_string feature. 

##### The `ansible-vault` `encrypt_string` command will encrypt and format a provided string into a format that can be included in ansible-playbook YAML files.

##### We can encrypt a particular string & name it as below. 

```
	ansible-vault encrypt_string --vault-id @prompt ‘<value to encrypt>’ –name ‘<name of the string>’

	ansible-vault encrypt_string --vault-id @prompt ‘password’ –name ‘db_password’
```

## `Vault Format`

##### A vault encrypted file is a UTF-8 encoded txt file. The file format includes a newline terminated header.
```
For example:
	$ANSIBLE_VAULT;1.1;AES256

	OR

	$ANSIBLE_VAULT;1.2;AES256;vault-id-label
```

##### The header contains the vault format id, the vault format version, the vault cipher, and a vault-id label (with format version 1.2), separated by semi-colons ‘;’

##### The first field `$ANSIBLE_VAULT` is the format id. Currently `$ANSIBLE_VAULT` is the only valid file format id. This is used to identify files that are vault encrypted `(via vault.is_encrypted_file())`

##### The second field (1.X) is the vault format version. All supported versions of ansible will currently default to ‘1.1’ or ‘1.2’ if a labeled vault-id is supplied.

##### The ‘1.0’ format is supported for reading only (and will be converted automatically to the ‘1.1’ format on write). The format version is currently used as an exact string compare only (version numbers are not currently ‘compared’).

##### The third field (AES256) identifies the cipher algorithm used to encrypt the data. Currently, the only supported cipher is ‘AES256’. [vault format 1.0 used ‘AES’, but current code always uses ‘AES256’]

##### The fourth field (vault-id-label) identifies the vault-id label used to encrypt the data. For example using a vault-id of dev@prompt results in a vault-id-label of ‘dev’ being used.


