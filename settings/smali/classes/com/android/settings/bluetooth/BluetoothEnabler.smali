.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field private mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mMetricsEvent:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private final mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchController"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p3, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p4, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p5, "metricsEvent"    # I
    .param p6, "restrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 78
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 81
    iput p5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    .line 83
    if-nez p4, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 86
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 90
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    iput-object p6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 92
    return-void
.end method

.method public static getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2
    .param p0, "mRestrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 236
    const-string v0, "no_bluetooth"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 238
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_0

    .line 239
    const-string v1, "no_config_bluetooth"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 170
    :cond_1
    return-void
.end method

.method private triggerParentPreferenceCallback(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 154
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    goto :goto_0

    .line 146
    :pswitch_0    # 0xd
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 147
    goto :goto_0

    .line 142
    :pswitch_1    # 0xc
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 143
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 144
    goto :goto_0

    .line 139
    :pswitch_2    # 0xb
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 140
    goto :goto_0

    .line 149
    :pswitch_3    # 0xa
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 151
    nop

    .line 156
    :goto_0
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

.method maybeEnforceRestrictions()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 226
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 227
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onSwitchToggled(Z)Z
    .locals 5
    .param p1, "isChecked"    # Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 176
    return v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 181
    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1210e0

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 186
    return v0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v2

    .line 196
    .local v2, "status":Z
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->updateTitle(Z)V

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 201
    return v0

    .line 204
    .end local v2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 206
    return v1
.end method

.method public pause()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 134
    :cond_1
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    .line 109
    .local v0, "restricted":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 111
    return-void

    .line 115
    :cond_1
    if-nez v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 123
    return-void
.end method

.method public setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 215
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 216
    return-void
.end method
