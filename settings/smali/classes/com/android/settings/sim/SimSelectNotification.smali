.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    const-string v0, "notification"

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 171
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "sim_select_notification_channel"

    .line 148
    const v3, 0x7f120d38

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    .local v1, "notificationChannel":Landroid/app/NotificationChannel;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "sim_select_notification_channel"

    invoke-direct {v2, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    const v3, 0x7f080206

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 154
    const v3, 0x7f060140

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 155
    const v3, 0x7f120d2b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 156
    const v3, 0x7f120d2a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 157
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v3, "resultIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 161
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    const-string v5, "notification"

    .line 163
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 164
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 165
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    const-string v0, "phone"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 56
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 57
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 59
    .local v2, "numSlots":I
    const-string v3, "persist.vendor.radio.aosp_usr_pref_sel"

    .line 60
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    .line 61
    .local v3, "skipUserSelection":Z
    const-string v6, "extphone"

    .line 62
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v6

    .line 64
    .local v6, "extTelephony":Lorg/codeaurora/internal/IExtTelephony;
    if-eqz v6, :cond_0

    :try_start_0
    const-string v7, "com.qualcomm.qti.simsettings"

    .line 65
    invoke-interface {v6, v7}, Lorg/codeaurora/internal/IExtTelephony;->isVendorApkAvailable(Ljava/lang/String;)Z

    move-result v7

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    .line 66
    const/4 v3, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v7

    .line 69
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .end local v7
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    nop

    .line 74
    :goto_1
    const/4 v7, 0x2

    if-lt v2, v7, :cond_a

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 81
    :cond_1
    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 84
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "simStatus":Ljava/lang/String;
    const-string v8, "ABSENT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "LOADED"

    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 87
    const-string v4, "SimSelectNotification"

    const-string v5, "sim state is not Absent or Loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_2
    const-string v8, "SimSelectNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simstatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move v8, v4

    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_4

    .line 95
    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    .line 96
    .local v9, "state":I
    if-eq v9, v5, :cond_3

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    if-eqz v9, :cond_3

    .line 99
    const-string v4, "SimSelectNotification"

    const-string v5, "All sims not in valid state yet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 94
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 104
    .end local v8
    .end local v9
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    .line 105
    .local v8, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v5, :cond_5

    goto :goto_4

    .line 111
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 114
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v9

    .line 113
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v9

    .line 116
    .local v9, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v10

    .line 115
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v10

    .line 119
    .local v10, "smsSelected":Z
    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 120
    const-string v4, "SimSelectNotification"

    const-string v5, "Data & SMS default sims are selected. No notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 125
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSelectNotification;->createNotification(Landroid/content/Context;)V

    .line 127
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/high16 v12, 0x10000000

    if-ne v11, v5, :cond_7

    .line 129
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v5, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v5, "newIntent":Landroid/content/Intent;
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    sget-object v11, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    sget-object v11, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v5
    goto :goto_3

    :cond_7
    if-nez v9, :cond_8

    .line 136
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v5, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v5
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    sget-object v11, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    .end local v5
    :cond_8
    :goto_3
    return-void

    .line 106
    .end local v9
    .end local v10
    :cond_9
    :goto_4
    const-string v4, "SimSelectNotification"

    const-string v5, "Subscription list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 75
    .end local v7
    .end local v8
    :cond_a
    :goto_5
    const-string v4, "SimSelectNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " no of slots "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " provision = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
