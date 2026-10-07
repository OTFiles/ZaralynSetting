.class public Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PhysicalKeyboardPreferenceController.java"

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
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 49
    :cond_0
    return-void
.end method

.method private updateSummary()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "keyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f12054d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 100
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 103
    .local v1, "summary":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 104
    .local v3, "info":Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    if-nez v1, :cond_2

    .line 105
    iget-object v1, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_2
    iget-object v4, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120730

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .end local v3
    :goto_1
    goto :goto_0

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "physical_keyboard_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 79
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    .line 80
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 89
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    .line 90
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 84
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    .line 60
    return-void
.end method
