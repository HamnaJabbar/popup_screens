package com.intellij.sdk.utils;

import javax.swing.*;
import java.awt.*;

public class HeaderPanel {

    public JPanel createStaticHeaderPanel() {
        JPanel headerPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        headerPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        ImageIcon imageIcon = new ImageIcon(getClass().getResource("/assets/LOGO.png"));
        Image scaledImage = imageIcon.getImage().getScaledInstance(60, 17, Image.SCALE_SMOOTH);
        JLabel imageLabel = new JLabel(new ImageIcon(scaledImage));
        headerPanel.add(imageLabel);

        return headerPanel;
    }

}
