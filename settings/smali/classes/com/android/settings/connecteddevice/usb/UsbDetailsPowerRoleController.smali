.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsPowerRoleController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mNextPowerRole:I

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 42
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 53
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V
    .locals 2

    .line 43
    iget v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120f64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 59
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120f73

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 63
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, "usb_details_power_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 127
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 107
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 108
    .local v0, "newRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v2, :cond_2

    .line 109
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 112
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 113
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v3, 0x7f120f63

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 116
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0xbb8

    goto :goto_1

    .line 117
    :cond_1
    const-wide/16 v4, 0x3a98

    .line 115
    :goto_1
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    return v1
.end method

.method protected refresh(ZJII)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 74
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    .line 75
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 77
    const-string v1, ""

    const-string v2, "====divhee========refresh====1==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_2
    const/4 v2, 0x2

    if-ne p4, v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 81
    const-string v1, ""

    const-string v2, "====divhee========refresh====2==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_3
    if-eqz p1, :cond_4

    if-nez p4, :cond_6

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 84
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_5
    const-string v1, ""

    const-string v2, "====divhee========refresh====3==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_6
    :goto_1
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v1, :cond_8

    if-eqz p4, :cond_8

    .line 91
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-ne v1, p4, :cond_7

    .line 93
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f120f64

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 98
    :goto_2
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 99
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    const-string v0, ""

    const-string v1, "====divhee========refresh====4==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_8
    return-void
.end method
