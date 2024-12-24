document.addEventListener("DOMContentLoaded", () => {
    const selectAllCheckbox = document.getElementById("selectAll");
    const productCheckboxes = document.querySelectorAll(".product-checkbox");
    const totalAmountElement = document.getElementById("totalAmount");

    // Hàm tính tổng tiền
    function calculateTotal() {
        let total = 0;
        productCheckboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const price = parseFloat(checkbox.getAttribute("data-price"));
                const quantity = parseInt(checkbox.getAttribute("data-quantity"));
                total += price * quantity;
            }
        });
        totalAmountElement.textContent = `${total.toLocaleString()}.000 VND`;
    }

    // Xử lý "Chọn tất cả"
    selectAllCheckbox.addEventListener("change", () => {
        const isChecked = selectAllCheckbox.checked;
        productCheckboxes.forEach((checkbox) => {
            checkbox.checked = isChecked;
        });
        calculateTotal();
    });

    // Xử lý khi chọn từng sản phẩm
    productCheckboxes.forEach((checkbox) => {
        checkbox.addEventListener("change", () => {
            // Bỏ chọn "Chọn tất cả" nếu có sản phẩm không được chọn
            if (!checkbox.checked) {
                selectAllCheckbox.checked = false;
            }
            // Tự động chọn "Chọn tất cả" nếu tất cả sản phẩm đều được chọn
            const allChecked = Array.from(productCheckboxes).every((cb) => cb.checked);
            selectAllCheckbox.checked = allChecked;

            calculateTotal();
        });
    });
});



document.addEventListener("DOMContentLoaded", () => {
    const productCheckboxes = document.querySelectorAll(".product-checkbox");
    const quantityInputs = document.querySelectorAll(".quantity-input");
    const totalAmountElement = document.getElementById("totalAmount");

    // Hàm tính tổng tiền cho tất cả sản phẩm đã chọn
    function calculateTotal() {
        let total = 0;
        productCheckboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const row = checkbox.closest("tr");
                const itemTotal = parseFloat(row.querySelector(".item-total").textContent.replace(/[^\d]/g, ""));
                total += itemTotal;
            }
        });
        totalAmountElement.textContent = `${total.toLocaleString()} VND`;
    }

    // Hàm cập nhật giá trị "Thành tiền" khi thay đổi số lượng
    function updateItemTotal(input) {
        const row = input.closest("tr");
        const price = parseFloat(input.getAttribute("data-price"));
        const quantity = parseInt(input.value);
        const itemTotalElement = row.querySelector(".item-total");
        const newTotal = price * quantity;

        itemTotalElement.textContent = `${newTotal.toLocaleString()}.000 VND`;

        // Tính lại tổng tiền nếu checkbox được chọn
        if (row.querySelector(".product-checkbox").checked) {
            calculateTotal();
        }
    }

    // Lắng nghe sự kiện thay đổi số lượng
    quantityInputs.forEach((input) => {
        input.addEventListener("input", () => {
            if (parseInt(input.value) < 1) {
                input.value = 1; // Không cho phép giá trị nhỏ hơn 1
            }
            updateItemTotal(input);
        });
    });




    // Lắng nghe sự kiện thay đổi trạng thái checkbox
    productCheckboxes.forEach((checkbox) => {
        checkbox.addEventListener("change", calculateTotal);
    });
});





