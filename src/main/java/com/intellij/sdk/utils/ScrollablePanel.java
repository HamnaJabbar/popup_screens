package com.intellij.sdk.utils;

import javax.swing.*;
import java.awt.*;

public class ScrollablePanel {

    private final String stepLabel;
    private final String titleText;
    private final String descriptionText;
    private final String imagePath1;
    private final String imagePath2;

    public ScrollablePanel(String stepLabel, String titleText, String descriptionText, String imagePath1, String imagePath2) {
        this.stepLabel = stepLabel;
        this.titleText = titleText;
        this.descriptionText = descriptionText;
        this.imagePath1 = imagePath1;
        this.imagePath2 = imagePath2 != null && !imagePath2.isEmpty() ? imagePath2 : null; // Set imagePath2 to null if not passed
    }


    public JScrollPane createScrollableContentPanel() {
        JPanel contentPanel = new JPanel();
        contentPanel.setLayout(new BoxLayout(contentPanel, BoxLayout.Y_AXIS));
        contentPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        // Add title and description
        JLabel stepLabelComponent = new JLabel("<html>" + stepLabel + "</html>");
        stepLabelComponent.setFont(new Font("Arial", Font.BOLD, 16));
        stepLabelComponent.setForeground(Color.WHITE);
        stepLabelComponent.setAlignmentX(Component.CENTER_ALIGNMENT);

        JLabel titleLabel = new JLabel("<html>" + titleText + "</html>");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
        titleLabel.setForeground(Color.WHITE);
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        JLabel descriptionLabel = new JLabel("<html>" + descriptionText + "</html>");
        descriptionLabel.setFont(new Font("Arial", Font.PLAIN, 12));
        descriptionLabel.setForeground(Color.WHITE);
        descriptionLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        contentPanel.add(stepLabelComponent);
        contentPanel.add(Box.createVerticalStrut(10));
        contentPanel.add(titleLabel);
        contentPanel.add(Box.createVerticalStrut(10));
        contentPanel.add(descriptionLabel);

        ImageIcon originalIcon1 = new ImageIcon(getClass().getResource(imagePath1));
        Image scaledImage1 = originalIcon1.getImage().getScaledInstance(550, 300, Image.SCALE_SMOOTH);
        JLabel firstImageLabel = new JLabel(new ImageIcon(scaledImage1));
        firstImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        contentPanel.add(Box.createVerticalStrut(10));
        contentPanel.add(firstImageLabel);
        contentPanel.add(Box.createVerticalStrut(10));


        if (imagePath2 != null) {
            ImageIcon originalIcon2 = new ImageIcon(getClass().getResource(imagePath2));
            Image scaledImage2 = originalIcon2.getImage().getScaledInstance(550, 300, Image.SCALE_SMOOTH);
            JLabel secondImageLabel = new JLabel(new ImageIcon(scaledImage2));
            secondImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

            contentPanel.add(Box.createVerticalStrut(5));
            contentPanel.add(secondImageLabel);
            contentPanel.add(Box.createVerticalStrut(5));
        }

        // Wrap the content panel in a scroll pane
        JScrollPane scrollPane = new JScrollPane(contentPanel);
        scrollPane.setPreferredSize(new Dimension(600, 200));
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        scrollPane.getVerticalScrollBar().setUnitIncrement(16);
        scrollPane.setBorder(BorderFactory.createEmptyBorder());
        return scrollPane;
    }
}
