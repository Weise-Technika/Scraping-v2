# ใช้ Node.js base image
FROM node:20

# ติดตั้งไลบรารีที่จำเป็นสำหรับ Puppeteer
RUN apt-get update && apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libxcomposite1 \
    libxrandr2 \
    libgbm1 \
    libpango-1.0-0 \
    libasound2 \
    libpangocairo-1.0-0 \
    libxdamage1 \
    libxkbcommon0 \
    libgtk-3-0 \
    libxshmfence1 \
    libdbus-1-3 \
    libx11-xcb1 \
    libx11-6 \
    libxext6 \
    libxfixes3 \
    libxrender1 \
    libxi6 \
    libxtst6 \
    libxrandr2 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxkbcommon0 \
    libxss1 \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# ตั้งค่า working directory
WORKDIR /app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดไปยัง working directory
COPY . .

# เปิดพอร์ตที่แอปพลิเคชันจะรัน
EXPOSE 3001

# รันแอปพลิเคชัน
CMD ["node", "index.js"]