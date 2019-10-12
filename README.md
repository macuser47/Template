# Template
Template is a command-line utility for automating project setup in a portable, package oriented way.

# How to install template
At the moment Template has only been tested on Ubuntu. It should work on most linux systems.

Just run the following command:

```bash
sudo make install
```

# How to create a template:
Templates are folders located by default in ~/.template/.
Each template directory needs a `template.json` and a directory 
called `files`.

The format of `template.json` is as follows:

```json
{
    "cwd": "~/template/working/directory",
    "shell": "shell_script_to_run.sh",
    "config": "config_script_to_run.sh"
}
```

Each entry is optional.

 * `cwd` is the working directory of the template. This will be the working directory
of the shell if `cwd` is not set.
 * `shell` is is an optional script to run when the template is generated.
 * `config` is an additional script to run when the template is generated for the 
the purpose of user configuration. Use this if your script uses `stdin`. 

When a template generation is invoked, template will copy the contents of the `files` 
directory into the working directory of the template, then run the `shell` and 
`config` scripts.

To quickly create a template, use the template template! (See below.)

# How use a template
To use your new template, use the following command:

```bash
template new [template name]
```

This will create an instance of the template in the current working directory.
Note that any arguments following the template name will be passed to the `shell` 
script.

For example, the `template` template uses the additional argument to specify the
name of the new template.

```bash
template new template myFancyNewTemplate
```

# More Templates!

I highly recommend using the `ducktemplate` template for easily making
templates with user configuration. You can find it on my GitHub.
