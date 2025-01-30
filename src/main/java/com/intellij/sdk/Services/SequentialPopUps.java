
package com.intellij.sdk.Services;

import com.intellij.sdk.utils.CheckBoxPanel;
import com.intellij.sdk.utils.HeaderPanel;
import com.intellij.sdk.utils.ScrollableImagePopup;
import com.intellij.sdk.utils.ScrollablePanel;

public class SequentialPopUps {

    private ScrollableImagePopup popup;
    private HeaderPanel headerPanel;
    private Runnable currentStep;

    public void showPopups() {
        headerPanel = new HeaderPanel();
        showFirstStep();
    }

    private void showFirstStep() {
        currentStep = null;
        updatePopupContent(
                "Define Locators in Stellar Framework",
                "To define locators, add them to the <i>locators_datasheet</i> located at <b>\\src\\main\\resources\\locatorsData</b>.<br>" +
                        "You can write locators in the relevant locators_datasheet file, i.e. CSV or Excel or JSON.<br>" +
                        "Please visit <a href='https://vstellar.io/documentations/how-to-create-locators' target='_blank'>https://vstellar.io/documentations/how-to-create-locators</a> for more details.",
                "/assets/check.png",
                "/assets/IMG1S1.png",
                this::showSecondStep
        );

        if (popup == null) {
            popup = new ScrollableImagePopup(" ", headerPanel, null, null);
        }
        popup.show();
    }

    private void showSecondStep() {
        currentStep = this::showFirstStep;
        updatePopupContent(
                "Define Service Endpoints to use in Stellar Framework",
                "To define Service Endpoints, add them in the serviceEndPoints.json file located at \\src\\main\\resources<br>" +
                        "so you can refer to a URL quickly in all test cases.",
                "/assets/img1S2.png",
                "",
                this::showThirdStep
        );
    }

    private void showThirdStep() {
        currentStep = this::showSecondStep;
        updatePopupContent(
                "Create your test cases in feature file",
                "Create your test cases in the feature file located at \\src\\main\\resources\\Features\\[selected test type].<br>" +
                        "You can use plain English text to define your test cases in the file, as well as add a relevant test case<br>" +
                        "tag, i.e. @smoke or @regression.<br>" +
                        "Note: You'll need to setup Appium, Appium inspector, and mobile testing environment (Android or iOS)<br>" +
                        "before mobile testing. Please visit <a href='https://vstellar.io/documentations/mobile-testing' target='_blank'> Stellar| AI Testing at Its Best</a> for more details.",
                "/assets/IMG1S3.png",
                "",
                this::showFourthStep
        );
    }

    private void showFourthStep() {
        currentStep = this::showThirdStep;
        updatePopupContent(
                "Set up testing parameters in config.json file",
                "To set up the testing parameters, add the values to the config.json file located at \\src\\main\\resources.<br>" +
                        "For example, you can define the testing environment in the config.json.<br>" +
                        "Please visit <a href='https://vstellar.io/documentations/stellar-configuration-file-configjson' target='_blank'>https://vstellar.io/documentations/stellar-configuration-file-configjson</a> for more details.",
                "/assets/IMG1S4.png",
                "",
                this::showFifthStep
        );
    }

    private void showFifthStep() {
        currentStep = this::showFourthStep;
        CheckBoxPanel checkBoxPanel = new CheckBoxPanel(null, currentStep, true, true);
        popup.updateContent(
                headerPanel,
                createScrollablePanel(
                        "Specify Tags in the Runner File",
                        "Add tags using @ in the .java file located at \\src\\main\\java\\Runners\\ to specify which test cases from the<br>" +
                                "Feature file will run. Each testing type will have its own runner file, i.e., UI, API, Mobile in the sample project.",
                        "/assets/IMG1S5.jpg",
                        ""
                ),
                checkBoxPanel
        );
    }

    private ScrollablePanel createScrollablePanel(
            String title, String description, String image1, String image2
    ) {
        return new ScrollablePanel(title, description, image1, image2, "");
    }

    private void updatePopupContent(
            String title,
            String description,
            String image1,
            String image2,
            Runnable onNext
    ) {
        ScrollablePanel scrollablePanel = new ScrollablePanel(title, description, image1, image2, "");
        CheckBoxPanel checkBoxPanel = new CheckBoxPanel(onNext, currentStep);

        if (popup == null) {
            popup = new ScrollableImagePopup(" ", headerPanel, scrollablePanel, checkBoxPanel);
        } else {
            popup.updateContent(headerPanel, scrollablePanel, checkBoxPanel);
        }
    }


}
