# GitHub Business Card Landing Page

A clean, GitHub-styled business card landing page that you can customize and host on GitHub Pages. Perfect for QR codes on physical business cards!

![Preview](preview.png)

## 🚀 Quick Start

### 1. Fork this repository
Click the "Fork" button at the top right of this page to create your own copy.

### 2. Edit `config.js`
This is the **ONLY** file you need to edit! Update these values:

```javascript
const config = {
  name: "Your Name",
  title: "Your Title",
  email: "your.email@example.com",
  phone: "+1 (555) 123-4567",  // Optional - leave empty to hide
  githubUsername: "yourusername"
};
```

### 3. Enable GitHub Pages
1. Go to your forked repository's Settings
2. Scroll down to "Pages" in the left sidebar
3. Under "Source", select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Click "Save"

### 4. Access your page
Your business card will be available at:
```
https://[your-github-username].github.io/[repository-name]/
```

## 📱 Creating a QR Code

1. Go to a QR code generator (e.g., [qr-code-generator.com](https://www.qr-code-generator.com/))
2. Enter your GitHub Pages URL
3. Download the QR code
4. Add it to your physical business card

## 🎨 Features

- **GitHub-authentic styling** using official Primer CSS
- **Mobile responsive** design
- **Fast loading** - no frameworks, just vanilla HTML/CSS/JS
- **Secure** - prevents XSS attacks
- **Easy customization** - edit only one file
- **Professional appearance** that builds trust

## 🛠️ Customization

### Basic Customization
Just edit the values in `config.js` - that's it!

### Advanced Customization
If you want to modify the design:
- `index.html` - Page structure and styling
- `script.js` - JavaScript functionality
- The page uses GitHub's Primer CSS framework for authentic styling

### Hiding the Phone Number
Simply leave the phone field empty in `config.js`:
```javascript
phone: "",  // This will hide the phone number
```

## 📊 Tracking Visits (Optional)

You can add analytics to track QR code scans:

1. **Using Bitly**: Create a shortened link with built-in analytics
2. **Using UTM Parameters**: Add `?utm_source=business_card` to your URL
3. **Using Google Analytics**: Add GA tracking code to `index.html`

## 🔒 Security

This template is secure by design:
- Uses `textContent` instead of `innerHTML` to prevent XSS
- All external resources loaded from trusted CDNs
- No user input is executed as code

## 📝 License

MIT License - feel free to use this for any purpose!

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## ⭐ Support

If you find this useful, please give it a star! It helps others discover the project.