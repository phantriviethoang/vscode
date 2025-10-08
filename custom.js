(function() {
    function updateVimMode() {
        const statusItems = document.querySelectorAll('.status-bar-item, .statusbar-item, [class*="status"]');

        let currentMode = '';

        statusItems.forEach(item => {
            const text = item.textContent.trim();
            if (text === '-- NORMAL --') {
                currentMode = 'normal';
            } else if (text === '-- INSERT --') {
                currentMode = 'insert';
            }
        });

        if (currentMode) {
            document.body.setAttribute('data-vim-mode', currentMode);
        }
    }

    // Chạy ngay khi load
    updateVimMode();

    // Observe thay đổi
    const observer = new MutationObserver(updateVimMode);
    observer.observe(document.body, {
        subtree: true,
        childList: true,
        characterData: true
    });
})();
