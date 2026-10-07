.class public Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 7

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 138
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 139
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    new-instance v5, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 140
    .local v5, "pref":Landroid/support/v7/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 143
    iget-object v6, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v4
    .end local v5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method private updateCheckedState()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "enabledKeyboardLayouts":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v7/preference/CheckBoxPreference;Landroid/hardware/input/KeyboardLayout;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    .end local v2
    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 53
    const/16 v0, 0x3a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 62
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    .line 68
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 70
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 119
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 123
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    .line 126
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 130
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 133
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 95
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 99
    instance-of v0, p1, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    .line 101
    .local v0, "checkboxPref":Landroid/support/v7/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayout;

    .line 102
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 104
    .local v2, "checked":Z
    if-eqz v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 106
    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 109
    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 111
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 114
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 79
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 80
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 86
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    .line 87
    return-void
.end method
