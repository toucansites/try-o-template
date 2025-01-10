## Start

This theme uses [Toucan](https://toucansites.com/) to generate a blog-type static website. Toucan is a Markdown-based static site generator written in [Swift](https://www.swift.org/). Toucan uses [Mustache](https://mustache.github.io/mustache.5.html) templates to render Markdown files and generate the final HTML content. [Markdown](https://www.markdownguide.org/getting-started/) is a lightweight markup language for creating formatted text using a plain-text editor.

Userful Links:

* [Frequently Asked Questions](https://toucansites.com/faq/)
* [Contact](https://toucansites.com/contact/)

## Theme installation

For detailed installation guide, check the official [documentation](https://toucansites.com/docs/).


## Copy theme and default contents

After unzipping the theme, first copy all contents from the **theme** folder into **src / themes / default** folder. Then, copy all content from the **contents** folder into the **src / contents** folder.

Once Toucan is started, your site will be ready.

A test **tag**, **author** and **post** are included in the theme to showcase how new data can be added.

## Directory structure overview

```
.
├── docs
└── src/
    ├── contents/
    │   ├── 404
    │   ├── about
    │   ├── assets
    │   ├── authors
    │   ├── home
    │   ├── lists
    │   ├── posts
    │   └── tags
    └── themes/
        └── default/
            ├── assets
            ├── templates
            └── types
```



* **docs**: contains all generated data. Modifying this data is not recommended, as every site generation will overwrite it.
* **contents**: stores all site content in .md files.
* **themes/default**: contains theme files, including CSS, Mustache and yml files.

## Modify or add new content

### Change site logo

Navigate to **src / contents / assets / images / logos** directory and replace the default **logo.png** and **logo~dark.png** files with your own logos.

### Add new tag

1.	Navigate to the **src/contents/tags** directory.
2.	Create a new directory named after the tag (lowercase recommended).
3.	Inside the new directory, create an **index.md** file with the following content:

```
---
type: tag
title: Test
description: ""
order: 1
---
```

* **type**: always set to **tag**, do not change it
* **title**: the tag title, this will be displayed in the site
* **description**: a brief description of the tag
* **order**: the tag’s display order.

After regenerating the site, the new tag will appear on the **tags** page.

### Add new author

1.	Navigate to the **src/contents/authors** directory.
2.	Create a new directory named after the author (lowercase recommended).
3.	Inside the new directory, create an index.md file and include the following content:

	```
	---
	type: author
	title: Test Author
	description: Author
	image: ./assets/test-author.jpg
	priority: 1
	linkedin: "https://www.linkedin.com/"
	---
	```
	* **type**: always set to **author**, do not change it
	* **title**: author's name, displayed on the site
	* **description**: a brief description of the author
	* **image**: image for the author, add relative path
	* **priority**: the author's display priority
	* **x**: twitter username
	* **linkedin**: linkedin url
	* **facebook**: facebook url
	* **instagram**: instagram url
	* **tiktok**: tiktok url
	
4. Create an **assets** folder within the author’s directory to store their profile image.

Regenerate the site to display the new author on the **authors** page.

### Add new post

1.	Navigate to the **src/contents/posts** directory.
2.	Create a new directory named after the post (lowercase recommended).
3.	Inside the new directory, create an **index.md** file with the following content header:

	```
	---
	type: post
	title: Everything About the Abyssinian
	description: Learn about the Abyssinian, its traits, history, and care tips.
	publication: 2023-09-26 01:36:39
	tags:
	  - test
	authors:
	  - test
	featured: true
	---
	```

	* **type**: always set ot **post**, do not change it
	* **title**: the post title, this will be shown in the site
	* **description**: a brief description for the post 
	* **publication**: publication date for the post
	* **tags**: tags list for the post, add all tags in separate lines
	* **authors**: authors list for the post, add all authors in separate lines
	* **featured**: featured value, if a post is featured, then it will be showed in the featured list at the home page

4.	Add the full post content in **Markdown** format below the header.
5.	Create an **assets** folder within the post directory for a cover image or other images.

Regenerate the site to display the new post.

### Add new custom page

To add a new custom page, which will access-able from the main menu, follow these steps: 

1. edit the file **src / contents / index.yaml**, which has this content:

	```
	baseUrl: "http://localhost:3000/"
	language: "en-US"
	title: "My site"
	description: "Description for my site"
	dateFormat: "yyyy.MM.dd."
	navigation:
   		- label: "About"
 			url: "/about/"
    	- label: "Authors"
      		url: "/authors/"
    	- label: "Tags"
      		url: "/tags/"
  	```
      
	Add a new **label** and **url** to the navigation data as showed in the example.

2. create a new folder into **src / contents**, 
3. copy the the **index.md** file from 	**src / contents / about**, the file has this content header, change it if needed:

	```
	---
	title: About
	description: "About page"
	image: /images/default.png
	template: pages.about
	---
	```
	* **title**: title for the new page
	* **description**: a brief description for the new page
	* **template**: template file for the page, which is located in **src / themes / default / templates / pages / default_page.mustache**

4. (optional) if the default page template file is not suitable for the new custom page, then a new mustache file is needs to be created and needs to be added inside **src / themes / default / templates / pages /**

### Change about data

Navigate to **src / contents / about** , edit the **index.md** file and change it contents. If the **template** value is changed in the header:

```
---
title: About
description: "About page"
image: /images/default.png
template: pages.default_page
--- 
```
Do not forget to add a new theme file into **src / themes / default / templates / pages /** .

### Change page 404 data

Navigate to **src / contents / 404** , edit the **index.md** file and change it contents. Do not change the content header, leave as it is:

```
---
title: Not found
description: Page not found
---
```

### Change footer links

Navigate to **src / contents** , edit the **index.yaml** file and change these data:

```
footer-socials:
  - title: "Instagram"
    url: "https://instagram.com/"
  - title: "Facebook"
    url: "https://facebook.com/"
  - title: "YouTube"
    url: "https://youtube.com/"
  - title: "TikTok"
    url: "https://tiktok.com/"
  - title: "LinkedIn"
    url: "https://linkedin.com/"
  - title: "X"
    url: "https://x.com/"
```
Keep the format the same.
