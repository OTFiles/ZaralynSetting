.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/nfc/PaymentBackend;

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 31
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12091a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120912

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f120911

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    .line 40
    invoke-virtual {p0, p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    .line 46
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 60
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "newValueString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 63
    return v3
.end method

.method refresh()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    .line 50
    .local v0, "foregroundMode":Z
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
