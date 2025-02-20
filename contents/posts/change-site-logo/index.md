---
type: post
title: Change the Site Logo
description: This guide will walk you through how to change the site logo
publication: 2025-01-19 00:00:00
tags:
  - content
authors:
  - toucansites
featured: false
---

# Change the Site Logo

The **site logo** is one of the key elements of your site's branding. In **Try-O-Theme**, the logo is located in the **assets** folder and can be customized easily. Follow the steps below to update your site logo.

---

## Step 1: Locate the Logo Files

1. Navigate to the **src/contents/assets/images/logos/** directory in your project folder.
   - By default, this folder contains two logo files::
     - **logo.png**: The primary logo used across the site.
     - **logo~dark.png**: A variation of the logo used in dark mode (if your site supports it).

---

## Step 2: Prepare Your Custom Logos

1. **Create Your Custom Logos**:
   - Use design software like **Adobe Photoshop**, **Canva**, or **Figma** to create your custom logos.
   - Ensure the your logos align with your brand’s design.

2. **Recommended File Format**:
   - Use PNG format with a transparent background for best results.
   - If you prefer other formats (e.g., SVG or JPG), ensure that your site supports them.

---

## Step 3: Replace the Logo Files

1. Rename your custom logos to match the default logo file names:
   - **logo.png** (for the primary logo)
   - **logo~dark.png** (for the dark mode logo)

2. Copy your custom logo files into the **src/contents/assets/images/logos/** directory.
   - Overwrite the existing **logo.png** and **logo~dark.png** files.

---

## Step 4: Regenerate the Site

After replacing the logo files, you need to regenerate your site for the changes to take effect:

1. Open your terminal and navigate to your project directory.
2. Run the following command:

   ```bash
   toucan generate
   ```

3. This command will process the updated assets and regenerate the site.

---

## Step 5: Preview Your Changes

1. Start the local development server to preview the updated site:

   ```bash
   toucan serve
   ```

2. Open your browser and navigate to [http://localhost:3000](http://localhost:3000).
3. Verify that:
   - The new logo is displayed on the site.
   - The dark mode logo (if applicable) is displayed correctly.

---

## Step 6: Troubleshooting

If the updated logo does not appear, check the following:

1. **File Naming**: Ensure that your custom files are named exactly **logo.png** and **logo~dark.png**.
2. **File Path**: Confirm the files are located in **src/contents/assets/images/logos/**.
3. **Cache**: Clear your browser cache or use an incognito window to view the changes.

---

This guide ensures you have everything needed to update the logo in **Try-O-Theme**.
