# Clone Agavi
rm -rf /usr/local/bin/youds-framework/
rm -rf /usr/local/bin/agavi
cd /usr/local/bin/
git clone https://github.com/agavi/agavi.git

# Move Source Directory
mv /usr/local/bin/agavi/ /usr/local/bin/youds-framework/ 

# Find and Replace Files
find /usr/local/bin/youds-framework/ -name '*Agavi*' > /tmp/.tmpFile1
find /usr/local/bin/youds-framework/ -name '*Agavi*' | sed 's/Agavi/YoudsFramework/'g >/tmp/.tmpFile2
filecontent=( `cat "/tmp/.tmpFile1"` )
filecontent2=( `cat "/tmp/.tmpFile2"` )
i=0
for t in "${filecontent[@]}"; do
	mv $t ${filecontent2[$i]}
	echo $t ${filecontent2[$i]}
	i=$i+1
done
find /usr/local/bin/youds-framework/ -name '*agavi*' > /tmp/.tmpFile1
find /usr/local/bin/youds-framework/ -name '*agavi*' | sed 's/agavi/youds-framework/'g >/tmp/.tmpFile2
filecontent=( `cat "/tmp/.tmpFile1"` )
filecontent2=( `cat "/tmp/.tmpFile2"` )
i=0
for t in "${filecontent[@]}"; do
        mv $t ${filecontent2[$i]}
        echo $t ${filecontent2[$i]}
        i=$i+1
done

# Rename Directories
for file in `find /usr/local/bin/youds-framework -type f`
do
   awk '{gsub(/Agavi/,"YoudsFramework"); print $0;}' $file > ./tempFile && mv ./tempFile $file;
   awk '{gsub(/agavi.org/,"youds.com"); print $0;}' $file > ./tempFile && mv ./tempFile $file;
   awk '{gsub(/agavi/,"youds"); print $0;}' $file > ./tempFile && mv ./tempFile $file;
done
