.class public Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private isHaveRightParentPassword:I

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mListContainer:Landroid/view/View;

.field private mNeedAuth:Z

.field private mScanAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalue"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 78
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 223
    const-string v0, "Devicepicker"

    const-string v1, "sendDevicePickedIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    .line 219
    const-string v0, "bt_device_list"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 204
    const-string v0, "DevicePickerFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 98
    const/16 v0, 0x19

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 209
    const v0, 0x7f15004d

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 84
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 86
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 87
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 88
    const-string v1, "bt_device_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 89
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 314
    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    .line 316
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee========AppInfoDashboardFragment=======resultCode====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_2

    if-eq p2, v3, :cond_2

    .line 319
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_2

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-ne v0, v4, :cond_a

    .line 321
    :cond_2
    if-eq p2, v1, :cond_4

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v4

    :goto_1
    iput v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 323
    const/4 v0, 0x0

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_6

    iget v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-ne v1, v4, :cond_5

    goto :goto_2

    .line 334
    :cond_5
    iput v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    goto :goto_7

    .line 325
    :cond_6
    :goto_2
    iget v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-ne v1, v4, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    move v1, p2

    :goto_3
    iput v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 327
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-eq v5, v3, :cond_9

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-eq v3, v2, :cond_9

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    if-ne v2, v4, :cond_8

    goto :goto_4

    :cond_8
    goto :goto_5

    :cond_9
    :goto_4
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :goto_6
    nop

    .line 339
    :cond_a
    :goto_7
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==========divhee================requestCode=========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .line 195
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 197
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12051f

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 106
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "rby_guide_force_exit_flag"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u8bf7\u5148\u5b8c\u6210\u5f00\u673a\u5411\u5bfc\uff01"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "db_parent_control_transf_bluetooth_switch"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v4, v2

    nop

    :cond_1
    move v1, v4

    .line 115
    .local v1, "mIsParentControlBluetoothTrasnfLable":Z
    const/16 v3, 0x271a

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v4, :cond_2

    .line 116
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->runCheckParentPassword(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 119
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    goto :goto_0

    .line 122
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    .end local v1
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "child":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 240
    .local v1, "list_container":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 241
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    .line 245
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01de

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 246
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerFragment$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    const v4, -0x7f000001

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v2, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mListContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v3

    .line 259
    .end local v2
    :cond_3
    :goto_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 181
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 182
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 188
    :cond_1
    const/16 v1, 0xa

    if-ne p2, v1, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 191
    :cond_2
    :goto_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 160
    nop

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onPerformClick()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 170
    :goto_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 143
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 144
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 6
    .param p1, "request"    # I

    .line 268
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    return v1

    .line 272
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-eqz v0, :cond_1

    .line 274
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 282
    .end local v0
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 280
    iput v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 281
    const-string v1, ""

    const-string v2, "===322=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0
    nop

    .line 286
    :goto_0
    return v3

    .line 288
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dream_launcher_mode_lable"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    return v1

    .line 297
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v2

    .line 305
    .end local v0
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 301
    :catch_3
    move-exception v0

    .line 302
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 303
    iput v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->isHaveRightParentPassword:I

    .line 304
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0
    nop

    .line 308
    :goto_1
    return v3
.end method
