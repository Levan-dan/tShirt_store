// Custom configuration for Bootstrap Carousel
document.addEventListener("DOMContentLoaded", function () {
    // Kích hoạt carousel
    $('#carouselExampleIndicators').carousel({
        interval: 2000, // Slide tự động sau 3 giây
        pause: 'hover', // Tạm dừng khi người dùng di chuột
        wrap: true      // Lặp lại carousel khi hết
    });

    // Lắng nghe sự kiện khi slide thay đổi
    $('#carouselExampleIndicators').on('slide.bs.carousel', function (event) {
        console.log(`Slide đang chuyển: ${event.to} từ vị trí ${event.from}`);
    });
});



document.addEventListener("click", function (event) {
    const menu = document.getElementById('menuList');
    const menuIcon = event.target.closest('.logoCart');
    const menuContainer = event.target.closest('.menu-container');

    if (menuIcon) {
        menu.classList.toggle('hidden');
    } else if (!menuContainer) {
        menu.classList.add('hidden');
    }
});

