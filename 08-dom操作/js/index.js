/**
 * Created by MG on 16/8/6.
 */

// 增
var div = document.createElement('div');
div.style.backgroundColor = 'red';
div.style.width = '400px';
div.style.height = '250px';
// 添加到父标签
document.body.appendChild(div);

// 创建一张图片
var img = document.createElement('img');
img.src='images/img_01.jpg';
// 往div中插入一张图片
div.appendChild(img);

// 删
// 拿到标签
var p = document.getElementById('word');
// 从父标签中删除
//document.body.removeChild(p);
//p.parentNode.removeChild(p);
p.remove();
div.remove();

// 遍历所有子节点
console.log(document.body.childNodes);