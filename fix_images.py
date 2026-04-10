import re

with open('portfolio_WoodJerry_Final.html', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the about/summary photo
pattern = r'src="data:image/png;base64,[^"]*" alt="Wood Jerry bureau"'
content = re.sub(pattern, 'src="images/imagesummary.png" alt="Wood Jerry bureau"', content)

with open('portfolio_WoodJerry_Final.html', 'w', encoding='utf-8') as f:
    f.write(content)

print('Done')
