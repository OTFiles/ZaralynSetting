.class public Lcom/android/settings/inputmethod/GameControllerPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GameControllerPreferenceController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    .line 44
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 60
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x2

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 71
    .local v0, "devices":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 72
    .local v4, "deviceId":I
    iget-object v5, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 73
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    return v2

    .line 71
    .end local v4
    .end local v5
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isChecked()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    .line 91
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 105
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 114
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 115
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 109
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 49
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    .line 99
    nop

    .line 98
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 87
    return-void
.end method
