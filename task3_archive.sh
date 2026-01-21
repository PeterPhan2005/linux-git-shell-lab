#!/bin/bash

# 2. Tạo file a.txt và b.txt
echo "File A contents" > a.txt
echo "File B contents" > b.txt

# 3. Nén file1.zip
zip file1.zip a.txt b.txt

# 4. Tạo thư mục project và nén file2.zip
mkdir -p project/subdir
echo "root file" > project/root.txt
echo "sub file" > project/subdir/sub.txt
zip -r file2.zip project

# 5. Di chuyển vào thư mục archives
mkdir -p ~/archives
mv file1.zip file2.zip ~/archives/

# 6. Giải nén file1.zip vào thư mục ./data
mkdir -p ./data
unzip -o ~/archives/file1.zip -d ./data

# 7. Giải nén file2.zip vào thư mục hiện tại
unzip -o ~/archives/file2.zip -d .
