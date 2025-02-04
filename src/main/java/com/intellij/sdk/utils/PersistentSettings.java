
//never


package com.intellij.sdk.utils;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import com.intellij.openapi.components.Service;

@Service
@State(name = "StellarSettings", storages = @Storage("stellar_settings.xml"))
public final class PersistentSettings implements PersistentStateComponent<PersistentSettings.State> {

    public static class State {
        public boolean showPopups = true;
    }

    private State state = new State();

    public boolean shouldShowPopups() { //retrieves the current stored value.
        return state.showPopups;
    }

    public void setShowPopups(boolean value) {     //updates the value when the user selects "Don't show again" in the CheckBoxPanel.
        state.showPopups = value;
    }

    @Nullable
    @Override
    public State getState() {
        return state;
    }

    @Override
    public void loadState(@NotNull State state) {
        this.state = state;
    }

    public static PersistentSettings getInstance() {
        return ApplicationManager.getApplication().getService(PersistentSettings.class);
    }
}
