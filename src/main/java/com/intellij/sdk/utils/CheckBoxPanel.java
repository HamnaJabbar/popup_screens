package com.intellij.sdk.utils;

import javax.swing.*;
import java.awt.*;

public class CheckBoxPanel {

    private final Runnable onNextCallback;
    private final Runnable onPreviousCallback;

    // Constructor for popups
    public CheckBoxPanel(Runnable onNextCallback, Runnable onPreviousCallback) {
        this.onNextCallback = onNextCallback;
        this.onPreviousCallback = onPreviousCallback;
    }

    protected JComponent createSouthPanel(JDialog dialog) {
        JPanel footerPanel = new JPanel(new BorderLayout());

        JCheckBox dontShowAgainCheckbox = new JCheckBox("Don't show again");
        dontShowAgainCheckbox.setForeground(Color.WHITE);
        dontShowAgainCheckbox.setBorder(BorderFactory.createEmptyBorder(0, 10, 0, 0));
        footerPanel.add(dontShowAgainCheckbox, BorderLayout.WEST);

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));


        JButton skipButton = new JButton("Skip");
        skipButton.addActionListener(e -> {
            if (dialog != null) {
                dialog.dispose();
            }
        });
        buttonPanel.add(skipButton);

        // Add "Previous" button if callback is provided
        if (onPreviousCallback != null) {
            JButton previousButton = new JButton("Previous");
            previousButton.addActionListener(e -> {
                onPreviousCallback.run();
                if (dialog != null) {
                    dialog.dispose();
                }
            });
            buttonPanel.add(previousButton);
        }


        JButton nextButton = new JButton("Next");
        nextButton.addActionListener(e -> {
            if (onNextCallback != null) {
                onNextCallback.run();
            }
            if (dialog != null) {
                dialog.dispose();
            }
        });
        buttonPanel.add(nextButton);

        footerPanel.add(buttonPanel, BorderLayout.EAST);

        if (dialog != null) {
            dialog.getRootPane().setDefaultButton(nextButton);
        }

        return footerPanel;
    }
}
