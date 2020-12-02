# python-black-check
A customisable GitHub action to check the style of Python code with [black](https://github.com/psf/black).

# Inputs
You can use inputs to alter how `black` will check your code.

## Path (optional)
This tells `black` where to look for files to check.

**Default**: `.`, i.e. looks for files in the whole repository.

## Line-length (optional)
This tells `black` how long each line of Python code can be.

**Default**: `81`, which is _different_ from `black`'s default of `88`.

## Include (optional)
This tells `black` which files we should verify the format.

**Default**: `\.pyi?$`, which is `black`'s default value if not informed.

## Exclude (optional)
This tells `black` which files we should ignore.

**Default**: `/(\.direnv|\.eggs|\.git|\.hg|\.mypy_cache|\.nox|\.tox|\.venv|\.svn|_build|buck-out|build|dist)/`, which is `black`'s default value if not informed.

# Example usage
Include this in your `.github/workflows/main.yaml`:

```yaml
uses: RojerGS/python-black-check@master
```
or, if you want to override any of the defaults,

```yaml
uses: RojerGS/python-black-check@master
with:
  line-length: '81'
  path: '.'
  include: 'apps'
  exclude: '(/*.html|/*.mo|/*.po|/*.png|/*.rst)'
```
