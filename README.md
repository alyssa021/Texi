# Texi

Installation Requirement
- rmagick

### **For Ubuntu Users**
```shell
$ apt-get install imagemagick libmagickwand-dev
$ gem install rmagick
```

### **Installation**
```shell
$ make
$ make install
```

### **How to Use**

Put whatever texts you want convert to images in `data.json` in following format

```json
[
  {
    "text": "text...",
    "category": "category..."
  },
  {
    "text": "text...",
    "category": "category..."
  },
  {
    "text": "text...",
    "category": "category..."
  }
  
  ...
]
```

You need `texi.config.json` only if you want to use custom fonts.

```json
{
  "font": "./fonts/BalooPaaji2-Bold.ttf"
}
```

### **Run Texi**
```shell
$ texi
```

Will generate images and store them in `images/<category>/<image-no>.jpg`.