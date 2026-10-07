.class public Lcom/android/settings/notification/ZenModeCallsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeCallsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 40
    const-string v0, "zen_mode_calls"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mListValues:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private updateFromContactsValue(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 76
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->getContactsSummary(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 89
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "currentVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .end local v0
    goto :goto_0

    .line 80
    :pswitch_0    # 0x3 0x2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    const-string v1, "zen_mode_from_none"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->getContactsSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 83
    nop

    .line 93
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    const-string v0, "zen_mode_calls"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    .line 59
    return-void
.end method

.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "currentVal"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    const/4 v0, 0x3

    .line 98
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    return v1

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1
    :cond_1
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "zen_mode_calls"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "selectedContactsFrom"    # Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result v1

    .line 69
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/ZenModeBackend;->saveSenders(II)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->updateFromContactsValue(Landroid/support/v7/preference/Preference;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->updateFromContactsValue(Landroid/support/v7/preference/Preference;)V

    .line 65
    return-void
.end method
