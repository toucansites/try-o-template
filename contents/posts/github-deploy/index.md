---
type: post
title: Deploy to a GitHub Page
description: This guide will walk you through how to deploy to a github page
publication: 2025-01-11 00:00:00
tags:
  - deployment
authors:
  - toucansites
featured: false
---

# Deploy to a GitHub Page

This guide explains how to deploy your generated content from the `docs` folder to a GitHub Page.

---

## Step 1: Create a GitHub Repository

1. **Create a Repository**:
   - Go to [GitHub](https://github.com/) and log in.
   - Click the `+` button at the top right and select **New Repository**.
   - Fill in the repository name (e.g., `try-o-theme-docs`) and set it to **Public**.
   - Initialize the repository with any files (e.g., README).

2. **Clone the Repository Locally**:
   - Clone the repository to your computer:
   
     ```
     git clone https://github.com/your-username/try-o-theme-docs.git
     ```

---

## Step 2: Generate the `docs` Folder

1. **Ensure Your Site Content is Ready**:
   - The content, images, and pages should be in the **`docs` folder** created by Toucan.

2. **Preview Locally** (Optional):
   - Use the generator’s serve command to preview your site:
   
     ```
     toucan serve
     ```
   - Verify that the generated content looks correct.

---

## Step 3: Add the `docs` Folder Content

1. **Navigate to Your Repository Folder**:

  ```
  cd my-github-page
  ```

2.	Copy the Content of the docs Folder:
	•	Replace the contents of the repository with the content of your generated docs folder:
	
  ```
  cp -r /path/to/your/docs/* .
  ```

3.	Verify Files:
	•	Ensure the root of your repository contains files like index.html, about.html, and other assets like CSS, JS, and images.

##  Step 4: Push the docs Folder to GitHub

1.	Add and Commit Files:

	```
	git add .
	git commit -m "Add generated site content"
	```

2.	Push to GitHub:

	```
	git push origin main
	```

##  Step 5: Enable GitHub Pages

1.	Go to Repository Settings in your GitHub repository, click on Settings.

2.	Enable GitHub Pages:
	- Scroll down to the Pages section.
	- Under Source, select the branch to main (or another branch where you committed your files).
	- Choose the / (docs) folder as the source.
	- Click Save.

3.	Check Your Published Site:
	- GitHub will provide a public URL for your site, such as:
  
	```
	https://your-username.github.io/my-github-page/
	```

##  Step 6: Verify Your Site

1.	Visit the URL provided by GitHub Pages.

2.	Ensure the site is displayed correctly and all links work.

3.	If something is missing:
	- Check your docs folder structure for completeness (ensure all assets like CSS and images are included).
	- Update your links in the content if needed to be relative.


##  Step 7: Maintain and Update the Site

1.	Generate Updated docs Content:
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
	- Check your site URL to ensure the new content appears correctly.

## Additional Notes
- Custom Domain: add a custom domain by creating a CNAME file in the root of your repository with your domain name.

This guide ensures you can deploy and maintain your generated content easily using GitHub Pages. 