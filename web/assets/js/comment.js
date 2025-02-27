let loadMoreBtn = document.querySelector('#load-more');
let currentItem = 3;

loadMoreBtn.onclick = () => {
    let boxes = [...document.querySelectorAll('.comment-list .box')];
    for (var i = currentItem; i < currentItem + 3 && i < boxes.length; i++) {
        boxes[i].style.display = 'block';
    }
    currentItem += 3;

    if (currentItem >= boxes.length) {
        loadMoreBtn.style.display = 'none';
    }
}