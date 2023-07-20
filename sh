TARGET_FOLDER="~/Llama 2"             # where all files should end up
mkdir -p ${TARGET_FOLDER}

if [[ $MODEL_SIZE == "" ]]; then
    MODEL_SIZE="7B,13B,70B,7B-chat,13B-chat,70B-chat"
fi

echo "Downloading LICENSE and Acceptable Usage Policy"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"LICENSE"} -O ${TARGET_FOLDER}"/LICENSE"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"USE_POLICY.md"} -O ${TARGET_FOLDER}"/USE_POLICY.md"

echo "Downloading tokenizer"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"tokenizer.model"} -O ${TARGET_FOLDER}"/tokenizer.model"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"tokenizer_checklist.chk"} -O ${TARGET_FOLDER}"/tokenizer_checklist.chk"
(cd ${TARGET_FOLDER} && md5sum -c tokenizer_checklist.chk)

for m in ${MODEL_SIZE//,/ }
do
    if [[ $m == "7B" ]]; then
        SHARD=0
        MODEL_PATH="llama-2-7b"
    elif [[ $m == "7B-chat" ]]; then
        SHARD=0
        MODEL_PATH="llama-2-7b-chat"
    elif [[ $m == "13B" ]]; then
        SHARD=1
        MODEL_PATH="llama-2-13b"
    elif [[ $m == "13B-chat" ]]; then
        SHARD=1
        MODEL_PATH="llama-2-13b-chat"
    elif [[ $m == "70B" ]]; then
        SHARD=7
        MODEL_PATH="llama-2-70b"
    elif [[ $m == "70B-chat" ]]; then
        SHARD=7
        MODEL_PATH="llama-2-70b-chat"
    fi

    echo "Downloading ${MODEL_PATH}"
    mkdir -p ${TARGET_FOLDER}"/${MODEL_PATH}"

    for s in $(seq -f "0%g" 0 ${SHARD})
    do
        wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/consolidated.${s}.pth"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/consolidated.${s}.pth"
    done

    wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/params.json"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/params.json"
    wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiPz94P1x1MDAwMz8%7EXHUwMDAzIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQubGxhbWFtZXRhLm5ldFwvKiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTY4OTg0NTM2NX19fV19&Signature=kpWqPx8xHW-9zr-vQ93Q7rEM0UdOOKs3D-QOyd4%7Er1zmuMdnwrfGt7bOwK284pqARmxSXpGld4Qeee0FDJ18kfOE55lS-EGq58cXu4cmB6QyN8YpSqWMdB8E0kgTzMDMaY7XFPWWZKexc1yR2bX65D7ymBTorHwvG%7E8GZVVJjIRfA-2h3zeknHTUgYUFE5Sd6%7EDZ7YZh6CYFLtbZFfNi63j%7EkdquZsNrWtH9b4l8bN8sNnUidL2zk63iWhgBZhR%7EhXK6yTxyF9ZrJE3e9iA8nUQSg7vrRLE0k686CCkAKCb9w5kLh3VkhnvGukazWRLyNrr1p0djgSlJk%7EpQ-FGqzQ__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/checklist.chk"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/checklist.chk"
    echo "Checking checksums"
    (cd ${TARGET_FOLDER}"/${MODEL_PATH}" && md5sum -c checklist.chk)
done

