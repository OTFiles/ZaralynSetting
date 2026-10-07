.class public Lcom/android/settings/SettingsCleanCachedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsCleanCachedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;,
        Lcom/android/settings/SettingsCleanCachedReceiver$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTracker_WifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    .line 484
    new-instance v0, Lcom/android/settings/SettingsCleanCachedReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCleanCachedReceiver$1;-><init>(Lcom/android/settings/SettingsCleanCachedReceiver;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiTracker_WifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCleanCachedReceiver;

    .line 55
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsCleanCachedReceiver;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCleanCachedReceiver;

    .line 55
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static cleanAdbDebuggingKeys(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 338
    invoke-static {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 341
    .local v0, "mUsbManager":Landroid/hardware/usb/IUsbManager;
    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsCleanCachedReceiver"

    const-string v3, "2 Unable to clear adb keys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    .end local v1
    goto :goto_1

    .line 344
    .restart local v0
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SettingsCleanCachedReceiver"

    const-string v3, "1 Unable to clear adb keys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .end local v0
    .end local v1
    :cond_0
    :goto_0
    nop

    .line 351
    :cond_1
    :goto_1
    return-void
.end method

.method public static finalCleanCacheResetSettingsEvent(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 651
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_info_from_fwq_about_pad_settings"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "strFwqPadSettings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_1

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, "jsonArray1":Lorg/json/JSONArray;
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 657
    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 658
    :goto_0
    const/4 v2, 0x0

    .line 659
    .local v2, "jsonObject1":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 661
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v3

    .line 662
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 663
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 665
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 664
    :catch_1
    move-exception v3

    .line 667
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 668
    const/4 v3, 0x0

    .local v3, "inum":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v3, v4, :cond_1

    .line 670
    :try_start_4
    new-instance v4, Lcom/android/settings/rbypush/RPushReceiver;

    invoke-direct {v4}, Lcom/android/settings/rbypush/RPushReceiver;-><init>()V

    .line 671
    .local v4, "rPushReceiver":Lcom/android/settings/rbypush/RPushReceiver;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 672
    .local v5, "intent1":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {v4, p0, v5}, Lcom/android/settings/rbypush/RPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 676
    .end local v4
    .end local v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 674
    :catch_2
    move-exception v4

    .line 675
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "====divhee==============finalCleanCacheResetSomeOption=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 682
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    goto :goto_4

    .line 680
    :catch_3
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=000===divhee==============finalCleanCacheResetSomeOption=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0
    :goto_4
    return-void
.end method

.method public static firstTimeStartResetSomeEspFlags(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_drag_screen_order_callback_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "showEnableDragScreenOrder":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_switch_drag_screen_order_callback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_switch_customappbtn_password_callback_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 365
    .local v3, "showEnableCustomPwdOrder":I
    if-ne v3, v1, :cond_1

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "launcher_switch_customappbtn_password_callback"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    :cond_1
    return-void
.end method

.method public static isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 546
    :try_start_0
    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->updatePasswordDate()V

    .line 550
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 551
    const/4 v1, 0x1

    return v1

    .line 557
    .end local v0
    :cond_0
    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static readboyCleanAppDataByPackageName(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 154
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "mNeedCleanAppDataPkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "ReadboyCleanAppData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "apkNames":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "arrApkPaths":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 160
    const/4 v3, 0x0

    .local v3, "inum":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 161
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v2
    .end local v3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 168
    invoke-static {p0, v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanAppDataClear(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 171
    .end local v0
    .end local v1
    :cond_2
    return-void
.end method

.method public static readboyCleanAppDataClear(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "mNeedCleanAppDataPkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/settings/SettingsCleanCachedReceiver$ClearUserDataObserver;

    invoke-direct {v0}, Lcom/android/settings/SettingsCleanCachedReceiver$ClearUserDataObserver;-><init>()V

    .line 180
    .local v0, "mClearDataObserver":Lcom/android/settings/SettingsCleanCachedReceiver$ClearUserDataObserver;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 181
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 183
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v1, v3, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v4

    .line 186
    .local v4, "res":Z
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "====1==divhee========readboyCleanAppDataClear======="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 188
    :catch_0
    move-exception v3

    .line 181
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2
    :cond_1
    return-void
.end method

.method public static readboyCleanLauncherAppDataClear(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.launcher_c10_primary"

    const-string v2, "com.readboy.launcher_c10_parent"

    const-string v3, "com.readboy.launcher_c10"

    const-string v4, "com.readboy.launcher_c10_standard"

    const-string v5, "com.readboy.launcher_c10_student"

    const-string v6, "com.readboy.launcher_c10_children"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v0, "mNeedCleanAppDataPkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanAppDataClear(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 147
    return-void
.end method

.method public static readboyCleanLockScreenPassword(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 583
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    .line 586
    .local v1, "mUserId":I
    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyGetLockScreenPassword(Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "mUserPassword":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    .line 588
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 589
    return-void
.end method

.method public static readboyGetLockScreenPassword(Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/String;
    .locals 3
    .param p0, "mLockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 567
    const-string v0, ""

    .line 568
    .local v0, "mUserPassword":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_lockscreen_divhee_pwd"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 576
    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 579
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======divhee============action==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, "com.readboy.cleardata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p1, p2}, Lcom/android/settings/SettingsCleanCachedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyResetOtherSwitch(Landroid/content/Context;)V

    .line 81
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->finalCleanCacheResetSettingsEvent(Landroid/content/Context;)V

    .line 83
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanLockScreenPassword(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyStopFunctionWifi(Landroid/content/Context;)V

    .line 87
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanLauncherAppDataClear(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyForgotAllWifiHot(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyStartFunctionBluetooth(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->BluetoothUnpairAll()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyStopFunctionBluetooth(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "broadcast_com_readboy_cleardata_clean_over"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.settings"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanAppDataClear(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v1, "com.android.settings.recovery.CLEAN_LOCK_SCREEN_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {p1, p2}, Lcom/android/settings/SettingsCleanCachedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanLockScreenPassword(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "com.readboy.clear_wifi_ssid_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {p1, p2}, Lcom/android/settings/SettingsCleanCachedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "needCloseWifi"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 123
    .local v1, "needCloseWifi":Z
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyForgotAllWifiHotChild(Landroid/content/Context;Z)V

    .line 124
    .end local v1
    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "com.readboy.cleardata_test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    :goto_0
    return-void
.end method

.method public readboyForgotAllWifiHot(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyForgotAllWifiHotChild(Landroid/content/Context;Z)V

    .line 397
    return-void
.end method

.method public readboyForgotAllWifiHotChild(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needCloseWifi"    # Z

    .line 400
    const-string v0, ""

    const-string v1, "=====divhee=======readboyForgotAllWifiHot======001====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 402
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 405
    :cond_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 408
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    .end local v0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 413
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 416
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 414
    :catch_1
    move-exception v0

    .line 415
    .restart local v0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    goto :goto_2

    .line 418
    :catch_2
    move-exception v0

    .line 419
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    .end local v0
    :goto_2
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==001===divhee====readboyForgotAllWifiHot======isWifiEnabled===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_c

    .line 425
    const/4 v0, 0x3

    .line 426
    .local v0, "inumRetry":I
    :goto_4
    if-lez v0, :cond_c

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 428
    iget-object v1, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "==00111===divhee====readboyForgotAllWifiHot=========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_5

    :cond_3
    move v5, v3

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-nez v1, :cond_4

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 433
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 435
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 436
    .local v4, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 437
    iget-object v5, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v4
    :cond_7
    goto :goto_6

    .line 440
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 442
    .restart local v4
    if-eqz v4, :cond_a

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 443
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "==00331===divhee====readboyForgotAllWifiHot===mLastSSID====realforget==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v5, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v7, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;-><init>(Lcom/android/settings/SettingsCleanCachedReceiver;Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 449
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 446
    :catch_3
    move-exception v5

    .line 447
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==00551===divhee====readboyForgotAllWifiHot===mLastSSID====realforget==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_8
    const/4 v5, 0x4

    .line 453
    .local v5, "iDelayTimes":I
    :goto_9
    if-ltz v5, :cond_9

    :try_start_7
    iget-object v6, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mAllNeedForgetWifiConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 454
    add-int/lit8 v5, v5, -0x1

    .line 455
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    .line 457
    .end local v5
    :catch_4
    move-exception v5

    .line 458
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4
    .end local v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_a

    .line 459
    .restart local v4
    :cond_9
    nop

    .line 467
    .end local v4
    :cond_a
    :goto_a
    goto :goto_7

    .line 469
    .end local v1
    :cond_b
    goto/16 :goto_4

    .line 473
    .end local v0
    :cond_c
    goto :goto_b

    .line 471
    :catch_5
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    .end local v0
    :goto_b
    if-eqz p2, :cond_d

    :try_start_9
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 476
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_c

    .line 479
    :catch_6
    move-exception v0

    goto :goto_d

    .line 478
    :cond_d
    :goto_c
    const-string v0, ""

    const-string v1, "====divhee============readboyForgotAllWifiHot====over=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_e

    .line 479
    :goto_d
    nop

    .line 480
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v0
    :goto_e
    return-void
.end method

.method public readboyResetOtherSwitch(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .line 233
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "install_non_market_apps"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-static {v1, v4}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "readboy_device_boot_times"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_magic_screenshot"

    const/4 v5, -0x1

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 240
    .local v2, "iGestureScreenCapture":I
    if-ne v2, v3, :cond_0

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "enable_magic_screenshot"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "dsl_handy_cut_screen_switch_action"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "dsl_full_screen_mode_switch_action"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "Launch_version"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "pointer_location"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "first_time_start_factory_auto_retry_times"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "db_parent_control_connect_usb_switch"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "db_parent_control_transf_bluetooth_switch"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :try_start_0
    invoke-static {v1, v4}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 255
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 257
    :goto_0
    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 261
    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "rby_guide_force_exit_flag"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "rby_guide_force_exit_flag"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "rby_guide_force_exit_flag"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 268
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    goto :goto_2

    .line 267
    :catch_1
    move-exception v0

    .line 271
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "readboy_quick_printer_enable"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    const-string v0, "com.readboy.voiceassistant"

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v5, 0xb644281

    if-lt v0, v5, :cond_3

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "readboy_ai_assist_wakeup_switch_enable"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "Readboy_G500X"

    const-string v7, "Readboy_C12"

    const-string v8, "Readboy_V100"

    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    .line 277
    .local v5, "deviceModuleName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "readboy_ar_mirror_switch_enable"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "launcher_anim_switch_boy_callback_enable"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 281
    .local v7, "showEnableBoy":I
    if-ne v7, v3, :cond_5

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "launcher_anim_switch_boy_callback"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "launcher_anim_switch_xuexizhinan_callback_enable"

    invoke-static {v0, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 285
    .local v8, "showEnableXuexizhinan":I
    if-ne v8, v3, :cond_6

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "launcher_anim_switch_xuexizhinan_callback"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "launcher_switch_drag_screen_order_callback_enable"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 289
    .local v9, "showEnableDragScreenOrder":I
    if-ne v9, v3, :cond_7

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "launcher_switch_drag_screen_order_callback"

    invoke-static {v0, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "launcher_switch_customappbtn_password_callback_enable"

    invoke-static {v0, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 293
    .local v10, "showEnableCustomPwdOrder":I
    if-ne v10, v3, :cond_8

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "launcher_switch_customappbtn_password_callback"

    invoke-static {v0, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_8
    move-object v11, v6

    .line 299
    .local v11, "mRbciManager":Ljava/lang/Object;
    :try_start_2
    const-string v0, "rbci"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v0

    .line 303
    :goto_3
    goto :goto_4

    .line 302
    :catch_2
    move-exception v0

    goto :goto_4

    .line 301
    :catch_3
    move-exception v0

    goto :goto_3

    .line 300
    :catch_4
    move-exception v0

    goto :goto_3

    .line 304
    :goto_4
    const/4 v0, 0x0

    .line 305
    .local v0, "result_str":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 307
    const-string v12, "RbciGetInfoByName"

    const-class v13, Ljava/lang/String;

    const-string v14, "TP_glass_mode"

    invoke-static {v11, v12, v6, v13, v14}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    .line 309
    .end local v0
    .local v6, "result_str":Ljava/lang/String;
    :cond_9
    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 311
    if-eqz v11, :cond_a

    .line 312
    :try_start_3
    const-string v13, "RbciSetBooleanByName"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-class v15, Ljava/lang/String;

    const-string v16, "TP_glass_mode"

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v12, v11

    invoke-static/range {v12 .. v18}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    .line 314
    :catch_5
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_6

    .line 316
    :cond_a
    :goto_5
    nop

    .line 318
    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 321
    :try_start_4
    const-string v0, "1"

    invoke-static {v0}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 322
    invoke-static {v1, v3}, Lcom/android/settings/TouchModeSettings;->writeProviders_rbci(Landroid/content/Context;I)V

    .line 324
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    .line 323
    :catch_6
    move-exception v0

    .line 331
    :cond_c
    :goto_7
    return-void
.end method

.method public readboyStartFunctionBluetooth(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 626
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 627
    .local v0, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    .line 629
    .local v1, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    .line 631
    .local v2, "state":I
    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 632
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 634
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 637
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v3

    .line 636
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    :goto_0
    return-void
.end method

.method public readboyStopFunctionBluetooth(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 613
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 614
    .local v0, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    .line 616
    .local v1, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    .line 618
    .local v2, "state":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 619
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 623
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method

.method public readboyStopFunctionWifi(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 594
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 595
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 601
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 607
    .local v1, "state":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_3

    .line 608
    iget-object v3, p0, Lcom/android/settings/SettingsCleanCachedReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 610
    :cond_3
    return-void
.end method
