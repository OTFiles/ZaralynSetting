.class public Lcom/android/settings/MultiSimSettingsFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "MultiSimSettingsFragment.java"


# instance fields
.field private final mMultMobileSettingsObserver:Landroid/database/ContentObserver;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 283
    new-instance v0, Lcom/android/settings/MultiSimSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiSimSettingsFragment$1;-><init>(Lcom/android/settings/MultiSimSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->mMultMobileSettingsObserver:Landroid/database/ContentObserver;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiSimSettingsFragment;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettingsFragment;

    .line 58
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiSimSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettingsFragment;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettingsFragment;->multMobileDataModifyEnable()Z

    move-result v0

    return v0
.end method

.method private multMobileDataModifyEnable()Z
    .locals 3

    .line 275
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v1
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 128
    const/16 v0, 0x21

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f150071

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettingsFragment;->addPreferencesFromResource(I)V

    .line 102
    const-string v0, "sim_card_more_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    .line 103
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/MultiSimSettingsFragment;->multMobileDataModifyEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiSimSettingsFragment;->mMultMobileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 110
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 113
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MultiSimSettingsFragment;->mMultMobileSettingsObserver:Landroid/database/ContentObserver;

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment;->simCardMoreSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/MultiSimSettingsFragment;->multMobileDataModifyEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 118
    :cond_0
    return-void
.end method
