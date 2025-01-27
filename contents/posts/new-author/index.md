---
type: post
title: Add New Author
description: This guide will walk you through how to add new author
publication: 2025-01-17 00:00:00
tags:
  - content
authors:
  - toucansites
featured: false
---

# Add a New Author

Authors help attribute content to specific contributors, enhancing credibility and providing additional context for your website. Follow these steps to add a new author in **Try-O-Theme**.

---

### Step 1: Navigate to the Authors Directory

1. Open your project directory.
2. Go to the **src/contents/authors/** folder. This is where all author-related content is stored.

---

### Step 2: Create a New Author Directory

1. Create a new directory for your author:
   - Name the folder based on the author's name. For example:
     ```
     mkdir src/contents/authors/john-doe
     ```
   - Use lowercase and hyphens to keep the folder name consistent.

---

### Step 3: Add an `index.md` File

1. Inside the new directory (e.g., `src/contents/authors/john-doe`), create a file named `index.md`.
   - This file contains metadata for the author.

2. Add the following content to the `index.md` file:
   ```
   ---
   type: author
   title: John Doe
   description: "Tech Blogger and Writer"
   image: ./assets/john-doe.jpg
   priority: 1
   linkedin: "https://www.linkedin.com/in/johndoe/"
   twitter: "https://twitter.com/johndoe"
   ---
   ```
   **Fields Explanation**:
   - **type**: Always set to `author`.
   - **title**: The display name of the author.
   - **description**: A short bio of the author.
   - **image**: Path to the author's profile picture (relative to the author's directory).
   - **priority**: Determines the order of authors when displayed. Lower numbers appear first.
   - **linkedin**: Add the author's LinkedIn profile URL (optional).
   - **twitter**: Add the author's Twitter handle (optional).

---

### Step 4: Add a Profile Picture

1. Inside the author's directory, create an **assets** folder:
   ```
   mkdir src/contents/authors/john-doe/assets
   ```
2. Add a profile picture named `cover.jpg` (or matching your `image` field) into the **assets** folder.

---

### Step 5: Regenerate the Site

After creating the author, you need to regenerate your site to apply the changes:

1. Open your terminal and navigate to your project directory.
2. Run the following command:
   ```
   toucan generate
   ```
3. This will update the site's content and templates to include the new author.

---

### Step 6: Verify the Author

1. Start the local development server:
   ```
   toucan serve
   ```
2. Open your browser and go to [http://localhost:3000](http://localhost:3000).
3. Navigate to the **Authors** page to confirm that the new author appears.

---

### Additional Notes

- **Using Authors in Posts**:
  - Add the author to a post by including their folder name in the `authors` field of the post's `index.md` file. Example:
    ```markdown
    authors:
      - john-doe
    ```
- **Styling Author Profiles**:
  - Customize the author display in the **src/themes/default/templates/** directory. Update the relevant Mustache template to modify the appearance of authors.

---

This guide ensures you can easily add and manage authors in **Try-O-Theme**.