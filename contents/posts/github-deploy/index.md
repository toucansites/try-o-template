---
type: post
title: Deploy to a GitHub Page
description: This guide will walk you through how to deploy to a GitHub Page
publication: 2025-01-11 00:00:00
tags:
  - deployment
authors:
  - toucansites
featured: false
---

# Deploy to a GitHub Page

This guide explains how to deploy your site’s generated content from the `docs` folder to a GitHub Page

---

## Step 1: Create a GitHub Repository

1. **Create a Repository**:
   - Go to [GitHub](https://github.com/) and log in.
   - Click the `+` button at the top right and select **New Repository**.
   - Fill in the repository name (e.g., `try-o-theme-docs`) and set it to **Public**.
   - You can initialize the repository with files like a README, if needed.

2. **Clone the Repository Locally**:
   - Clone the repository to your computer:
   
     ```
     git clone https://github.com/your-username/try-o-theme-docs.git
     ```

---

## Step 2: Generate the `docs` Folder

1. **Ensure Your Site Content is Ready**:
   - Ensure that the content, images, and pages are correctly generated in the **docs** folder by Toucan.

2. **Preview Locally** (Optional):
   - Use the generator’s serve command to preview your site:
   
     ```
     toucan serve
     ```
   - Verify that the generated content looks correct.

---

## Step 3: Add the `docs` Folder Content

1. **Navigate to Your Local Repository Folder**:

  ```
  cd my-github-page
  ```

2.	Copy the Content of the docs Folder:
	- Copy the contents of your generated **docs** folder into your repository directory:
	
  ```
  cp -r /path/to/your/docs/* .
  ```

3.	Verify Files:
	- Ensure the root of your repository contains files like index.html, about.html, and other assets like CSS, JS, and images.

##  Step 4: Push the docs Folder to GitHub

1.	Add and Commit Files:

	```
	git add .
	git commit -m "Add generated site content"
	```

2.	Push the Changes to GitHub:

	```
	git push origin main
	```

##  Step 5: Enable GitHub Pages

1.	Go to the Settings tab in your GitHub repository.

2.	Enable GitHub Pages:
	- Scroll down to the Pages section.
	- Under Source, select the branch where you committed your files (e.g., main).
	- Choose the **/docs** folder as the source.
	- Click Save.

3.	Check Your Published Site:
	- GitHub will provide a public URL for your site, such as:
  
	```
	https://your-username.github.io/my-github-page/
	```

##  Step 6: Verify Your Site

1.	Visit the URL provided by GitHub Pages.

2.  Ensure that the site displays correctly and all links function as expected.

3.	If something is missing:
	- Check your docs folder structure for completeness (ensure all assets like CSS and images are included).
	- If needed, update your content links to be relative.


##  Step 7: Maintain and Update the Site

1.	Regenerate the **docs** Folder Content:
	- Whenever you update your content, regenerate the docs folder using your site generator:
	
	```
	toucan generate
	```

2.	Push the Updated Files to GitHub:
	- Add and commit the updated files:
	
	```
	git add .
	git commit -m "Update site content"
	git push origin main
	```

3.	Verify the Updates:
	- Visit your site URL to verify that the new content appears correctly.

## Additional Notes
- To use a custom domain, create a CNAME file in the root of your repository and add your domain name.

This guide ensures you can deploy and maintain your generated content easily using GitHub Pages. 