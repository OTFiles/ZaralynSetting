.class public Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BackgroundProcessLimitPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private updateAppProcessLimitOptions()V
    .locals 4

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v0

    .line 73
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 74
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "val":I
    if-lt v3, v0, :cond_0

    .line 77
    move v1, v2

    .line 78
    goto :goto_1

    .line 74
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    .line 82
    .local v2, "listPreference":Landroid/support/v7/preference/ListPreference;
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :goto_2
    return-void
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 91
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_1

    .line 91
    :cond_0
    const/4 v0, -0x1

    .line 92
    .local v0, "limit":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V

    .line 96
    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    :goto_1
    nop

    .line 97
    :goto_2
    return-void
.end method


# virtual methods
.method getActivityManagerService()Landroid/app/IActivityManager;
    .locals 1

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "app_process_limit"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0, p2}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V

    .line 62
    return-void
.end method
