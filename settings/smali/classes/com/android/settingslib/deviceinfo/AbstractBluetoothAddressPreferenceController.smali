.class public abstract Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractBluetoothAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"


# instance fields
.field private mBtAddress:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 47
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    const-string v0, "bt_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroid/support/v7/preference/Preference;

    .line 63
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->updateConnectivity()V

    .line 64
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "bt_address"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateConnectivity()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 75
    .local v0, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroid/support/v7/preference/Preference;

    sget v3, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 84
    .end local v1
    :cond_2
    :goto_1
    return-void
.end method
