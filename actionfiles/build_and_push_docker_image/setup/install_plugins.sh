#versions
pdfEmbed_version=PDFEmbed-REL1_42-aebb5bd.tar.gz
openIdConnect_version=OpenIDConnect-REL1_41-dc7b06b.tar.gz
pageForms_version=PageForms-REL1_41-6415072.tar.gz

# https://www.mediawiki.org/wiki/Extension:PDFEmbed
if [ ! -d extensions/PDFEmbed ]; then
    echo "Downloading PDFEmbed"
    wget https://extdist.wmflabs.org/dist/extensions/${pdfEmbed_version}
        tar -xf ${pdfEmbed_version} -C extensions/
fi

if [ ! -d extensions/OpenIDConnect ]; then
    echo "Downloading OpenIDConnect"
    wget https://extdist.wmflabs.org/dist/extensions/${openIdConnect_version}
    tar -xf ${openIdConnect_version} -C extensions/
fi

if [ ! -d extensions/PageForms ]; then
    echo "Downloading PageForms"
    wget https://extdist.wmflabs.org/dist/extensions/${pageForms_version}
    tar -xf ${pageForms_version} -C extensions/
fi