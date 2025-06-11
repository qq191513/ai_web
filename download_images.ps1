# Create directories if they don't exist
New-Item -ItemType Directory -Force -Path "images/blog"
New-Item -ItemType Directory -Force -Path "images/projects"

# Function to download image
function Download-Image {
    param (
        [string]$Url,
        [string]$OutputPath
    )
    Write-Host "Downloading $OutputPath..."
    Invoke-WebRequest -Uri $Url -OutFile $OutputPath
}

# Blog images
$blogImages = @{
    "images/blog/ai-trends.jpg" = "https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&h=450&fit=crop&q=80"
    "images/blog/web-dev.jpg" = "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=800&h=450&fit=crop&q=80"
    "images/blog/ux-design.jpg" = "https://images.unsplash.com/photo-1561070791-2526d30994b5?w=800&h=450&fit=crop&q=80"
}

# Project images
$projectImages = @{
    "images/projects/ecommerce.jpg" = "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=800&h=450&fit=crop&q=80"
    "images/projects/ecommerce-detail.jpg" = "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=1200&h=675&fit=crop&q=80"
    "images/projects/ecommerce-mobile.jpg" = "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=800&h=450&fit=crop&q=80"
    "images/projects/ecommerce-admin.jpg" = "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=800&h=450&fit=crop&q=80"
    "images/projects/social-media.jpg" = "https://images.unsplash.com/photo-1540350394557-8d14678e7f91?w=800&h=450&fit=crop&q=80"
    "images/projects/portfolio.jpg" = "https://images.unsplash.com/photo-1592210454359-9043f067919b?w=800&h=450&fit=crop&q=80"
}

# Download blog images
foreach ($image in $blogImages.GetEnumerator()) {
    Download-Image -Url $image.Value -OutputPath $image.Key
}

# Download project images
foreach ($image in $projectImages.GetEnumerator()) {
    Download-Image -Url $image.Value -OutputPath $image.Key
}

Write-Host "All images have been downloaded successfully!" 