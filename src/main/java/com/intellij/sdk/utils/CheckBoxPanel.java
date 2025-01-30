package com.intellij.sdk.utils;

import javax.swing.*;
import java.awt.*;
public class CheckBoxPanel {

    private final Runnable onNextCallback;
    private final Runnable onPreviousCallback;
    private final boolean hideSkipAndCheckbox;
    private final boolean isFinishButton;

    public CheckBoxPanel(Runnable onNextCallback, Runnable onPreviousCallback) {
        this(onNextCallback, onPreviousCallback, false, false);
    }

    public CheckBoxPanel(Runnable onNextCallback, Runnable onPreviousCallback, boolean hideSkipAndCheckbox, boolean isFinishButton) {
        this.onNextCallback = onNextCallback;
        this.onPreviousCallback = onPreviousCallback;
        this.hideSkipAndCheckbox = hideSkipAndCheckbox;
        this.isFinishButton = isFinishButton;
    }

    protected JComponent createSouthPanel(Window window) {
        JPanel footerPanel = new JPanel(new BorderLayout());


        if (!hideSkipAndCheckbox) {
            JCheckBox dontShowAgainCheckbox = new JCheckBox("Don't show again");
            dontShowAgainCheckbox.setForeground(Color.WHITE);
            dontShowAgainCheckbox.setBorder(BorderFactory.createEmptyBorder(0, 10, 0, 0));
            footerPanel.add(dontShowAgainCheckbox, BorderLayout.WEST);
        }

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));

        // Only add the Skip button if it's not hidden
        if (!hideSkipAndCheckbox) {
            JButton skipButton = new JButton("Skip");
            skipButton.addActionListener(e -> {
                if (window != null) {
                    window.dispose();
                }
            });
            buttonPanel.add(skipButton);
        }

        // Add "Previous" button if callback is provided
        if (onPreviousCallback != null) {
            JButton previousButton = new JButton("Previous");
            previousButton.addActionListener(e -> {
                onPreviousCallback.run();

            });
            buttonPanel.add(previousButton);
        }

        // Add "Next" or "Finish" button
        JButton actionButton = new JButton(isFinishButton ? "Finish" : "Next");
        actionButton.addActionListener(e -> {
            if (onNextCallback != null) {
                onNextCallback.run();
            }

        });
        buttonPanel.add(actionButton);

        footerPanel.add(buttonPanel, BorderLayout.EAST);

        // Cast the window to JDialog to access getRootPane
        if (window instanceof JDialog) {
            JDialog dialog = (JDialog) window;
            dialog.getRootPane().setDefaultButton(actionButton);
        }

        return footerPanel;
    }
}
