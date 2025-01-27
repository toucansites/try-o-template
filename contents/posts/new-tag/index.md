---
type: post
title: Add New Tag
description: This guide will walk you through how to add new tag
publication: 2025-01-18 00:00:00
tags:
  - content
authors:
  - toucansites
featured: false
---

# Add a New Tag

Tags are essential for organizing content on your website. They help visitors find posts based on topics and improve navigation. Follow the steps below to add a new tag in **Try-O-Theme**.

---

### Step 1: Navigate to the Tags Directory

1. Open your project directory.
2. Go to the **src/contents/tags/** folder. This is where all tag-related content is stored.

---

### Step 2: Create a New Tag Directory

1. Create a new directory for your tag:
   - Name the folder based on the tag name you want to add. For example:
     ```bash
     mkdir src/contents/tags/my-new-tag
     ```
   - Use lowercase and hyphens to keep the folder name consistent.

---

### Step 3: Add an `index.md` File

1. Inside the new directory (e.g., `src/contents/tags/my-new-tag`), create a file named `index.md`.
   - This file contains metadata for the tag.

2. Add the following content to the `index.md` file:
   ```markdown
   ---
   type: tag
   title: My New Tag
   description: "A description for this tag."
   order: 1
   ---
   ```
   **Fields Explanation**:
   - **type**: Always set to `tag`.
   - **title**: The display name of the tag.
   - **description**: A short description of the tag's purpose.
   - **order**: Determines the order of tags when displayed. Lower numbers appear first.

---

### Step 4: Regenerate the Site

After creating the tag, you need to regenerate your site to apply the changes:

1. Open your terminal and navigate to your project directory.
2. Run the following command:
   ```
   toucan generate
   ```
3. This will update the site's content and templates to include the new tag.

---

### Step 5: Verify the Tag

1. Start the local development server:
   ```
   toucan serve
   ```
2. Open your browser and go to [http://localhost:3000](http://localhost:3000).
3. Navigate to the **Tags** page to confirm that the new tag appears.

---

### Additional Notes

- **Using Tags in Posts**:
  - Add the tag to a post by including it in the `tags` field of the post's `index.md` file. Example:
    ```markdown
    tags:
      - my-new-tag
    ```
- **Styling Tags**:
  - Customize the tag display in the **src/themes/default/templates/** directory. Update the relevant Mustache template to modify the appearance of tags.

---

This guide ensures you can easily add and manage tags in **Try-O-Theme**.
