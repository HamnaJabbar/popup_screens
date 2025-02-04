


package com.intellij.sdk.utils;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ItemEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class CheckBoxPanel {
    private final Runnable onNextCallback;
    private final Runnable onPreviousCallback;
    private final boolean hideSkipAndCheckbox;
    private final boolean isFinishButton;
    private boolean dontShowAgainChecked = false;

    public CheckBoxPanel(Runnable onNextCallback, Runnable onPreviousCallback) {
        this(onNextCallback, onPreviousCallback, false, false);
    }

    public CheckBoxPanel(Runnable onNextCallback, Runnable onPreviousCallback,
                         boolean hideSkipAndCheckbox, boolean isFinishButton) {
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

            dontShowAgainCheckbox.addItemListener(e ->
                    dontShowAgainChecked = (e.getStateChange() == ItemEvent.SELECTED));

            footerPanel.add(dontShowAgainCheckbox, BorderLayout.WEST);
        }

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));

        if (!hideSkipAndCheckbox) {
            JButton skipButton = new JButton("Skip");
            skipButton.addActionListener(e -> {
                saveDontShowPreference();
                if (window != null) window.dispose();
            });
            buttonPanel.add(skipButton);
        }

        if (onPreviousCallback != null) {
            JButton previousButton = new JButton("Previous");
            previousButton.addActionListener(e -> onPreviousCallback.run());
            buttonPanel.add(previousButton);
        }

        JButton actionButton = new JButton(isFinishButton ? "Finish" : "Next");
        actionButton.addActionListener(e -> {
            if (onNextCallback != null) onNextCallback.run();

            if (isFinishButton) {
                PersistentSettings.getInstance().setShowPopups(true);
                saveDontShowPreference();
                if (window != null) window.dispose();  // Close the popup on "Finish"
            }
        });

        buttonPanel.add(actionButton);

        footerPanel.add(buttonPanel, BorderLayout.EAST);

        if (window instanceof JDialog) {
            JDialog dialog = (JDialog) window;
            dialog.getRootPane().setDefaultButton(actionButton);
            dialog.addWindowListener(new WindowAdapter() {
                @Override
                public void windowClosed(WindowEvent e) {
                    saveDontShowPreference();
                }
            });
        }

        return footerPanel;
    }


    private void saveDontShowPreference() {
        if (dontShowAgainChecked) {
            // Use public setter instead of direct state access
            PersistentSettings.getInstance().setShowPopups(true);
        }
    }
}