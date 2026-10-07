.class public Lcom/android/settings/connecteddevice/BluetoothOnWhileDrivingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BluetoothOnWhileDrivingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_BLUETOOTH_ON_DRIVING:Ljava/lang/String; = "bluetooth_on_while_driving"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "bluetooth_on_while_driving"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothOnWhileDrivingPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_bluetooth_while_driving"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothOnWhileDrivingPreferenceController;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on_while_driving"

    .line 46
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "isChecked"    # Z

    .line 55
    move v0, p1

    .line 56
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothOnWhileDrivingPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_on_while_driving"

    .line 56
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
