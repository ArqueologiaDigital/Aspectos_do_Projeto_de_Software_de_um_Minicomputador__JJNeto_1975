echo "Generating lowres pages:"
for f in ../cropped_pages/*.png
do
    echo "Converting $f ..."
    convert $f -resize 600x $f.lowres.jpg
done

echo "And now generating the PDF..."
convert ../cropped_pages/intro-*.lowres.jpg ../cropped_pages/errata-*.lowres.jpg ../cropped_pages/pagina-*.lowres.jpg Aspectos_do_Projeto_de_Software_de_um_Minicomputador__JJNeto_1975_lowres.pdf
echo "done."

rm ../cropped_pages/*.lowres.jpg -f
