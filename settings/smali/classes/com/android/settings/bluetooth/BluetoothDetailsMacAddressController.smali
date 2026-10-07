.class public Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsMacAddressController.java"


# instance fields
.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-direct {v0, p2, p4}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 42
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 46
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 48
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 47
    const v3, 0x7f120283

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method protected refresh()V
    .locals 0

    .line 53
    return-void
.end method
