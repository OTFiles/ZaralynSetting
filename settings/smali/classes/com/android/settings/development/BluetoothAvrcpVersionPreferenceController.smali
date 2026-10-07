.class public Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothAvrcpVersionPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_AVRCP_VERSION_PROPERTY:Ljava/lang/String; = "persist.bluetooth.avrcpversion"


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "bluetooth_select_avrcp_version"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 56
    const-string v0, "persist.bluetooth.avrcpversion"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 64
    .local v0, "listPreference":Landroid/support/v7/preference/ListPreference;
    const-string v1, "persist.bluetooth.avrcpversion"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "currentValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 66
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
