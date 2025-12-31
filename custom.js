// VSCode Custom Title - Replace window title with breadcrumbs
(function () {
    'use strict';

    // Function to update custom title
    function updateCustomTitle() {
        // Target breadcrumbs control directly (not inside .editor-container)
        const breadcrumbsControl = document.querySelector('.breadcrumbs-control');

        if (!breadcrumbsControl) {
            console.log('[Custom Title] Breadcrumbs control not found');
            return;
        }

        const breadcrumbs = breadcrumbsControl.querySelector('.monaco-breadcrumbs');

        if (!breadcrumbs) {
            console.log('[Custom Title] Monaco breadcrumbs not found');
            return;
        }

        // Find or create custom title container
        let customTitle = document.querySelector('.custom-window-title');
        if (!customTitle) {
            customTitle = document.createElement('div');
            customTitle.className = 'custom-window-title';

            // Insert into window title area
            const windowTitle = document.querySelector('.window-title');
            if (windowTitle) {
                windowTitle.style.display = 'none';
                windowTitle.parentElement.insertBefore(customTitle, windowTitle);
            } else {
                console.log('[Custom Title] Window title not found');
                return;
            }
        }

        // Get all breadcrumb items
        const allItems = breadcrumbs.querySelectorAll('.monaco-breadcrumb-item');

        if (allItems.length === 0) {
            console.log('[Custom Title] No breadcrumb items found');
            return;
        }

        // Get the last item (current file)
        const lastItem = allItems[allItems.length - 1];
        const iconLabel = lastItem.querySelector('.monaco-icon-label');

        if (!iconLabel) {
            console.log('[Custom Title] Icon label not found');
            return;
        }

        // Only process if it's a file or folder icon
        if (!iconLabel.classList.contains('file-icon') &&
            !iconLabel.classList.contains('folder-icon')) {
            console.log('[Custom Title] Not a file or folder icon');
            return;
        }

        // Create container for icon + text
        const container = document.createElement('div');
        container.className = 'custom-title-content';

        // Extract ::before icon styles
        const beforeStyles = window.getComputedStyle(iconLabel, '::before');

        // Create real icon element from ::before
        const iconElement = document.createElement('span');
        iconElement.className = 'custom-title-icon';

        // Copy critical styles from ::before
        iconElement.style.display = 'inline-block';
        iconElement.style.width = beforeStyles.width;
        iconElement.style.height = '16px'; // Force 16px height for consistency
        iconElement.style.backgroundImage = beforeStyles.backgroundImage;
        iconElement.style.backgroundSize = '16px 16px';
        iconElement.style.backgroundPosition = 'center';
        iconElement.style.backgroundRepeat = 'no-repeat';
        iconElement.style.marginRight = '6px';
        iconElement.style.flexShrink = '0';
        iconElement.style.verticalAlign = 'middle';

        // Handle icon font content (if any)
        const content = beforeStyles.content;
        if (content && content !== 'none' && content !== '""' && content !== '" "') {
            const cleanContent = content.replace(/^["']|["']$/g, '');
            if (cleanContent && cleanContent !== ' ') {
                iconElement.textContent = cleanContent;
                iconElement.style.fontFamily = beforeStyles.fontFamily;
                iconElement.style.fontSize = beforeStyles.fontSize;
                iconElement.style.color = beforeStyles.color;
                iconElement.style.lineHeight = '16px';
            }
        }

        // Get filename
        const labelName = iconLabel.querySelector('.label-name');
        const fileName = labelName ? labelName.textContent : iconLabel.textContent;

        // Create text element
        const textElement = document.createElement('span');
        textElement.className = 'custom-title-text';
        textElement.textContent = fileName;

        // Assemble
        container.appendChild(iconElement);
        container.appendChild(textElement);

        customTitle.innerHTML = '';
        customTitle.appendChild(container);

        console.log('[Custom Title] Updated:', fileName);
    }

    // Observer for DOM changes
    const observer = new MutationObserver(function (mutations) {
        updateCustomTitle();
    });

    // Start observing when breadcrumbs are available
    function startObserving() {
        const breadcrumbsControl = document.querySelector('.breadcrumbs-control');

        if (breadcrumbsControl) {
            observer.observe(breadcrumbsControl, {
                childList: true,
                subtree: true,
                characterData: true
            });
            updateCustomTitle();
            console.log('[Custom Title] Observer started');
        } else {
            setTimeout(startObserving, 500);
        }
    }

    // Initialize
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', startObserving);
    } else {
        startObserving();
    }

    // Also update on window focus and editor changes
    window.addEventListener('focus', updateCustomTitle);

})();
