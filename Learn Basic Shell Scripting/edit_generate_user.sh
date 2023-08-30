target="user_data.csv"
output="update_tabel.csv"
        
range_code=({100..900})
        
update_data() {
    echo "ID|Nama|Username|Password|Code" > "$output"
    i=1
    while IFS='|' read -r Nama Username Password;
    do
        if [ $i -gt 1 ]; then
        id=$(printf "%03d" $((i - 1)))
        code=${range_code[$((RANDOM % ${#range_code[@]}))]}
        echo "$id|$Nama|$Username|$Password|$code" >> "$output"
        fi
        ((i++))
    done < "$target"

    echo "Update Selesai"
    sed -i 's/| /|/g' "$output"
}

update_data
        
        