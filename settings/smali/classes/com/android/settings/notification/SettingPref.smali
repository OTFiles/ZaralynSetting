.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Landroid/support/v7/preference/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/support/v7/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    .line 52
    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    .line 53
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 149
    packed-switch p0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 153
    :pswitch_0    # 0x2
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 151
    :pswitch_1    # 0x1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I
    .param p1, "setting"    # Ljava/lang/String;

    .line 129
    packed-switch p0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :pswitch_0    # 0x2
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_1    # 0x1
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :pswitch_0    # 0x2
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 141
    :pswitch_1    # 0x1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;
    .locals 7
    .param p1, "settings"    # Lcom/android/settings/SettingsPreferenceFragment;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 67
    .local v1, "p":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 69
    const/4 v1, 0x0

    .line 71
    :cond_0
    instance-of v2, v1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    .line 72
    move-object v2, v1

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    goto :goto_1

    .line 73
    :cond_1
    instance-of v2, v1, Landroid/support/v7/preference/DropDownPreference;

    if-eqz v2, :cond_3

    .line 74
    move-object v2, v1

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    .line 75
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 76
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 77
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v6, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 79
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v4
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    .end local v2
    .end local v3
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v2, :cond_4

    .line 86
    new-instance v2, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    return-object v2

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v2, :cond_5

    .line 96
    new-instance v2, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    return-object v2

    .line 104
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 108
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "val":I
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_1
    return-void
.end method
