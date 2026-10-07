.class public Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "default_payment_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 49
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 51
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    .line 64
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 68
    .local v0, "app":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_3

    .line 69
    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 71
    :cond_3
    const v1, 0x7f12012d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 73
    :goto_1
    return-void
.end method
