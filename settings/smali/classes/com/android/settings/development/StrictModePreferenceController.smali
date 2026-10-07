.class public Lcom/android/settings/development/StrictModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "StrictModePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final STRICT_MODE_DISABLED:Ljava/lang/String; = ""

.field static final STRICT_MODE_ENABLED:Ljava/lang/String; = "1"


# instance fields
.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "window"

    .line 49
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/StrictModePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 50
    return-void
.end method

.method private isStrictModeEnabled()Z
    .locals 2

    .line 77
    const-string v0, "persist.sys.strictmode.visual"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeStrictModeVisualOptions(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/StrictModePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 83
    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 82
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 86
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :goto_1
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "strict_mode"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/StrictModePreferenceController;->writeStrictModeVisualOptions(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/development/StrictModePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 59
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    .local v0, "isEnabled":Z
    invoke-direct {p0, v0}, Lcom/android/settings/development/StrictModePreferenceController;->writeStrictModeVisualOptions(Z)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/StrictModePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/StrictModePreferenceController;->isStrictModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    return-void
.end method
