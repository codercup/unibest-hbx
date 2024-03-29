# 本文件会在依赖包安装时执行，用以生成 `src/manifest.json`
# 如果不存在 `src/manifest.json` 会运行报错，提示找不到 `src/manifest.json`
# 如果中途自己删除了 'src/manifest.json' 文件，记得手动执行本文件，可以右键 `Run Code` 快速执行

if test -f ./manifest.json; then
  echo ./manifest.json 存在
else
  touch ./manifest.json
  echo '{ "vueVersion": "3" }' >./manifest.json
fi

if test -f ./pages.json; then
  echo ./pages.json 存在
else
  touch ./pages.json
  echo '{
  "pages": [
    {
      "path": "pages/index/index",
      "type": "home",
      "style": {
        "navigationStyle": "custom",
        "navigationBarTitleText": "首页"
      }
    }
  ]
}' >./pages.json
fi
