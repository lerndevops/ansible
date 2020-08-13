## YAML Introduction  

> **YAML is a human-readable data serialization standard that can be used in conjunction with all programming languages and is often used to write configuration files**

> **YAML stands for `YAML Ain't Markup Language` (YAML) is a data serialization language that has steadily increased in popularity over the last few years.**

> **It is less complex and ungainly than XML or JSON, but provides similar capabilities. It essentially allows you to provide powerful configuration settings, without having to learn a more complex code type like CSS, JavaScript, and PHP.**

> **YAML is built from the ground up to be simple to use. At its core, a YAML file is used to describe data. One of the benefits of using YAML is that the information in a single YAML file can be easily translated to multiple language types.**

> **There’s another small quirk to YAML. All YAML files (regardless of their association with Ansible or not) can optionally begin with `---` and end with `...` This is part of the YAML format and indicates the start and end of a document.**


## YAML Basic Rules

> **There are some rules that YAML has in place to avoid issues related to ambiguity in relation to various languages and editing programs. These rules make it possible for a single YAML file to be interpreted consistently, regardless of which application and/or library is being used to interpret it.**


1. `Indentation:` YAML does not allow the use of tabs. Spaces are used instead as tabs are not universally supported.

2. YAML is case sensitive.

3. YAML files can end in .yaml / .yml 


## Basic Data Types used in YAML

> YAML excels at working with `mappings` (hashes / dictionaries), `sequences` (arrays / lists), and `scalars` (strings / numbers). 

> it can be used with most programming languages, it works best with languages that are built around these data structure types. This includes: PHP, Python, Perl, JavaScript, and Ruby.

### `Scalars`

##### Scalars are a pretty basic concept. They are the strings and numbers that make up the data on the page. A scalar could be a boolean property, like `Yes`, integer (number) such as 5, or a string of text, like a sentence or the title of your website.

##### Scalars are often called variables in programming. If you were making a list of types of animals, they would be the names given to those animals.

##### Most scalars are unquoted, but if you are typing a string that uses punctuation and other elements that can be confused with YAML syntax (dashes, colons, etc.) you may want to quote this data using single ' or double " quotation marks. Double quotation marks allow you to use escapings to represent ASCII and Unicode characters.

```
integer: 25
string: "25"
float: 25.0
boolean: Yes
```

### `Sequences`

##### Here is a simple sequence. It is a basic list with each item in the list placed in its own line with an opening dash.

```
- Cat
- Dog
- Goldfish
```

##### This sequence places each item in the list at the same level. If you want to create a nested sequence with items and sub-items, you can do so by placing a single space before each dash in the sub-items. YAML uses spaces, NOT tabs, for indentation. You can see an example of this below.

```
-
 - Cat
 - Dog
 - Goldfish
-
 - Python
 - Lion
 - Tiger
```

##### If you wish to nest your sequences even deeper, you just need to add more levels.

```
-
 -
  - Cat
  - Dog
  - Goldfish
```

##### Sequences can be added to other data structure types, such as mappings or scalars.

### `Mappings`

##### Mapping gives you the ability to list keys with values. This is useful in cases where you are assigning a name or a property to a specific element.

```
animal: pets
```

##### This example maps the value of pets to the animal key. When used in conjunction with a sequence, you can see that you are starting to build a list of pets. In the following example, the dash used to label each item counts as indentation, making the line items the child and the mapping line pets the parent.

```
pets:
 - Cat
 - Dog
 - Goldfish
```

```
# An employee record
martin:
    name: Martin D'vloper
    job: Developer
    skill: Elite
```

##### More complicated data structures are possible, such as lists of dictionaries, dictionaries whose values are lists or a mix of both:

```
# Employee records
-  martin:
    name: Martin D'vloper
    job: Developer
    skills:
      - python
      - perl
      - pascal
-  tabitha:
    name: Tabitha Bitumen
    job: Developer
    skills:
      - lisp
      - fortran
      - erlang
```

##### Dictionaries and lists can also be represented in an abbreviated form if you really want to: `These are called “Flow collections”.`

```
martin: {name: Martin D'vloper, job: Developer, skill: Elite}
fruits: ['Apple', 'Orange', 'Strawberry', 'Mango']
```


