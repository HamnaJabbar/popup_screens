package com.intellij.sdk.utils;

import com.intellij.openapi.ui.DialogWrapper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.awt.*;

public class ScrollableImagePopup extends DialogWrapper {

    private HeaderPanel headerPanel;
    private ScrollablePanel scrollablePanel;
    private CheckBoxPanel checkBoxPanel;

    public ScrollableImagePopup(String title, HeaderPanel headerPanel, ScrollablePanel scrollablePanel, CheckBoxPanel checkBoxPanel) {
        super(true);
        this.headerPanel = headerPanel;
        this.scrollablePanel = scrollablePanel;
        this.checkBoxPanel = checkBoxPanel;
        init();
        setTitle(title);
    }

    @Override
    public @Nullable JComponent createCenterPanel() {
        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.setPreferredSize(new Dimension(600, 400));

        if (headerPanel != null) {
            mainPanel.add(headerPanel.createStaticHeaderPanel(), BorderLayout.NORTH);
        }

        if (scrollablePanel != null) {
            JScrollPane scrollPane = scrollablePanel.createScrollableContentPanel();
            mainPanel.add(scrollPane, BorderLayout.CENTER);
        }

        if (checkBoxPanel != null) {
            // Pass 'this.getWindow()' to createSouthPanel() for a Window type
            mainPanel.add(checkBoxPanel.createSouthPanel(this.getWindow()), BorderLayout.SOUTH);
        }

        return mainPanel;
    }

    @Override
    protected Action @NotNull [] createActions() {
        return new Action[0];
    }

    public void updateContent(HeaderPanel newHeaderPanel, ScrollablePanel newScrollablePanel, CheckBoxPanel newCheckBoxPanel) {
        this.headerPanel = newHeaderPanel;
        this.scrollablePanel = newScrollablePanel;
        this.checkBoxPanel = newCheckBoxPanel;

        // Recreate the popup content
        JComponent updatedContent = createCenterPanel();
        if (updatedContent != null) {
            getContentPane().removeAll();
            getContentPane().add(updatedContent, BorderLayout.CENTER);
        }

        // Refresh the popup
        pack();
        repaint();
    }
}
