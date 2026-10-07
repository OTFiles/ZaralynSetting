.class public Lcom/android/settings/development/CoolColorTemperaturePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "CoolColorTemperaturePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final COLOR_TEMPERATURE_PROPERTY:Ljava/lang/String; = "persist.sys.debug.color_temp"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method displayColorTemperatureToast()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "color_temperature"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 73
    const-string v0, "persist.sys.debug.color_temp"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 55
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 56
    .local v0, "isColorTemperatureEnabled":Z
    const-string v1, "persist.sys.debug.color_temp"

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->displayColorTemperatureToast()V

    .line 60
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 65
    const-string v0, "persist.sys.debug.color_temp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "enableColorTemperature":Z
    iget-object v1, p0, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 68
    return-void
.end method
