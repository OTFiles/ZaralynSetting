.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsDataRoleController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 42
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v1, 0x7f120f64

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 47
    :cond_0
    return-void
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "titleId"    # I

    .line 122
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "pref":Lcom/android/settings/widget/RadioButtonPreference;
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 125
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 127
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120f3f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120f3e

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 62
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "usb_details_data_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5
    .param p1, "preference"    # Lcom/android/settings/widget/RadioButtonPreference;

    .line 98
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "role":I
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v1, :cond_1

    .line 100
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    .line 102
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 103
    const v1, 0x7f120f63

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 106
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xbb8

    goto :goto_0

    .line 107
    :cond_0
    const-wide/16 v3, 0x3a98

    .line 105
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_1
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p5, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 70
    :cond_0
    if-ne p5, v1, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    if-nez p5, :cond_3

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    .line 84
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p5, :cond_4

    .line 86
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v1, 0x7f120f64

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    .line 91
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 92
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    :cond_5
    return-void
.end method
