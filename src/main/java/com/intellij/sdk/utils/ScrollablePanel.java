package com.intellij.sdk.utils;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.net.URI;

public class ScrollablePanel {


    private final String titleText;
    private final String descriptionText;
    private final String imagePath1;
    private final String imagePath2;
    private final String imagePath3;

    public ScrollablePanel( String titleText, String descriptionText, String imagePath1, String imagePath2 , String imagePath3) {

        this.titleText = titleText;
        this.descriptionText = descriptionText;
        this.imagePath1 = imagePath1;
        this.imagePath2 = imagePath2 != null && !imagePath2.isEmpty() ? imagePath2 : null;
        this.imagePath3 = imagePath3 != null && !imagePath3.isEmpty() ? imagePath3 : null;
    }

    public JScrollPane createScrollableContentPanel() {
        JPanel contentPanel = new JPanel();
        contentPanel.setLayout(new BoxLayout(contentPanel, BoxLayout.Y_AXIS));
        contentPanel.setBorder(BorderFactory.createEmptyBorder(10, 20, 20, 20));


        JLabel titleLabel = new JLabel("<html>" + titleText + "</html>");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
        titleLabel.setForeground(Color.WHITE);
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        JLabel descriptionLabel = new JLabel("<html>" + descriptionText + "</html>");
        descriptionLabel.setFont(new Font("Arial", Font.PLAIN, 12));
        descriptionLabel.setForeground(Color.WHITE);
        descriptionLabel.setAlignmentX(Component.CENTER_ALIGNMENT);


        contentPanel.add(titleLabel);
        contentPanel.add(Box.createVerticalStrut(10));
        contentPanel.add(descriptionLabel);

        // Adding the MouseListener to handle the click event on the link
        descriptionLabel.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                String description = descriptionLabel.getText();
                if (description.contains("https://vstellar.io/documentations/how-to-create-locators")) {
                    openLinkInBrowser("https://vstellar.io/documentations/how-to-create-locators");
                }
                if (description.contains("Stellar| AI Testing at Its Best")) {
                    openLinkInBrowser("https://vstellar.io/documentations/mobile-testing");
                }
                if (description.contains("https://vstellar.io/documentations/stellar-configuration-file-configjson")) {
                    openLinkInBrowser("https://vstellar.io/documentations/stellar-configuration-file-configjson");
                }
            }
        });

        ImageIcon originalIcon1 = new ImageIcon(getClass().getResource(imagePath1));
        Image scaledImage1 = originalIcon1.getImage().getScaledInstance(550, 400, Image.SCALE_SMOOTH);
        JLabel firstImageLabel = new JLabel(new ImageIcon(scaledImage1));
        firstImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        contentPanel.add(Box.createVerticalStrut(10));
        contentPanel.add(firstImageLabel);
        contentPanel.add(Box.createVerticalStrut(10));


        if (imagePath2 != null) {
            ImageIcon originalIcon2 = new ImageIcon(getClass().getResource(imagePath2));
            Image scaledImage2 = originalIcon2.getImage().getScaledInstance(550, 400, Image.SCALE_SMOOTH);
            JLabel secondImageLabel = new JLabel(new ImageIcon(scaledImage2));
            secondImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

            contentPanel.add(Box.createVerticalStrut(5));
            contentPanel.add(secondImageLabel);
            contentPanel.add(Box.createVerticalStrut(5));
        }

        if (imagePath3 != null) {
            ImageIcon originalIcon3 = new ImageIcon(getClass().getResource(imagePath3));
            Image scaledImage3 = originalIcon3.getImage().getScaledInstance(550, 300, Image.SCALE_SMOOTH);
            JLabel thirdImageLabel = new JLabel(new ImageIcon(scaledImage3));
            thirdImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

            contentPanel.add(Box.createVerticalStrut(5));
            contentPanel.add(thirdImageLabel);
            contentPanel.add(Box.createVerticalStrut(5));
        }

        JScrollPane scrollPane = new JScrollPane(contentPanel);
        scrollPane.setPreferredSize(new Dimension(600, 200));
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        scrollPane.getVerticalScrollBar().setUnitIncrement(16);
        scrollPane.setBorder(BorderFactory.createEmptyBorder());
        return scrollPane;

    }

    // Helper method to launch the URL in a browser
    private void openLinkInBrowser(String url) {
        try {
            Desktop.getDesktop().browse(new URI(url));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
