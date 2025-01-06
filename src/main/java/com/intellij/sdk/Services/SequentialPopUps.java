package com.intellij.sdk.Services;

import com.intellij.sdk.utils.CheckBoxPanel;
import com.intellij.sdk.utils.HeaderPanel;
import com.intellij.sdk.utils.ScrollableImagePopup;
import com.intellij.sdk.utils.ScrollablePanel;

public class SequentialPopUps {
    HeaderPanel headerPanel;

    public void showPopups() {
        headerPanel = new HeaderPanel();
        ScrollablePanel scrollablePanel = new ScrollablePanel(
                "Step 1/5",
                "Define Locators in Stellar Framework",
                "To define locators, add them to the <i>locators_datasheet</i> located at <b>src\\main\\resources\\locatorsData</b>.<br>You can write locators in the relevant locators_datasheet file, i.e. CSV or Excel or JSON.<br> Please visit https://vstellar.io/documentations/how-to-create-locators for more details.",
                "/assets/IMG1S1.png",
                "/assets/IMG2S1.png"
        );
        CheckBoxPanel checkBoxPanel = new CheckBoxPanel(this::showSecondPopup, null);
        ScrollableImagePopup popup1 = new ScrollableImagePopup(" ", headerPanel, scrollablePanel, checkBoxPanel);
        popup1.showAndGet();
    }


    private void showSecondPopup() {
        HeaderPanel headerPanel2 = new HeaderPanel();
        ScrollablePanel scrollablePanel2 = new ScrollablePanel(
                "Step 2/5",
                "Define Service Endpoints to use in Stellar Framework",
                "To define Service EndPoints, add them in the serviceEndPoints.json file located at \\src\\main\\resources <br>so you can refer to a URL quickly in all test cases.",
                "/assets/img1S2.png",
                ""

        );
        CheckBoxPanel checkBoxPanel2 = new CheckBoxPanel(this::showThirdPopup, this::showPopups);
        ScrollableImagePopup popup2 = new ScrollableImagePopup(" ", headerPanel2, scrollablePanel2, checkBoxPanel2);
        popup2.showAndGet();
    }


    private void showThirdPopup() {
        HeaderPanel headerPanel3 = new HeaderPanel();
        ScrollablePanel scrollablePanel3 = new ScrollablePanel(
                "Step 3/5",
                "Write your test cases in feature file",
                "Create your test cases in the feature file located at \\src\\main\\resources\\Features\\[selected test type].<br> You can use plain English text to define your test cases in the file, as well as add a relevant test case <br> tag, i.e. @smoke or @regression. <br> <br> Note: You'll need to setup Appium, Appium inspector, and mobile testing environment (Android or iOS) <br> before mobile testing. Please visit Stellar | AI Testing at Its Best   for more details",
                "/assets/IMG1S3.png",
                "/assets/IMG2S3.png"

        );
        CheckBoxPanel checkBoxPanel3 = new CheckBoxPanel(this::showFourthPopup, this::showSecondPopup);
        ScrollableImagePopup popup3 = new ScrollableImagePopup(" ", headerPanel3, scrollablePanel3, checkBoxPanel3);
        popup3.showAndGet();
    }

    private void showFourthPopup() {
        HeaderPanel headerPanel4 = new HeaderPanel();
        ScrollablePanel scrollablePanel4 = new ScrollablePanel(
                "Step 4/5",
                "Set up testing parameters in config.json file",
                "To set up the testing parameters, add the values to the config.json file located at \\src\\main\\resources.<br> For example, you can define the testing environment in the config.json. <br> Please visit https://vstellar.io/documentations/stellar-configuration-file-configjson  for more details.",
                "/assets/IMG1S4.png",
                ""

        );
        CheckBoxPanel checkBoxPanel4 = new CheckBoxPanel(this::showFifthPopup, this::showThirdPopup);
        ScrollableImagePopup popup4 = new ScrollableImagePopup(" ", headerPanel4, scrollablePanel4, checkBoxPanel4);
        popup4.showAndGet();
    }

    private void showFifthPopup() {
        HeaderPanel headerPanel4 = new HeaderPanel();
        ScrollablePanel scrollablePanel4 = new ScrollablePanel(
                "Step 5/5",
                "Specify Tags in the Runner File",
                "Add tags using @ in the .java file located at \\src\\main\\java\\Runners\\ to specify which test cases from the <br> Feature file will run.Each testing type will have its own runner file i.e., UI, API, Mobile in the sample project.",
                "/assets/IMG1S5.jpg",
                "/assets/IMG2S5.jpg"

        );
        CheckBoxPanel checkBoxPanel4 = new CheckBoxPanel(null, this::showFourthPopup);
        ScrollableImagePopup popup4 = new ScrollableImagePopup(" ", headerPanel4, scrollablePanel4, checkBoxPanel4);
        popup4.showAndGet();
    }



}
