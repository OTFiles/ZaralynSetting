.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"


# instance fields
.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 53
    return-void

    .line 56
    :cond_0
    nop

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 59
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 62
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    .line 66
    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x2

    .line 86
    :goto_0
    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_nfc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->unregister()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 127
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->register()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 117
    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1
    .param p1, "isChecked"    # Z

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 80
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
