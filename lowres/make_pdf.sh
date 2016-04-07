echo "Generating lowres pages:"
for f in ../processadas/*.png
do
    echo "Converting $f ..."
    convert $f -resize 600x $f.lowres.jpg
done

echo "And now generating the PDF..."
convert ../processadas/intro-*.lowres.jpg ../processadas/pagina-*.lowres.jpg Aspectos_do_Projeto_de_Software_de_um_Minicomputador__JJNeto_1975_lowres.pdf
echo "done."

rm ../*.lowres.jpg -f
