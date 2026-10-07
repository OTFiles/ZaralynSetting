.class public Lcom/android/settings/development/DarkUIPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DarkUIPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;Landroid/app/UiModeManager;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/UiModeManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiModeManager"    # Landroid/app/UiModeManager;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 43
    return-void
.end method

.method private modeToDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "values":[Ljava/lang/String;
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 77
    aget-object v1, v0, v1

    return-object v1

    .line 74
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 72
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private modeToInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xdc1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_1

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 103
    return v3

    .line 100
    :pswitch_0    # 0x1
    return v2

    .line 98
    :pswitch_1    # 0x0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .line 83
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 90
    const-string v0, "no"

    return-object v0

    .line 87
    :cond_0
    const-string v0, "yes"

    return-object v0

    .line 85
    :cond_1
    const-string v0, "auto"

    return-object v0
.end method

.method private updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    .line 64
    .local v0, "mode":I
    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "dark_ui_mode"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/development/DarkUIPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/development/DarkUIPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 60
    return-void
.end method
