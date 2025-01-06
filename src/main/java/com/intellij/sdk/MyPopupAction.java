//package com.intellij.sdk;
//import com.intellij.openapi.actionSystem.AnAction;
//import com.intellij.openapi.actionSystem.AnActionEvent;
//import com.intellij.openapi.project.Project;
//import com.intellij.openapi.ui.DialogWrapper;
//import org.jetbrains.annotations.Nullable;
//import javax.swing.*;
//import java.awt.*;
//
//
//public class MyPopupAction extends AnAction {
//
//    @Override
//    public void actionPerformed(AnActionEvent e) {
//        Project project = e.getProject();
//        if (project == null) return;
//        new ScrollableImagePopup().show();
//    }
//
//    static class ScrollableImagePopup extends DialogWrapper {
//
//        protected ScrollableImagePopup() {
//            super(true);
//            init();
//            setTitle(" ");
//        }
//
//        @Override
//        protected @Nullable JComponent createCenterPanel() {
//            // Main container for the popup content
//            JPanel mainPanel = new JPanel(new BorderLayout());
//            mainPanel.setBackground(Color.DARK_GRAY);
//
//            // Static header with logo
//            JPanel headerPanel = createStaticHeaderPanel();
//            mainPanel.add(headerPanel, BorderLayout.NORTH);
//
//            // Scrollable content including text and images
//            JScrollPane scrollableContentPane = createScrollableContentPanel();
//            mainPanel.add(scrollableContentPane, BorderLayout.CENTER);
//
//            return mainPanel;
//        }
//
//        /**
//         * Creates the static header panel with only the logo image.
//         */
//        private JPanel createStaticHeaderPanel() {
//            JPanel headerPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
//            headerPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
//            headerPanel.setBackground(Color.DARK_GRAY);
//
//            ImageIcon imageIcon = new ImageIcon("D:\\Popup_implementation\\src\\main\\resources\\assets\\stellarlogo.png");
//            Image scaledImage = imageIcon.getImage().getScaledInstance(80, 30, Image.SCALE_SMOOTH);
//            JLabel imageLabel = new JLabel(new ImageIcon(scaledImage));
//            headerPanel.add(imageLabel);
//
//            return headerPanel;
//        }
//
//        /**
//         * Creates a scrollable panel with centered text and images.
//         */
//        private JScrollPane createScrollableContentPanel() {
//            // Panel to hold scrollable content
//            JPanel contentPanel = new JPanel();
//            contentPanel.setLayout(new BoxLayout(contentPanel, BoxLayout.Y_AXIS));
//            contentPanel.setBackground(Color.DARK_GRAY);
//            contentPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20)); // Add padding around the content
//
//            // Add title and description
//            JLabel titleLabel1 = new JLabel("<html>Step 1/5 </html>");
//            titleLabel1.setFont(new Font("Arial", Font.BOLD, 16));
//            titleLabel1.setForeground(Color.WHITE);
//            titleLabel1.setAlignmentX(Component.CENTER_ALIGNMENT); // Center align
//
//            JLabel titleLabel = new JLabel("<html> Define Locators in Stellar Framework</html>");
//            titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
//            titleLabel.setForeground(Color.WHITE);
//            titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT); // Center align
//
//            JLabel descriptionLabel = new JLabel("<html>To define locators, add them to the <i>locators_datasheet</i> located at <b>src\\main\\resources\\locatorsData</b>.<br>You can write locators in CSV, Excel, or JSON format.</html>");
//            descriptionLabel.setFont(new Font("Arial", Font.PLAIN, 12));
//            descriptionLabel.setForeground(Color.WHITE);
//            descriptionLabel.setAlignmentX(Component.CENTER_ALIGNMENT); // Center align
//
//            contentPanel.add(titleLabel1);
//            contentPanel.add(Box.createVerticalStrut(10));
//            contentPanel.add(titleLabel);
//            contentPanel.add(Box.createVerticalStrut(10));
//            contentPanel.add(descriptionLabel);
//
//            // Add images
//            ImageIcon originalIcon1 = new ImageIcon("D:\\Popup_implementation\\src\\main\\resources\\assets\\Img1S1.png");
//            Image scaledImage1 = originalIcon1.getImage().getScaledInstance(550, 300, Image.SCALE_SMOOTH);
//            JLabel firstImageLabel = new JLabel(new ImageIcon(scaledImage1));
//            firstImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT); // Center align
//
//            ImageIcon originalIcon2 = new ImageIcon("D:\\Popup_implementation\\src\\main\\resources\\assets\\Img2S1.png");
//            Image scaledImage2 = originalIcon2.getImage().getScaledInstance(550, 300, Image.SCALE_SMOOTH);
//            JLabel secondImageLabel = new JLabel(new ImageIcon(scaledImage2));
//            secondImageLabel.setAlignmentX(Component.CENTER_ALIGNMENT); // Center align
//
//            contentPanel.add(Box.createVerticalStrut(20));
//            contentPanel.add(firstImageLabel);
//            contentPanel.add(Box.createVerticalStrut(20));
//            contentPanel.add(secondImageLabel);
//            contentPanel.add(Box.createVerticalStrut(20));
//
//            // Wrap the content panel in a scroll pane
//            JScrollPane scrollPane = new JScrollPane(contentPanel);
//            scrollPane.setPreferredSize(new Dimension(600, 400));
//            scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
//            scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
//            scrollPane.getVerticalScrollBar().setUnitIncrement(16); // Smooth scrolling
//            scrollPane.setBorder(BorderFactory.createEmptyBorder());
//            return scrollPane;
//        }
//
//        @Override
//        protected JComponent createSouthPanel() {
//            // Custom footer panel
//            JPanel footerPanel = new JPanel(new BorderLayout());
//
//            // Checkbox (Left-aligned)
//            JCheckBox dontShowAgainCheckbox = new JCheckBox("Don't show again");
//            footerPanel.add(dontShowAgainCheckbox, BorderLayout.WEST);
//
//            // Buttons (Right-aligned)
//            JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
//            JButton skipButton = new JButton("Skip");
//            JButton previousButton = new JButton("Previous");
//            JButton nextButton = new JButton("Next");
//
//            buttonPanel.add(skipButton);
//            buttonPanel.add(previousButton);
//            buttonPanel.add(nextButton);
//
//            footerPanel.add(buttonPanel, BorderLayout.EAST);
//
//            return footerPanel;
//        }
//    }
//}