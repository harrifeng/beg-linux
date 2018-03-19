cond=true
until $cond
do
    echo "hello"
done

cond=false
until $cond
do
    echo "world"
    cond=true
done

# <===================OUTPUT===================>
# world
