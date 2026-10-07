.class public final Lcom/android/settings/bluetooth/OthersConnectionSettings;
.super Lcom/android/settings/bluetooth/DevicePickerFragment;
.source "OthersConnectionSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Ljava/beans/PropertyChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private bluetoothScan:Landroid/widget/TextView;

.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnablerOld;

.field private mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothDiscoverable:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

.field private mBluetoothReceiver:Landroid/support/v7/preference/Preference;

.field private mBluetoothSwitcher:Landroid/support/v14/preference/SwitchPreference;

.field private mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

.field public mParentControlConnectUsbPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

.field public mParentControlTransfBluetoothPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mProfileSettings:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSettingsDialogView:Landroid/view/View;

    .line 899
    new-instance v0, Lcom/android/settings/bluetooth/OthersConnectionSettings$5;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 180
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/android/settings/BeanVariable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    .line 148
    new-instance v0, Lcom/android/settings/bluetooth/OthersConnectionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$1;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 763
    new-instance v0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 939
    new-instance v0, Lcom/android/settings/bluetooth/OthersConnectionSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$6;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 971
    new-instance v0, Lcom/android/settings/bluetooth/OthersConnectionSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$7;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 182
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/OthersConnectionSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->startScanning()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/OthersConnectionSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mProfileSettings:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/OthersConnectionSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;
    .param p1, "x1"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 90
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mProfileSettings:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    return-object p1
.end method

.method private setOffMessage()V
    .locals 9

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 699
    .local v0, "emptyView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    const v1, 0x7f1202a3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 704
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 705
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "ble_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v3, v5

    .line 708
    .local v3, "bleScanningMode":Z
    if-nez v3, :cond_2

    .line 710
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 712
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v5, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 714
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const v6, 0x7f12024c

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 716
    new-instance v6, Lcom/android/settings/bluetooth/OthersConnectionSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$3;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    invoke-static {v0, v5, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    .line 727
    .end local v5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 728
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 729
    .local v5, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030044

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 731
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    .line 729
    invoke-interface {v5, v6, v4, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 732
    return-void
.end method

.method private startScanning()V
    .locals 3

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategoryIsPresent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 557
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDevices()V

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 565
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->removeAll()V

    goto :goto_0

    .line 568
    :cond_3
    const-string v0, "BluetoothSettings"

    const-string v2, "mAvailableDevicesCategory is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitialScanStarted:Z

    .line 571
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 572
    return-void
.end method

.method private updateBluetoothScanButton()V
    .locals 6

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "bluetoothIsEnabled":Z
    const/4 v1, 0x0

    .line 537
    .local v1, "isDiscovering":Z
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v0, v2

    .line 539
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->bluetoothScan:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->bluetoothScan:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 546
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->bluetoothScan:Landroid/widget/TextView;

    const v3, 0x7f120c6d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 548
    :cond_3
    return-void
.end method

.method private updateContent(I)V
    .locals 9
    .param p1, "bluetoothState"    # I

    .line 595
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateBluetoothScanButton()V

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 598
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 599
    .local v1, "messageId":I
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 671
    :pswitch_0    # 0xd
    const v1, 0x7f120332

    .line 672
    goto/16 :goto_2

    .line 601
    :pswitch_1    # 0xc
    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    const v1, 0x7f1202a4

    .line 605
    goto/16 :goto_2

    .line 608
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 615
    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 617
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    iget-object v5, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v6, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getDiscoverableMode(Landroid/content/Context;)I

    move-result v7

    const/16 v8, 0x17

    if-ne v7, v8, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    invoke-direct {v3, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/support/v7/preference/Preference;Z)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 618
    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 624
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v5, 0x7f1202f1

    sget-object v6, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 627
    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 633
    .local v3, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    const-string v4, "paired_devices"

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 635
    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 638
    :cond_3
    const-string v4, "paired_devices"

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_4

    .line 639
    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 644
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v5, 0x7f1202ee

    sget-object v6, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitialScanStarted:Z

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 648
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_5

    .line 649
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->startScanning()V

    .line 659
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 663
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_6

    .line 665
    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getDiscoverableMode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 666
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    .line 668
    :cond_6
    return-void

    .line 682
    .end local v3
    :pswitch_2    # 0xb
    const v1, 0x7f120333

    .line 683
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitialScanStarted:Z

    goto :goto_2

    .line 675
    :pswitch_3    # 0xa
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setOffMessage()V

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 677
    const v1, 0x7f1202a4

    .line 687
    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDevices()V

    .line 689
    if-eqz v1, :cond_8

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 692
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 695
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3    # 0xa
        :pswitch_2    # 0xb
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
    .end packed-switch
.end method


# virtual methods
.method public addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 583
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 584
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 586
    if-eqz p4, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->addCachedDevices()V

    .line 589
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 591
    return-void
.end method

.method public closeParentControlConnectUsbPreference()V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 965
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_parent_control_connect_usb_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 967
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 969
    :cond_0
    return-void
.end method

.method public closeParentControlTransfBluetoothPreference()V
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 997
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_parent_control_transf_bluetooth_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 998
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 999
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1001
    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .line 802
    const v0, 0x7f1206bb

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 191
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 793
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 794
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    :cond_0
    return-void
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 299
    const v0, 0x7f15007d

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->addPreferencesFromResource(I)V

    .line 301
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 302
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string v1, "paired_devices"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 305
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 306
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setSelectable(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const-string v1, "bt_device_list"

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setKey(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setOrder(I)V

    .line 316
    const-string v0, "bluetooth_discoverable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    .line 317
    const-string v0, "bluetooth_switcher"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothSwitcher:Landroid/support/v14/preference/SwitchPreference;

    .line 319
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 320
    const-string v0, "bluetooth_device_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/DeviceNamePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    .line 321
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DeviceNamePreference;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerOld;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AirplaneModeEnablerOld;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnablerOld;

    .line 325
    :cond_0
    const-string v0, "bluetooth_show_recieved_file"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothReceiver:Landroid/support/v7/preference/Preference;

    .line 328
    const-string v0, "parent_control_connect_usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateParentControlConnectUsbPreference()V

    .line 331
    const-string v0, "parent_control_transf_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateParentControlTransfBluetoothPreference()V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 335
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitialScanStarted:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 204
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 208
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothSwitcher:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference;Lcom/android/settings/BeanVariable;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setHasOptionsMenu(Z)V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1034
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1035
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1045
    :pswitch_0    # 0x3fe
    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateParentControlTransfBluetoothPreference()V

    .line 1051
    goto :goto_2

    .line 1046
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->closeParentControlTransfBluetoothPreference()V

    .line 1047
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee===========REQUEST_PARENT_CONTROL_TRANSF_BLUETOOTH_ID=======resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1037
    :pswitch_1    # 0x3fd
    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 1041
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateParentControlConnectUsbPreference()V

    .line 1043
    goto :goto_2

    .line 1038
    :cond_3
    :goto_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee===========REQUEST_PARENT_CONTROL_CONNECT_USB_ID=======resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->closeParentControlConnectUsbPreference()V

    .line 1055
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_1    # 0x3fd
        :pswitch_0    # 0x3fe
    .end packed-switch
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .line 736
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onBluetoothStateChanged(I)V

    .line 739
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    .line 742
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateContent(I)V

    .line 743
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 247
    .local v1, "titleTextSize":F
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 249
    .local v2, "switchBarHeight":I
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "actionBarHeight":I
    goto :goto_0

    .line 252
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 254
    .restart local v1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 256
    .restart local v2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 260
    .restart local v3
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 489
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 494
    .local v0, "bluetoothIsEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 495
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v4, 0x7f120313

    goto :goto_1

    .line 496
    :cond_3
    const v4, 0x7f120312

    .line 497
    .local v4, "textId":I
    :goto_1
    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_2

    .line 498
    :cond_4
    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 499
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 500
    const/4 v2, 0x2

    const v5, 0x7f12030b

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 501
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 502
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    const/4 v2, 0x3

    const v5, 0x7f120326

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 504
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 506
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "child":Landroid/view/View;
    const v1, 0x7f0d013e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, "parent":Landroid/view/View;
    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 218
    .local v2, "contain":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onDestroyView()V

    .line 295
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 760
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateContent(I)V

    .line 761
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 576
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 577
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 578
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 528
    :pswitch_0    # 0x3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->jumpToShowAllBtReceivedFiles(Landroid/content/Context;)V

    .line 529
    return v1

    .line 519
    :pswitch_1    # 0x2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 520
    invoke-static {}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->newInstance()Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    move-result-object v0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    .line 520
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 522
    return v1

    .line 512
    :pswitch_2    # 0x1
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 514
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->startScanning()V

    .line 516
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 461
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onPause()V

    .line 465
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->pause()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getDiscoverableMode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->unregister()V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    return-void

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 485
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 442
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothReceiver:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->jumpToShowAllBtReceivedFiles(Landroid/content/Context;)V

    .line 447
    return v1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    if-ne p1, v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-static {}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->newInstance()Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    .line 450
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 453
    :cond_1
    return v1

    .line 455
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothEnablerSwitcher:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->resume(Landroid/content/Context;)V

    .line 347
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mInitiateDiscoverable:Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->register()V

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1202a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->removeAllDevices()V

    .line 363
    return-void

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateContent(I)V

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 374
    :cond_5
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .line 747
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onScanningStateChanged(Z)V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateBluetoothScanButton()V

    .line 754
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 225
    const v0, 0x7f0a0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->bluetoothScan:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->bluetoothScan:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/bluetooth/OthersConnectionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings$2;-><init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->updateBluetoothScanButton()V

    .line 235
    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mSwitcherBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DeviceNamePreference;->setEnabled(Z)V

    .line 187
    return-void
.end method

.method public readdSomeAlwaysPreference()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 383
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string v1, "bluetooth_switcher"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothSwitcher:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 386
    :cond_0
    const-string v1, "bluetooth_discoverable"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 389
    :cond_1
    const-string v1, "bluetooth_device_name"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mDeviceNamePreference:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 392
    :cond_2
    const-string v1, "bluetooth_show_recieved_file"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 393
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mBluetoothReceiver:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 395
    :cond_3
    const-string v1, "parent_control_connect_usb"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 398
    :cond_4
    const-string v1, "parent_control_transf_bluetooth"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 401
    :cond_5
    return-void
.end method

.method removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 6
    .param p1, "deviceListGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->readdSomeAlwaysPreference()V

    .line 406
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 407
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "removePreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_0
    if-le v0, v2, :cond_2

    .line 409
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 410
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    .line 411
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toggle_airplane"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 413
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bluetooth_switcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 414
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bluetooth_discoverable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bluetooth_device_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bluetooth_show_recieved_file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3
    goto :goto_1

    .line 419
    .restart local v3
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v3
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 423
    .restart local v3
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 424
    .end local v3
    goto :goto_2

    .line 425
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->readdSomeAlwaysPreference()V

    .line 431
    :cond_4
    return-void
.end method

.method removeAllDevices()V
    .locals 0

    .line 377
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->removeAllDevices()V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->readdSomeAlwaysPreference()V

    .line 379
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 1009
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 1011
    return v1

    .line 1013
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1015
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 1016
    return v1

    .line 1020
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1023
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1027
    .end local v0
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 1024
    :catch_1
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1026
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v0
    nop

    .line 1030
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateParentControlConnectUsbPreference()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 956
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_parent_control_connect_usb_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 957
    .local v0, "ustcontrol":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 958
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlConnectUsbPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 960
    .end local v0
    :cond_1
    return-void
.end method

.method public updateParentControlTransfBluetoothPreference()V
    .locals 4

    .line 986
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 988
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_parent_control_transf_bluetooth_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 989
    .local v0, "ustcontrol":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 990
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mParentControlTransfBluetoothPrefChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 992
    .end local v0
    :cond_1
    return-void
.end method
