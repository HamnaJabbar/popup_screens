


//never
package com.intellij.sdk;

import com.intellij.ide.plugins.IdeaPluginDescriptor;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.ProjectActivity;
import com.intellij.sdk.Services.SequentialPopUps;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class Main implements ProjectActivity, com.intellij.ide.plugins.PluginStateListener {

    @Nullable
    @Override
    public Object execute(@NotNull Project project, @NotNull Continuation<? super Unit> continuation) {


        ApplicationManager.getApplication().invokeLater(() -> {
            SequentialPopUps sequentialPopUps = new SequentialPopUps();
            sequentialPopUps.showPopups();
        });
        return null;
    }

    @Override
    public void install(@NotNull IdeaPluginDescriptor pluginDescriptor) {
        // Reset preferences when plugin is installed/reinstalled
        SequentialPopUps.resetPreferences();
    }


    @Override
    public void uninstall(@NotNull IdeaPluginDescriptor pluginDescriptor) {
        // Optional cleanup logic
    }
}



