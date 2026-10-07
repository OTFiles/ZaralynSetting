.class public Lcom/android/settings/development/WaitForDebuggerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WaitForDebuggerPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private updateState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "debugApp"    # Ljava/lang/String;

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 83
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wait_for_debugger"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    nop

    :cond_0
    move v1, v3

    .line 85
    .local v1, "debuggerEnabled":Z
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 88
    return-void
.end method

.method private writeDebuggerAppOptions(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 109
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 110
    :goto_0
    return-void
.end method


# virtual methods
.method getActivityManagerService()Landroid/app/IActivityManager;
    .locals 1

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "wait_for_debugger"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 74
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 78
    return v0

    .line 75
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 96
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 59
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    .local v0, "debuggerEnabled":Z
    iget-object v1, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug_app"

    .line 60
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "debugApp":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    .line 63
    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug_app"

    .line 68
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 70
    return-void
.end method
