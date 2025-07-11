// Wait for the DOM to be fully loaded
document.addEventListener('DOMContentLoaded', function() {
    // Populate name and title
    document.getElementById('name-placeholder').textContent = config.name;
    document.getElementById('title-placeholder').textContent = config.title;
    
    // Populate email
    document.getElementById('email-placeholder').textContent = config.email;
    
    // Handle phone number - hide if not provided
    const phoneContainer = document.getElementById('phone-container');
    if (config.phone && config.phone.trim() !== '') {
        document.getElementById('phone-placeholder').textContent = config.phone;
    } else {
        phoneContainer.style.display = 'none';
    }
    
    // Configure the GitHub follow button
    const followButton = document.getElementById('follow-button');
    followButton.href = `https://github.com/${config.githubUsername}`;
    
    // Add click tracking (optional)
    followButton.addEventListener('click', function() {
        // You can add analytics tracking here if desired
        console.log('GitHub follow button clicked');
    });
});