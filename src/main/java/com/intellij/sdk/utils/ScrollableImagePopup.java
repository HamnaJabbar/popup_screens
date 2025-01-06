package com.intellij.sdk.utils;

import com.intellij.openapi.ui.DialogWrapper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;


import javax.swing.*;
import java.awt.*;

import static com.intellij.ide.TipsOfTheDayUsagesCollector.SkipReason.dialog;

public class ScrollableImagePopup extends DialogWrapper {

    private CheckBoxPanel checkBoxPanel;
    private HeaderPanel headerPanel;
    private ScrollablePanel scrollablePanel;

    public ScrollableImagePopup(String title,  HeaderPanel headerPanel, ScrollablePanel scrollablePanel,CheckBoxPanel checkBoxPanel) {
        super(true);
        this.checkBoxPanel = checkBoxPanel;
        this.headerPanel = headerPanel;
        this.scrollablePanel = scrollablePanel;
        init();
        setTitle(title);
    }


    @Override
    public @Nullable JComponent createCenterPanel() {
        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.setPreferredSize(new Dimension(600, 400));

        if (headerPanel != null) {
//            mainPanel.add(headerPanel.createStaticHeaderPanel(Color.GREEN), BorderLayout.NORTH);
             mainPanel.add(headerPanel.createStaticHeaderPanel(), BorderLayout.NORTH);
        } else {
            System.err.println("HeaderPanel is null");
        }
        if (scrollablePanel != null) {
            JScrollPane scrollPane = scrollablePanel.createScrollableContentPanel();
            mainPanel.add(scrollPane, BorderLayout.CENTER);
        } else {
            System.err.println("ScrollablePanel is null");
        }

        if (checkBoxPanel != null) {
            JDialog dialog = getPeer().getWindow() instanceof JDialog ? (JDialog) getPeer().getWindow() : null;
            mainPanel.add(checkBoxPanel.createSouthPanel(dialog), BorderLayout.SOUTH);
        } else {
            System.err.println("CheckBoxPanel is null");
        }


        return mainPanel;
    }


    @Override
    protected Action @NotNull [] createActions() {

        return new Action[]{};
    }

}
