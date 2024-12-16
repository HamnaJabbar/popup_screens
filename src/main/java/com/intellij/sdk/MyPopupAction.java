package com.intellij.sdk;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.DialogWrapper;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.awt.*;

public class MyPopupAction extends AnAction {

    @Override
    public void actionPerformed(AnActionEvent e) {
        Project project = e.getProject();
        if (project == null) {
            return;
        }
        new TestingSolutionPopup().show();
    }

    static class TestingSolutionPopup extends DialogWrapper {

        protected TestingSolutionPopup() {
            super(true);
            init();
        }

        @Override
        protected @Nullable JComponent createCenterPanel() {
            // Main panel
            JPanel mainPanel = new JPanel(new BorderLayout());
            mainPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
            mainPanel.setPreferredSize(new Dimension(600, 300));

            // Title
            JLabel titleLabel = new JLabel("Choose Your Testing Solution");
            titleLabel.setFont(new Font("Arial", Font.BOLD, 18));
            titleLabel.setHorizontalAlignment(SwingConstants.LEFT);
            mainPanel.add(titleLabel, BorderLayout.NORTH);

            // Subtitle and options
            JPanel centerPanel = new JPanel();
            centerPanel.setLayout(new BoxLayout(centerPanel, BoxLayout.Y_AXIS));

            JLabel subtitleLabel = new JLabel("Please select the testing solution you'd like to configure.");
            subtitleLabel.setFont(new Font("Arial", Font.PLAIN, 14));
            subtitleLabel.setAlignmentX(Component.LEFT_ALIGNMENT);
            centerPanel.add(subtitleLabel);
            centerPanel.add(Box.createRigidArea(new Dimension(0, 15)));

            // Options panel with checkboxes
            JPanel optionsPanel = new JPanel(new GridLayout(5, 1, 5, 5));
            optionsPanel.setAlignmentX(Component.LEFT_ALIGNMENT);

            JCheckBox uiTesting = new JCheckBox("UI Testing");
            JCheckBox apiTesting = new JCheckBox("API Testing");
            JCheckBox mobileTesting = new JCheckBox("Mobile Testing");
            JCheckBox performanceTesting = new JCheckBox("<html>Performance Testing <span style='color:green'>(Premium)</span></html>");
            JCheckBox accessibilityTesting = new JCheckBox("<html>Accessibility Testing <span style='color:green'>(Premium)</span></html>");

            // Add checkboxes to options panel
            optionsPanel.add(uiTesting);
            optionsPanel.add(apiTesting);
            optionsPanel.add(mobileTesting);
            optionsPanel.add(performanceTesting);
            optionsPanel.add(accessibilityTesting);

            centerPanel.add(optionsPanel);
            centerPanel.add(Box.createRigidArea(new Dimension(0, 20)));
            mainPanel.add(centerPanel, BorderLayout.CENTER);

            // Button panel with specific alignment
            JPanel buttonPanel = new JPanel(new BorderLayout());

            // Skip button (left)
            JPanel leftPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
            JButton skipButton = new JButton("Skip");
            skipButton.addActionListener(e -> close(CANCEL_EXIT_CODE));
            leftPanel.add(skipButton);

            // I'll see later and Next buttons (right)
            JPanel rightPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
            JButton seeLaterButton = new JButton("I'll see later");
            JButton nextButton = new JButton("Next");

            seeLaterButton.addActionListener(e -> close(CANCEL_EXIT_CODE));
            nextButton.addActionListener(e -> {
                close(OK_EXIT_CODE);
                new SecondPopup().show(); // Open the second popup when "Next" is clicked
            });

            rightPanel.add(seeLaterButton);
            rightPanel.add(nextButton);

            buttonPanel.add(leftPanel, BorderLayout.WEST);
            buttonPanel.add(rightPanel, BorderLayout.EAST);

            mainPanel.add(buttonPanel, BorderLayout.SOUTH);

            return mainPanel;
        }

        @Override
        protected Action[] createActions() {
            return new Action[0];
        }
    }

    static class SecondPopup extends DialogWrapper {

        protected SecondPopup() {
            super(true);
            init();
            setTitle("How to provide locators to Stellar Framework?");
        }

        @Override
        protected @Nullable JComponent createCenterPanel() {
            // Main panel
            JPanel mainPanel = new JPanel(new BorderLayout());
            mainPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
            mainPanel.setPreferredSize(new Dimension(700, 400));

            // Title Label
            JLabel titleLabel = new JLabel("How to provide locators to Stellar Framework?");
            titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
            titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
            mainPanel.add(titleLabel, BorderLayout.NORTH);

            // Instruction Label
            JLabel instructionLabel = new JLabel("Add locators to your locators.csv from where the locators will be fetched.");
            instructionLabel.setFont(new Font("Arial", Font.PLAIN, 14));
            instructionLabel.setHorizontalAlignment(SwingConstants.CENTER);
            mainPanel.add(instructionLabel, BorderLayout.CENTER);

            // Image Panel
            JLabel imageLabel = new JLabel();
            imageLabel.setHorizontalAlignment(SwingConstants.CENTER);

            // Replace with your image path
            ImageIcon imageIcon = new ImageIcon("D:\\Popup_implementation\\src\\main\\resources\\assets\\S1.png");
            imageLabel.setIcon(imageIcon);

            // Add the image label to the center of the panel
            mainPanel.add(imageLabel, BorderLayout.CENTER);

            // Button panel
            JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
            JButton skipButton = new JButton("Skip");
            skipButton.addActionListener(e -> close(CANCEL_EXIT_CODE));

            JButton nextButton = new JButton("Next");
            nextButton.addActionListener(e -> close(OK_EXIT_CODE));

            buttonPanel.add(skipButton);
            buttonPanel.add(nextButton);

            mainPanel.add(buttonPanel, BorderLayout.SOUTH);

            return mainPanel;
        }

        @Override
        protected Action[] createActions() {
            return new Action[0];
        }
    }
}