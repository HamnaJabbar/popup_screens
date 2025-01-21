package com.intellij.sdk;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.ProjectActivity;
import com.intellij.sdk.utils.ScrollableImagePopup;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import com.intellij.sdk.Services.SequentialPopUps;
import com.intellij.openapi.startup.StartupActivity;
import org.jetbrains.annotations.Nullable;

public class Main implements ProjectActivity {


    @Nullable
    @Override
    public Object execute(@NotNull Project project, @NotNull Continuation<? super Unit> continuation) {
        ApplicationManager.getApplication().invokeLater(() -> {
            SequentialPopUps sequentialPopUps = new SequentialPopUps();
            sequentialPopUps.showPopups();
        });
        return null;
    }


}
