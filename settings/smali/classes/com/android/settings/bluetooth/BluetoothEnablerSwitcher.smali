.class public final Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;
.super Ljava/lang/Object;
.source "BluetoothEnablerSwitcher.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBeanVariable:Lcom/android/settings/BeanVariable;

.field private mContext:Landroid/content/Context;

.field private mDiscoverableListener:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

.field private final mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference;Lcom/android/settings/BeanVariable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSwitchPref"    # Landroid/support/v14/preference/SwitchPreference;
    .param p3, "mSwitchDiscoverable"    # Landroid/support/v14/preference/SwitchPreference;
    .param p4, "beanVariable"    # Lcom/android/settings/BeanVariable;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 86
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mValidListener:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mDiscoverableListener:Z

    .line 89
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mBeanVariable:Lcom/android/settings/BeanVariable;

    .line 91
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 92
    .local v1, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_0

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 96
    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 97
    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 101
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setDiscoverableDisplay(Z)V

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    :cond_1
    return-void
.end method

.method private setDiscoverableDisplay(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f1202b8

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOn(I)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f1202cd

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOff(I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f1202a3

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOn(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOff(I)V

    .line 264
    :goto_0
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 208
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 209
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 149
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 179
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->updateSearchIndex(Z)V

    goto :goto_0

    .line 164
    :pswitch_0    # 0xd
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 166
    goto :goto_0

    .line 156
    :pswitch_1    # 0xc
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 160
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->updateSearchIndex(Z)V

    .line 161
    goto :goto_0

    .line 152
    :pswitch_2    # 0xb
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 154
    goto :goto_0

    .line 168
    :pswitch_3    # 0xa
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setChecked(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 172
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->updateSearchIndex(Z)V

    .line 173
    nop

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setDiscoverableDisplay(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 184
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3    # 0xa
        :pswitch_2    # 0xb
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 273
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 274
    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    const v3, 0x7f1210e0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 277
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 278
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setDiscoverableDisplay(Z)V

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    const/16 v3, 0x9f

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 283
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v2

    .line 288
    .local v2, "status":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 289
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setDiscoverableDisplay(Z)V

    .line 292
    return v3

    .line 295
    .end local v2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 297
    return v3
.end method

.method public pause()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mValidListener:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mDiscoverableListener:Z

    .line 146
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchDiscoverable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 117
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 121
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->handleStateChanged(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->setDiscoverableDisplay(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mValidListener:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;->mDiscoverableListener:Z

    .line 134
    return-void
.end method
