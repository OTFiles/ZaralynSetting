.class public Lcom/android/settings/AirplaneModeEnablerOld;
.super Ljava/lang/Object;
.source "AirplaneModeEnablerOld.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitchPreference"    # Landroid/support/v14/preference/SwitchPreference;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerOld$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnablerOld$1;-><init>(Lcom/android/settings/AirplaneModeEnablerOld;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerOld$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnablerOld$2;-><init>(Lcom/android/settings/AirplaneModeEnablerOld;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 66
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 71
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 72
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnablerOld;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeEnablerOld;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnablerOld;->onAirplaneModeChanged()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 115
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 3
    .param p1, "enabling"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 95
    nop

    .line 94
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 121
    const-string v0, "ril.cdma.inecmmode"

    .line 122
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 126
    .local v0, "value":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerOld;->mContext:Landroid/content/Context;

    const/16 v2, 0xb1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/AirplaneModeEnablerOld;->setAirplaneModeOn(Z)V

    .line 129
    .end local v0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
