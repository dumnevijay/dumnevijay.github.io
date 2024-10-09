#!/bin/bash

# Create portfolio folder structure
mkdir -p assets/images
mkdir -p fonts
mkdir -p stylesheets

# Create index.html with basic content
cat <<EOL > portfolio/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Vijay's DevOps Portfolio</title>
    <link rel="stylesheet" href="stylesheets/style.css">
    <link rel="icon" type="image/png" href="assets/images/favicon.png">
</head>
<body>
    <header>
        <div class="container">
            <h1>Vijay's DevOps Portfolio</h1>
            <nav>
                <ul>
                    <li><a href="#about">About Me</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#skills">Skills</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="about" class="section">
        <div class="container">
            <h2>About Me</h2>
            <p>I am a DevOps engineer skilled in cloud infrastructure, CI/CD, and automation, dedicated to improving software development processes.</p>
        </div>
    </section>

    <section id="projects" class="section">
        <div class="container">
            <h2>Projects</h2>
            <div class="project-grid">
                <div class="project">
                    <h3>CI/CD Pipeline</h3>
                    <p>Designed and implemented automated CI/CD pipelines using Jenkins, Docker, and Kubernetes.</p>
                </div>
                <div class="project">
                    <h3>AWS Infrastructure Automation</h3>
                    <p>Automated AWS infrastructure using Terraform and Ansible for a scalable, resilient application.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="skills" class="section">
        <div class="container">
            <h2>Skills</h2>
            <ul>
                <li>Cloud Platforms: AWS, Azure, GCP</li>
                <li>CI/CD: Jenkins, GitLab CI, GitHub Actions</li>
                <li>Infrastructure as Code: Terraform, Ansible</li>
                <li>Containers: Docker, Kubernetes</li>
                <li>Monitoring: Prometheus, Grafana</li>
            </ul>
        </div>
    </section>

    <section id="contact" class="section">
        <div class="container">
            <h2>Contact</h2>
            <p>Email: vijay.devops@example.com</p>
            <p>LinkedIn: <a href="https://www.linkedin.com/in/vijay" target="_blank">linkedin.com/in/vijay</a></p>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Vijay. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>
EOL

# Create stylesheets/style.css with basic styling
cat <<EOL > portfolio/stylesheets/style.css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background-color: #f4f4f4;
    color: #333;
}

header {
    background-color: #333;
    color: #fff;
    padding: 1rem 0;
    text-align: center;
}

header h1 {
    font-size: 2rem;
    margin-bottom: 0.5rem;
}

nav ul {
    list-style: none;
    display: flex;
    justify-content: center;
}

nav ul li {
    margin: 0 1rem;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 1.2rem;
}

.section {
    padding: 2rem 0;
}

.container {
    width: 80%;
    margin: 0 auto;
}

h2 {
    text-align: center;
    margin-bottom: 1.5rem;
}

.project-grid {
    display: flex;
    justify-content: space-between;
}

.project {
    background-color: #fff;
    padding: 1.5rem;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 45%;
}

ul {
    list-style: none;
    text-align: center;
}

ul li {
    margin-bottom: 0.5rem;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
    margin-top: 2rem;
}
EOL

# Print success message
echo "Portfolio folder structure created successfully!"
