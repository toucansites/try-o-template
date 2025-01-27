---
type: post
title: Add New Post
description: This guide will walk you through how to add new post
publication: 2025-01-16 00:00:00
tags:
  - content
authors:
  - toucansites
featured: false
---

# Add a New Post

Adding new posts is essential for keeping your site updated with fresh content. Follow these steps to create and publish a new post in **Try-O-Theme**.

---

### Step 1: Navigate to the Posts Directory

1. Open your project directory.
2. Go to the **src/contents/posts/** folder. This is where all post-related content is stored.

---

### Step 2: Create a New Post Directory

1. Create a new directory for your post:
   - Name the folder based on the post title or a short identifier. For example:
     ```
     mkdir src/contents/posts/my-first-post
     ```
   - Use lowercase and hyphens to keep the folder name consistent.

---

### Step 3: Add an `index.md` File

1. Inside the new directory (e.g., `src/contents/posts/my-first-post`), create a file named `index.md`.
   - This file contains metadata and content for the post.

2. Add the following content to the `index.md` file:
   ```
   ---
   type: post
   title: "My First Blog Post"
   description: "This is an introduction to my first post."
   publication: 2023-01-26 10:00:00
   tags:
     - tech
     - tutorials
   authors:
     - john-doe
   featured: true
   ---
   ```

   **Fields Explanation**:
   - **type**: Always set to `post`.
   - **title**: The title of the post as it will appear on the site.
   - **description**: A brief description or summary of the post.
   - **publication**: The publication date in `YYYY-MM-DD HH:MM:SS` format.
   - **tags**: A list of tags associated with the post.
   - **authors**: A list of authors who contributed to the post.
   - **featured**: Set to `true` if the post should appear in the featured section of the homepage.

---

### Step 4: Write the Post Content

1. Below the metadata in `index.md`, add the full content of your post in Markdown format. Example:
   ```
   ---
   type: post
   title: "My First Blog Post"
   description: "This is an introduction to my first post."
   publication: 2023-01-26 10:00:00
   tags:
     - tech
     - tutorials
   authors:
     - john-doe
   featured: true
   ---

   ## Welcome to My First Post

   This is the content of my first blog post. It’s written in Markdown, so you can easily format headings, lists, images, and more.

   ### Here’s a List
   - Item 1
   - Item 2
   - Item 3
   ```

---

### Step 5: Add Images (Optional)

1. If your post includes images, create an **assets** folder inside the post directory:
   ```
   mkdir src/contents/posts/my-first-post/assets
   ```
2. Add your images to the **assets** folder and reference them in your Markdown content. Example:
   ```markdown
   ![My Image](./assets/my-image.jpg)
   ```

---

### Step 6: Regenerate the Site

After creating the post, you need to regenerate your site to apply the changes:

1. Open your terminal and navigate to your project directory.
2. Run the following command:
   ```
   toucan generate
   ```
3. This will update the site's content and templates to include the new post.

---

### Step 7: Verify the Post

1. Start the local development server:
   ```
   toucan serve
   ```
2. Open your browser and go to [http://localhost:3000](http://localhost:3000).
3. Navigate to the **Posts** page or homepage to confirm that the new post appears.

---

### Additional Notes

- **Editing Metadata**:
  - You can edit the `index.md` file at any time to update the post's metadata or content.
- **Featured Posts**:
  - To feature a post, ensure the `featured` field in the metadata is set to `true`.

---

This guide ensures you can easily create and manage posts in **Try-O-Theme**.
