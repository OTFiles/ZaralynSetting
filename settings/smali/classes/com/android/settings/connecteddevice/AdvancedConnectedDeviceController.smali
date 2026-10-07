.class public Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AdvancedConnectedDeviceController.java"


# static fields
.field private static final DRIVING_MODE_SETTINGS_ENABLED:Ljava/lang/String; = "gearhead:driving_mode_settings_enabled"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController;

    const-string v1, "toggle_nfc"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .local v0, "nfcPreferenceController":Lcom/android/settings/nfc/NfcPreferenceController;
    nop

    .line 56
    invoke-static {p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->isDrivingModeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I

    move-result v1

    return v1
.end method

.method static getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I
    .locals 1
    .param p0, "nfcPreferenceController"    # Lcom/android/settings/nfc/NfcPreferenceController;
    .param p1, "isDrivingModeAvailable"    # Z

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    .line 73
    const v0, 0x7f1203f9

    .local v0, "resId":I
    :goto_0
    goto :goto_1

    .line 76
    .end local v0
    :cond_0
    const v0, 0x7f1203f7

    goto :goto_0

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    .line 81
    const v0, 0x7f1203f8

    goto :goto_0

    .line 84
    :cond_2
    const v0, 0x7f1203f6

    .line 88
    .restart local v0
    :goto_1
    return v0
.end method

.method static isDrivingModeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gearhead:driving_mode_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
