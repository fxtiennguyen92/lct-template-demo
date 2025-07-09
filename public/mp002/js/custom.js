document.addEventListener("DOMContentLoaded", function() {
    // Lặp qua tất cả các thẻ <a> trong tài liệu
    var anchorLinks = document.querySelectorAll('a[href^="#"]');
    
    // Duyệt qua từng phần tử <a> và thêm sự kiện click
    anchorLinks.forEach(function(anchorLink) {
        anchorLink.addEventListener('click', function(e) {
            // Ngăn chặn hành vi mặc định của thẻ <a> (chuyển hướng)
            e.preventDefault();
            
            // Lấy giá trị của href và bỏ đi dấu '#'
            var targetId = this.getAttribute('href').substring(1);
            
            // Tìm phần tử có id tương ứng và cuộn đến
            var targetElement = document.getElementById(targetId);
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth'  // Cuộn mượt
                });
            }
        });
    });
});