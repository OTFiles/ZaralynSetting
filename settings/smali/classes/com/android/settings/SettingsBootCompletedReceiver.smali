.class public Lcom/android/settings/SettingsBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBootCompletedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;,
        Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;,
        Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;,
        Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ShowHideUpdater;
    }
.end annotation


# static fields
.field public static final mReadboyInnerAppParentModeShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field LogTaskHandler:Landroid/os/Handler;

.field handlerLogThread:Landroid/os/HandlerThread;

.field public mCurrentReceiverTimeId:J

.field mNeedNotDisabledApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

.field private mReinstallApkPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onSendEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "cn.dream.android.appstore"

    const-string v2, "com.android.gallery3d"

    const-string v3, "org.codeaurora.snapcam"

    const-string v4, "com.readboy.rbWeather"

    const-string v5, "com.readboy.fileexplore"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReadboyInnerAppParentModeShow:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    .line 83
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    .line 105
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mCurrentReceiverTimeId:J

    .line 767
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.settings"

    const-string v3, "com.readboy.parentmanager"

    const-string v4, "com.readboy.personalsetting"

    const-string v5, "com.readboy.arcface"

    const-string v6, "com.qapp.secprotect"

    const-string v7, "com.readboy.android.push"

    const-string v8, "com.readboy.launcher_c10_primary"

    const-string v9, "com.readboy.launcher_c10_parent"

    const-string v10, "com.readboy.launcher_c10"

    const-string v11, "com.readboy.launcher_c10_standard"

    const-string v12, "com.readboy.launcher_c10_student"

    const-string v13, "com.readboy.launcher_c10_children"

    const-string v14, "com.dream.ota.update"

    const-string v15, "com.readboy.handwritingpen"

    const-string v16, "com.readboy.adblock"

    const-string v17, "com.readboy.killapp"

    const-string v18, "com.android.packageinstaller"

    const-string v19, "com.android.defcontainer"

    const-string v20, "com.android.backup"

    const-string v21, "com.qualcomm.qti.poweroffalarm"

    const-string v22, "com.baidu.map.location"

    const-string v23, "com.dream.forcerest"

    const-string v24, "com.android.dialer"

    const-string v25, "com.android.mms"

    const-string v26, "cn.dream.qaccount"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    .line 988
    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$2;

    invoke-direct {v1, v0}, Lcom/android/settings/SettingsBootCompletedReceiver$2;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    .line 1903
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    .line 1904
    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    .line 2015
    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$5;

    invoke-direct {v1, v0}, Lcom/android/settings/SettingsBootCompletedReceiver$5;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->onSendEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    return-void
.end method

.method public static ReadDataFromSystemProviderBySettings(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1676
    const/4 v0, 0x0

    .line 1678
    .local v0, "retBundle":Landroid/os/Bundle;
    if-eqz p0, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 1681
    :cond_0
    :try_start_0
    const-string v1, "table_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "key_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "key_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1682
    const-string v1, "table_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, "tableName":Ljava/lang/String;
    const-string v2, "key_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, "keyName":Ljava/lang/String;
    if-eqz v1, :cond_13

    if-eqz v2, :cond_13

    .line 1685
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 1686
    const/4 v3, 0x0

    .line 1687
    .local v3, "keyType":Ljava/lang/String;
    const-string v4, "key_Type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1688
    const-string v4, "key_Type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1690
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1691
    const-string v4, "String"

    move-object v3, v4

    .line 1693
    :cond_2
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==divhee===========keyName=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==key_value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "key_value"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v4, "int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1695
    const/4 v4, 0x0

    .line 1696
    .local v4, "ret":I
    const-string v5, "Global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 1697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 1698
    :cond_3
    const-string v5, "System"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1699
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 1700
    :cond_4
    const-string v5, "Secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 1703
    :cond_5
    :goto_0
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1704
    .end local v4
    goto/16 :goto_5

    :cond_6
    const-string v4, "float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1705
    const/4 v4, 0x0

    .line 1706
    .local v4, "ret":F
    const-string v5, "Global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 1707
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    move v4, v5

    goto :goto_1

    .line 1708
    :cond_7
    const-string v5, "System"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1709
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    move v4, v5

    goto :goto_1

    .line 1710
    :cond_8
    const-string v5, "Secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1711
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "key_value"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    move v4, v5

    .line 1713
    :cond_9
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1714
    .end local v4
    goto/16 :goto_5

    :cond_a
    const-string v4, "long"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1715
    const-wide/16 v4, 0x0

    .line 1716
    .local v4, "ret":J
    const-string v6, "Global"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_b

    .line 1717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "key_value"

    invoke-virtual {p1, v9, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v6, v2, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v4, v6

    goto :goto_2

    .line 1718
    :cond_b
    const-string v6, "System"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "key_value"

    invoke-virtual {p1, v9, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v6, v2, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v4, v6

    goto :goto_2

    .line 1720
    :cond_c
    const-string v6, "Secure"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "key_value"

    invoke-virtual {p1, v9, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v6, v2, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 1723
    :cond_d
    :goto_2
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1724
    .end local v4
    goto :goto_5

    .line 1725
    :cond_e
    const/4 v4, 0x0

    .line 1726
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "Global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1727
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    .line 1728
    :cond_f
    const-string v5, "System"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1729
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    .line 1730
    :cond_10
    const-string v5, "Secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1733
    :cond_11
    :goto_3
    if-nez v4, :cond_12

    const-string v5, "key_value"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_12
    move-object v5, v4

    :goto_4
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_13
    :goto_5
    goto :goto_6

    .line 1737
    :catch_0
    move-exception v1

    .line 1738
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1740
    .end local v1
    :goto_6
    return-object v0

    .line 1679
    :cond_14
    :goto_7
    return-object v0
.end method

.method public static RecordDataToSystemProviderBySettings(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1611
    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1614
    :cond_0
    :try_start_0
    const-string v0, "table_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "key_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "key_value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1615
    const-string v0, "table_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "key_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "keyName":Ljava/lang/String;
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 1618
    const/4 v2, 0x0

    .line 1619
    .local v2, "keyType":Ljava/lang/String;
    const-string v3, "key_Type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1620
    const-string v3, "key_Type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1622
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    const-string v3, "String"

    move-object v2, v3

    .line 1625
    :cond_2
    const-string v3, "export_standard_launcher_mode_lable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "com.readboy.launcher_c10_standard"

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1627
    return-void

    .line 1629
    :cond_3
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "==divhee===========keyName=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "==key_value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "key_value"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1631
    const-string v3, "Global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1633
    :cond_4
    const-string v3, "System"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1635
    :cond_5
    const-string v3, "Secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1638
    :cond_6
    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1639
    const-string v3, "Global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 1640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 1641
    :cond_7
    const-string v3, "System"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1642
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 1643
    :cond_8
    const-string v3, "Secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_value"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 1646
    :cond_9
    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1647
    const-string v3, "Global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_a

    .line 1648
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "key_value"

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 1649
    :cond_a
    const-string v3, "System"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "key_value"

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 1651
    :cond_b
    const-string v3, "Secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1652
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "key_value"

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 1655
    :cond_c
    const-string v3, "Global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1656
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_value"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1657
    :cond_d
    const-string v3, "System"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_value"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1659
    :cond_e
    const-string v3, "Secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_value"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1667
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_0
    goto :goto_1

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1668
    .end local v0
    :goto_1
    return-void

    .line 1612
    :cond_10
    :goto_2
    return-void
.end method

.method public static exchangeParentModeLauncherStatus(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 1061
    invoke-static {p0}, Lcom/android/settings/SettingsBootCompletedReceiver;->resetLauncherParentModeAppsStatusIgnoreSomeApp(Landroid/content/Context;)V

    .line 1063
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1064
    .local v0, "isNowParentLauncher":I
    const-string v1, "1"

    invoke-static {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1065
    .local v1, "parentAppList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1067
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    move v5, v2

    .local v5, "inum":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1068
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1069
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "main_launcher_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1070
    .local v7, "className":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1071
    invoke-static {v4, v6, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1072
    invoke-static {p0, v6}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "main_launcher_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1075
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1076
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1077
    .local v8, "classNameSons":[Ljava/lang/String;
    move v9, v2

    .local v9, "iadd":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_2

    .line 1078
    new-instance v10, Landroid/content/ComponentName;

    aget-object v11, v8, v9

    invoke-direct {v10, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .local v10, "componentName":Landroid/content/ComponentName;
    if-ne v0, v3, :cond_1

    move v11, v3

    goto :goto_2

    :cond_1
    move v11, v2

    :goto_2
    invoke-static {v4, v10, v11}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1077
    .end local v10
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1067
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1085
    .end local v4
    .end local v5
    :cond_3
    if-ne v0, v3, :cond_8

    .line 1086
    const-string v4, "404,1"

    invoke-static {p0, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1088
    .local v4, "parentAppList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ne v0, v3, :cond_4

    .line 1089
    sget-object v5, Lcom/android/settings/SettingsBootCompletedReceiver;->mReadboyInnerAppParentModeShow:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1092
    :cond_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1094
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    move v6, v2

    .local v6, "inum":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1095
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1096
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "main_launcher_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1097
    .local v8, "className":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 1098
    invoke-static {v5, v7, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1099
    invoke-static {p0, v7}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "main_launcher_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1102
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1103
    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1104
    .local v9, "classNameSons":[Ljava/lang/String;
    move v10, v2

    .local v10, "iadd":I
    :goto_4
    array-length v11, v9

    if-ge v10, v11, :cond_7

    .line 1105
    new-instance v11, Landroid/content/ComponentName;

    aget-object v12, v9, v10

    invoke-direct {v11, v7, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .local v11, "componentName":Landroid/content/ComponentName;
    if-ne v0, v3, :cond_6

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v2

    :goto_5
    invoke-static {v5, v11, v12}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1104
    .end local v11
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1094
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1113
    .end local v4
    .end local v5
    .end local v6
    :cond_8
    return-void
.end method

.method public static isC25LCDFreqRightValue(I)Z
    .locals 1
    .param p0, "lcdFreq"    # I

    .line 2095
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 2096
    const/4 v0, 0x1

    return v0

    .line 2098
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCheckedAppServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkPkgName"    # Ljava/lang/String;

    .line 579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 581
    .local v0, "actM":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 583
    .local v3, "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 584
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    const/4 v2, 0x1

    return v2

    .line 587
    .end local v3
    .end local v4
    :cond_0
    goto :goto_0

    .line 589
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1785
    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1788
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->updatePasswordDate()V

    .line 1789
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    const/4 v1, 0x1

    return v1

    .line 1794
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLauncherParentModeNotShowApp(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "bHaveComAndroid"    # Z

    .line 1008
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1009
    const-string v0, "com.readboy."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "com.dream."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cn.dream."

    .line 1010
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.adobe.air"

    .line 1011
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.netcom.testdram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    return v1

    .line 1017
    :cond_1
    sget-object v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReadboyInnerAppParentModeShow:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    return v1

    .line 1012
    :cond_2
    :goto_0
    return v1

    .line 1021
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static readLcdInfoFilter(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 2035
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2036
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Readboy_C25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "read_dsi_mipi_rw"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2038
    .local v1, "mReadLcdValue":I
    invoke-static {v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->isC25LCDFreqRightValue(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2040
    const/4 v2, 0x0

    .line 2042
    .local v2, "mRbciManager":Ljava/lang/Object;
    :try_start_0
    const-string v4, "rbci"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 2046
    :goto_0
    goto :goto_1

    .line 2045
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2044
    :catch_1
    move-exception v4

    goto :goto_0

    .line 2043
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2048
    :goto_1
    nop

    .line 2050
    .local v3, "result_val":I
    if-eqz v2, :cond_0

    .line 2052
    :try_start_1
    const-string v4, "RbciGetIntByName"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    const-string v7, "dsi_mipi_rw"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 2053
    invoke-static {v3}, Lcom/android/settings/SettingsBootCompletedReceiver;->isC25LCDFreqRightValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2054
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "read_dsi_mipi_rw"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 2057
    :catch_3
    move-exception v4

    .line 2058
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4
    goto :goto_3

    .line 2059
    :cond_0
    :goto_2
    nop

    .line 2060
    :goto_3
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=3====divhee=========read_LcdInfoFilter===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-static {v3}, Lcom/android/settings/SettingsBootCompletedReceiver;->isC25LCDFreqRightValue(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2062
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "read_dsi_mipi_rw"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2066
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    return-void
.end method

.method public static readboyHelpDwsqSendPkgToParent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 404
    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "mNeedCleanAppDataPkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SendPkgToParent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "apkNames":Ljava/lang/String;
    const-string v2, "PadInnerName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "dwspPad":Ljava/lang/String;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=dwspPad====divhee========readboy_HelpDwsqSendPkgToParent===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-static {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "arrApkPaths":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 412
    nop

    .local v4, "inum":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 413
    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 415
    aget-object v5, v3, v4

    invoke-static {v5, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 412
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .end local v3
    .end local v4
    :cond_1
    goto :goto_3

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 420
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "Y41_D20"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    .local v3, "innerPadInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "ro.readboy.internal.model"

    const-string v6, "unknow"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "padInfo":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 424
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 425
    .local v7, "innerpad":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 426
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, "arrApkPaths":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v9, v8

    if-lez v9, :cond_4

    .line 428
    move v9, v4

    .local v9, "inum":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_4

    .line 429
    aget-object v10, v8, v9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 431
    aget-object v10, v8, v9

    invoke-static {v10, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 428
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 436
    .end local v7
    .end local v8
    .end local v9
    :cond_4
    goto :goto_1

    .line 440
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :cond_5
    :goto_3
    return-void
.end method

.method public static recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceShowHide"    # I

    move-object/from16 v1, p0

    .line 1119
    const/4 v2, 0x1

    const/16 v0, 0x2712

    invoke-static {v0, v2}, Lcom/android/settings/database/StacksDatabase;->queryAllLauStatus(II)[Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1120
    .local v3, "arrLauStatus":[Lcom/android/settings/database/LauncherStatus;
    if-eqz v3, :cond_e

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1122
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dream_launcher_mode_lable"

    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1123
    .local v5, "isNowParentLauncher":I
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1124
    .local v7, "parentAppList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ne v5, v2, :cond_0

    const-string v0, "404,1"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1126
    .local v8, "parentAppList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ne v5, v2, :cond_1

    .line 1127
    sget-object v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReadboyInnerAppParentModeShow:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1129
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    .local v0, "inum":I
    :goto_1
    move v10, v0

    .end local v0
    .local v10, "inum":I
    array-length v0, v3

    if-ge v10, v0, :cond_e

    .line 1130
    aget-object v11, v3, v10

    .line 1131
    .local v11, "lauStatus":Lcom/android/settings/database/LauncherStatus;
    iget-object v12, v11, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 1132
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "main_launcher_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1134
    invoke-static {v4, v12, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1135
    invoke-static {v1, v12}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "main_launcher_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1138
    .end local v0
    .local v13, "className":Ljava/lang/String;
    :cond_2
    move-object v13, v0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1139
    const-string v0, "@"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1140
    .local v14, "classNameSons":[Ljava/lang/String;
    move v0, v9

    .local v0, "iadd":I
    :goto_2
    move v15, v0

    .end local v0
    .local v15, "iadd":I
    array-length v0, v14

    if-ge v15, v0, :cond_d

    .line 1141
    new-instance v0, Landroid/content/ComponentName;

    aget-object v2, v14, v15

    invoke-direct {v0, v12, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 1142
    .local v2, "componentName":Landroid/content/ComponentName;
    move/from16 v17, v9

    .line 1144
    .local v17, "nowStatus":I
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v6, :cond_3

    move v0, v9

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    move/from16 v17, v0

    .line 1146
    goto :goto_4

    .line 1145
    :catch_0
    move-exception v0

    .line 1147
    move/from16 v0, v17

    .end local v17
    .local v0, "nowStatus":I
    :goto_4
    move/from16 v6, p1

    const/4 v9, 0x1

    if-eq v6, v9, :cond_c

    .line 1149
    if-eqz v7, :cond_5

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1151
    if-ne v5, v9, :cond_4

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    invoke-static {v4, v2, v9}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1140
    .end local v0
    .end local v2
    .end local v3
    .end local v5
    .local v18, "arrLauStatus":[Lcom/android/settings/database/LauncherStatus;
    .local v20, "isNowParentLauncher":I
    :goto_6
    move-object/from16 v18, v3

    :goto_7
    move/from16 v20, v5

    const/4 v5, 0x1

    goto :goto_b

    .line 1152
    .end local v18
    .end local v20
    .restart local v0
    .restart local v2
    .restart local v3
    .restart local v5
    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1154
    if-ne v5, v9, :cond_6

    const/4 v9, 0x1

    goto :goto_8

    :cond_6
    const/4 v9, 0x0

    :goto_8
    invoke-static {v4, v2, v9}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    goto :goto_6

    .line 1157
    :cond_7
    iget v9, v11, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    if-eq v0, v9, :cond_b

    iget v9, v11, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    if-eqz v9, :cond_9

    iget v9, v11, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-ne v9, v3, :cond_8

    .end local v3
    .restart local v18
    goto :goto_9

    .line 1140
    .end local v0
    .end local v2
    :cond_8
    move/from16 v20, v5

    move v5, v3

    goto :goto_b

    .line 1158
    .end local v18
    .restart local v0
    .restart local v2
    .restart local v3
    :cond_9
    move-object/from16 v18, v3

    const/4 v3, 0x1

    .end local v3
    .restart local v18
    :goto_9
    iget v9, v11, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    if-ne v9, v3, :cond_a

    const/4 v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    invoke-static {v4, v2, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    goto :goto_7

    .line 1140
    .end local v0
    .end local v2
    .end local v18
    .restart local v3
    :cond_b
    move-object/from16 v18, v3

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v3
    .restart local v18
    goto :goto_b

    .line 1163
    .end local v18
    .restart local v0
    .restart local v2
    .restart local v3
    :cond_c
    move-object/from16 v18, v3

    .end local v3
    .restart local v18
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move/from16 v19, v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .end local v0
    .local v19, "nowStatus":I
    move/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v9, v0, v5}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v0

    .line 1164
    .end local v5
    .local v0, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    .restart local v20
    invoke-static {v0}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1165
    invoke-static {v4, v2, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1140
    .end local v0
    .end local v2
    .end local v19
    :goto_b
    add-int/lit8 v0, v15, 0x1

    .end local v15
    .local v0, "iadd":I
    move v2, v5

    move-object/from16 v3, v18

    move/from16 v5, v20

    const/4 v6, 0x2

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1129
    .end local v0
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v18
    .end local v20
    .restart local v3
    .restart local v5
    :cond_d
    move/from16 v6, p1

    move-object/from16 v18, v3

    move/from16 v20, v5

    move v5, v2

    .end local v3
    .end local v5
    .restart local v18
    .restart local v20
    add-int/lit8 v0, v10, 0x1

    .end local v10
    .local v0, "inum":I
    move v2, v5

    move-object/from16 v3, v18

    move/from16 v5, v20

    const/4 v6, 0x2

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1172
    .end local v0
    .end local v4
    .end local v7
    .end local v8
    .end local v18
    .end local v20
    .restart local v3
    :cond_e
    move/from16 v6, p1

    move-object/from16 v18, v3

    .end local v3
    .restart local v18
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SettingsBootCompletedReceiver;->removeRecentTaskForHiddedApp(Landroid/content/Context;)V

    .line 1174
    return-void
.end method

.method public static recheckoutOneAppLauncherStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1278
    move-object/from16 v2, p1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/database/StacksDatabase;->queryLauStatus(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v4

    .line 1279
    .local v4, "lauStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1280
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "main_launcher_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1282
    invoke-static {v5, v2, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1283
    invoke-static/range {p0 .. p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "main_launcher_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1286
    .end local v0
    .local v6, "className":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1287
    const-string v0, "@"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1288
    .local v8, "classNameSons":[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "dream_launcher_mode_lable"

    const/4 v10, 0x2

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1289
    .local v9, "isNowParentLauncher":I
    move v0, v7

    .local v0, "iadd":I
    :goto_0
    move v11, v0

    .end local v0
    .local v11, "iadd":I
    array-length v0, v8

    if-ge v11, v0, :cond_c

    .line 1290
    new-instance v0, Landroid/content/ComponentName;

    aget-object v12, v8, v11

    invoke-direct {v0, v2, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    .line 1291
    .local v12, "componentName":Landroid/content/ComponentName;
    move v13, v7

    .line 1293
    .local v13, "nowStatus":I
    :try_start_0
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v10, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move v13, v0

    .line 1295
    goto :goto_2

    .line 1294
    :catch_0
    move-exception v0

    .line 1296
    :goto_2
    const-string v0, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "=1=======divhee==========recheckoutOneAppLauncherStatus==="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1298
    .local v0, "parentAppListOnly1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "404"

    invoke-static {v1, v14}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1299
    .local v14, "parentAppListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move v15, v3

    goto :goto_3

    :cond_2
    move v15, v7

    .line 1300
    .local v15, "showEnableOnly1":Z
    :goto_3
    if-eqz v14, :cond_3

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move/from16 v16, v3

    goto :goto_4

    :cond_3
    move/from16 v16, v7

    .line 1301
    .local v16, "showEnableAll":Z
    :goto_4
    if-eqz v16, :cond_6

    if-eq v9, v3, :cond_4

    if-eqz v15, :cond_6

    .line 1302
    :cond_4
    const-string v7, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=2=======divhee==========recheckoutOneAppLauncherStatus==="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v3, 0x1

    if-ne v9, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-static {v5, v12, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    goto :goto_8

    .line 1305
    :cond_6
    if-eqz v4, :cond_b

    .line 1306
    const-string v3, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "=3=======divhee==========recheckoutOneAppLauncherStatus==="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget v3, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    if-eq v13, v3, :cond_a

    iget v3, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    if-eqz v3, :cond_8

    iget v3, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_7

    goto :goto_6

    .line 1289
    .end local v0
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    :cond_7
    move v1, v7

    goto :goto_9

    .line 1309
    .restart local v0
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v16
    :cond_8
    :goto_6
    const-string v3, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=4=======divhee==========recheckoutOneAppLauncherStatus==="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget v3, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    invoke-static {v5, v12, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1289
    .end local v0
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    :cond_a
    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    .line 1313
    .restart local v0
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v16
    :cond_b
    const-string v3, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=5=======divhee==========recheckoutOneAppLauncherStatus==="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x1

    invoke-virtual {v3, v7, v10, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1316
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1317
    invoke-static {v5, v12, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 1289
    .end local v0
    .end local v3
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    :goto_9
    add-int/lit8 v0, v11, 0x1

    .end local v11
    .local v0, "iadd":I
    move v3, v1

    move-object/from16 v1, p0

    const/4 v7, 0x0

    const/4 v10, 0x2

    goto/16 :goto_0

    .line 1321
    .end local v0
    .end local v8
    .end local v9
    :cond_c
    return-void
.end method

.method public static removeRecentTaskForHiddedApp(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .line 1181
    move-object/from16 v1, p0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v2, v0

    .line 1182
    .local v2, "actM":Landroid/app/ActivityManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    .line 1183
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0xa

    .line 1184
    .local v4, "minNumTasksToQuery":I
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v0

    .line 1185
    .local v5, "numTasksToQuery":I
    const/4 v6, 0x2

    .line 1186
    .local v6, "flags":I
    invoke-virtual {v2, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 1187
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v8, 0x0

    move v0, v8

    .local v0, "inum":I
    :goto_0
    move v9, v0

    .end local v0
    .local v9, "inum":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_e

    .line 1188
    const/4 v10, 0x0

    .line 1189
    .local v10, "taskPkgName":Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v11, v0

    .line 1191
    .local v11, "recentTsk":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    .line 1196
    :cond_0
    goto :goto_1

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=======divhee===error==1=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_1
    :try_start_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v10, v0

    .line 1203
    :cond_1
    goto :goto_2

    .line 1201
    :catch_1
    move-exception v0

    .line 1202
    .restart local v0
    :try_start_4
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=======divhee===error==2=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_2
    :try_start_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 1206
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v10, v0

    .line 1210
    :cond_2
    goto :goto_3

    .line 1208
    :catch_2
    move-exception v0

    .line 1209
    .restart local v0
    :try_start_6
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=======divhee===error==3=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .end local v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_3
    :try_start_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v10, v0

    .line 1217
    :cond_3
    goto :goto_4

    .line 1215
    :catch_3
    move-exception v0

    .line 1216
    .restart local v0
    :try_start_8
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=======divhee===error==4=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :goto_4
    :try_start_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1220
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1221
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1222
    :cond_4
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1223
    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 1228
    .end local v10
    .local v0, "taskPkgName":Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_5
    move-object v10, v0

    .end local v0
    .restart local v10
    :cond_5
    goto :goto_6

    .line 1226
    :catch_4
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=======divhee===error==5=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .end local v0
    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1230
    const/4 v12, 0x0

    .line 1234
    .local v12, "isNeedRemoveAppFromRecent":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "main_launcher_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1236
    invoke-static {v1, v10}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto :goto_7

    .line 1238
    :cond_6
    move-object v13, v0

    .end local v0
    .local v13, "className":Ljava/lang/String;
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1239
    const-string v0, "@"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1240
    .local v14, "classNameSons":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1241
    .local v0, "hiddedNumber":I
    move v15, v0

    move v0, v8

    .local v0, "iadd":I
    .local v15, "hiddedNumber":I
    :goto_8
    move/from16 v16, v0

    .end local v0
    .local v16, "iadd":I
    array-length v0, v14

    move/from16 v8, v16

    if-ge v8, v0, :cond_9

    .line 1243
    .end local v16
    .local v8, "iadd":I
    new-instance v0, Landroid/content/ComponentName;

    aget-object v1, v14, v8

    invoke-direct {v0, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object v1, v0

    .line 1244
    .local v1, "componentName":Landroid/content/ComponentName;
    const/16 v16, 0x0

    move/from16 v17, v16

    .line 1246
    .local v17, "nowStatus":I
    :try_start_b
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v18, v1

    const/4 v1, 0x2

    .end local v1
    .local v18, "componentName":Landroid/content/ComponentName;
    if-ne v0, v1, :cond_7

    move/from16 v0, v16

    goto :goto_9

    :cond_7
    const/4 v0, 0x1

    .line 1247
    .end local v17
    .local v0, "nowStatus":I
    :goto_9
    if-nez v0, :cond_8

    .line 1248
    add-int/lit8 v15, v15, 0x1

    .line 1251
    :cond_8
    goto :goto_a

    .line 1250
    .end local v0
    .end local v18
    .restart local v1
    .restart local v17
    :catch_5
    move-exception v0

    move-object/from16 v18, v1

    .line 1241
    .end local v1
    .end local v17
    :goto_a
    add-int/lit8 v0, v8, 0x1

    .end local v8
    .local v0, "iadd":I
    move/from16 v8, v16

    move-object/from16 v1, p0

    goto :goto_8

    .line 1253
    .end local v0
    :cond_9
    const/16 v16, 0x0

    :try_start_c
    array-length v0, v14

    if-ne v15, v0, :cond_b

    .line 1254
    const/4 v12, 0x1

    .end local v14
    .end local v15
    goto :goto_b

    .line 1258
    :cond_a
    move/from16 v16, v8

    :cond_b
    :goto_b
    if-eqz v12, :cond_d

    .line 1260
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v11, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=1=====divhee======killpkg==done======pkgName="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget v1, v11, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z

    .line 1265
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_c

    .line 1263
    :catch_6
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e
    const-string v1, "SettingsBootCompletedReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeAllTask Failed to get recent tasks222"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_c

    .line 1187
    :cond_c
    move/from16 v16, v8

    :cond_d
    :goto_c
    add-int/lit8 v0, v9, 0x1

    .end local v9
    .local v0, "inum":I
    move/from16 v8, v16

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1271
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_e
    goto :goto_d

    .line 1269
    :catch_7
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsBootCompletedReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divhee 22201 removeAllTask Failed to get recent tasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v0
    :goto_d
    return-void
.end method

.method public static resetLauncherParentModeAppsStatusIgnoreSomeApp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1029
    const-string v0, "404"

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1030
    .local v0, "parentAppListAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v1, 0x194

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1031
    move v3, v2

    .local v3, "inum":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1032
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1033
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->isLauncherParentModeNotShowApp(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    :try_start_0
    invoke-static {p0, v4, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->resetParentModeStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1037
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1036
    :catch_0
    move-exception v5

    .line 1031
    .end local v4
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1041
    .end local v3
    :cond_1
    const-string v3, "3"

    invoke-static {p0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterReadboyApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1043
    nop

    .local v2, "inum":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1044
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1045
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings/SettingsBootCompletedReceiver;->isLauncherParentModeNotShowApp(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1047
    :try_start_1
    invoke-static {p0, v3, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->resetParentModeStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1049
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1048
    :catch_1
    move-exception v4

    .line 1043
    .end local v3
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1054
    .end local v2
    :cond_3
    return-void
.end method

.method private searchInnerInstallAppFile(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileold"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1539
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1540
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    if-lez v1, :cond_3

    .line 1541
    const/4 v1, 0x0

    .local v1, "jId":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1542
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1543
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1548
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1549
    .local v2, "oneFileName":Ljava/lang/String;
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->checkAppVersionWheatherNeedUpdate(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1550
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    .end local v2
    :cond_0
    goto :goto_1

    .line 1554
    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2, p3}, Lcom/android/settings/SettingsBootCompletedReceiver;->searchInnerInstallAppFile(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 1541
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    .end local v0
    .end local v1
    :cond_3
    goto :goto_2

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1561
    .end local v0
    :goto_2
    return-void
.end method


# virtual methods
.method public BootCompletedThenResetColorManagerTemp(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "times"    # I

    .line 1465
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    if-lez p2, :cond_0

    .line 1467
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver$3;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;Landroid/content/Context;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1506
    :cond_0
    return-void
.end method

.method public OtaFinishThenReinstallApps(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1513
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_reinstall_app_saved_device_version"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "padVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1516
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/app/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1518
    iget-object v2, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->searchInnerInstallAppFile(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 1520
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1521
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee============MyTaskInstallAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1523
    iget-object v3, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1524
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mReinstallApkPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsApp;->MyTaskInstallAction(Ljava/lang/String;)V

    .line 1522
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    .end local v2
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ota_reinstall_app_saved_device_version"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1530
    .end local v1
    :cond_4
    return-void
.end method

.method public ReadboyRemoveAnyTaskByBdcEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p1

    .line 447
    move-object/from16 v2, p2

    if-eqz v1, :cond_10

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 450
    :cond_0
    const/4 v0, 0x0

    .line 451
    .local v0, "isContainSettingsSelf":Z
    const-string v3, "removeTaskList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 452
    const-string v3, "removeTaskList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "listStr1":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 454
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v5, "needRemovedTaskApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "inum":I
    :goto_0
    if-ltz v6, :cond_2

    .line 456
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 457
    .local v7, "needRemovePkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 458
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    .end local v7
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 461
    .end local v6
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    const/4 v0, 0x1

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 465
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 466
    invoke-static {v1, v5}, Lcom/android/settings/PadModeSettings;->killAnyOneTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 470
    .end local v3
    .end local v5
    :cond_4
    const-string v3, "removeLauncher"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/high16 v5, 0x10200000

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    const-string v7, "com.readboy.launcher_c10_primary"

    const-string v8, "com.readboy.launcher_c10_parent"

    const-string v9, "com.readboy.launcher_c10"

    const-string v10, "com.readboy.launcher_c10_standard"

    const-string v11, "com.readboy.launcher_c10_student"

    const-string v12, "com.readboy.launcher_c10_children"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v3, "allNeedRemovedLauncherApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "removeLauncher"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "listStr2":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v8, "needRemovedLauncherApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v9, v6

    .local v9, "inum":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 480
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 481
    .local v10, "appLauncherPkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 482
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 483
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v10
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 487
    .end local v8
    .end local v9
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 488
    const/4 v0, 0x1

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    .end local v0
    .local v8, "isContainSettingsSelf":Z
    :cond_7
    move v8, v0

    invoke-static {v1, v3}, Lcom/android/settings/PadModeSettings;->killAnyOneTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 493
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "dream_launcher_mode_lable"

    const/4 v10, 0x2

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 495
    .local v9, "launcherParent":I
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    const-string v10, "launcher_mode"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 502
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 501
    :catch_0
    move-exception v0

    .end local v3
    .end local v7
    .end local v9
    goto :goto_2

    .line 504
    .end local v8
    .local v0, "isContainSettingsSelf":Z
    :cond_8
    move v8, v0

    .end local v0
    .restart local v8
    :goto_2
    const-string v0, "newStartActivity"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 511
    :try_start_1
    const-string v0, "newStartActivity"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "newUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 514
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 515
    .local v3, "intentAct":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 516
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    .end local v0
    .end local v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    goto :goto_3

    .line 518
    :catch_1
    move-exception v0

    .line 521
    :cond_a
    :goto_3
    const-string v0, "newStartService"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 524
    :try_start_2
    const-string v0, "newStartService"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .restart local v0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 526
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 527
    .local v3, "intentService":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 531
    .end local v0
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    goto :goto_4

    .line 530
    :catch_2
    move-exception v0

    .line 533
    :cond_c
    :goto_4
    const-string v0, "newBootComplete"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 536
    const-string v0, "newBootComplete"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "listStr3":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    .line 539
    .restart local v5
    move v0, v6

    .local v0, "inum":I
    :goto_5
    move v7, v0

    .end local v0
    .local v7, "inum":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_e

    .line 540
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 541
    .local v9, "pkgClass":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "@"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 542
    const-string v0, "@"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 543
    .local v10, "findOut":I
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 544
    .local v11, "strPkg":Ljava/lang/String;
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 545
    .local v12, "strCls":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 546
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/android/settings/SettingsBootCompletedReceiver;->isCheckedAppServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v13, v0

    .line 548
    .local v13, "boottIntent1":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    const-string v0, "callme"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 552
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    :try_start_3
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v13, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 558
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 555
    :catch_3
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==divhee===================new_BootComplete====="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :cond_d
    :goto_6
    add-int/lit8 v0, v7, 0x1

    .end local v7
    .local v0, "inum":I
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 565
    .end local v0
    .end local v3
    .end local v5
    :cond_e
    if-eqz v8, :cond_f

    .line 567
    const/4 v8, 0x0

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v0}, Lcom/android/settings/PadModeSettings;->killAnyOneTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 570
    :cond_f
    return-void

    .line 448
    .end local v8
    :cond_10
    :goto_7
    return-void
.end method

.method public ScanWifiAutoCleanLockScreen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1744
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver$4;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1750
    return-void
.end method

.method public SettingsInitEvent(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 1799
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1803
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "str1":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v3, "_rbci"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1805
    invoke-static {p1}, Lcom/android/settings/TouchModeSettings;->readProviders_rbci(Landroid/content/Context;)I

    move-result v3

    .line 1806
    .local v3, "touchMode":I
    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1807
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 1809
    .end local v3
    :cond_1
    goto :goto_0

    .line 1810
    :cond_2
    invoke-static {p1}, Lcom/android/settings/TouchModeSettings;->readProviders(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    .local v3, "touchMode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1812
    const-string v4, "1"

    invoke-static {v4}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 1813
    const-string v4, ""

    const-string v5, "======divhee=====SettingsInitialize====onReceive11111="

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1815
    :cond_3
    const-string v4, "2"

    invoke-static {v4}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 1816
    const-string v4, ""

    const-string v5, "======divhee=====SettingsInitialize====onReceive22222="

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    .end local v3
    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    .line 1823
    .local v4, "mRbciManager":Ljava/lang/Object;
    :try_start_0
    const-string v5, "rbci"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1827
    :goto_1
    goto :goto_2

    .line 1826
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1825
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1824
    :catch_2
    move-exception v5

    goto :goto_1

    .line 1829
    :goto_2
    move-object v5, v3

    .line 1831
    .local v5, "result_str":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 1833
    :try_start_1
    const-string v6, "RbciGetInfoByName"

    const-class v7, Ljava/lang/String;

    const-string v8, "TP_glass_mode"

    invoke-static {v4, v6, v3, v7, v8}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1834
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1835
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "rbcisetbooleanbyname_tp_glass_mode"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move v13, v6

    .line 1836
    .local v13, "iglassMode":I
    if-eq v13, v1, :cond_4

    if-nez v13, :cond_7

    .line 1838
    :cond_4
    if-eqz v4, :cond_6

    .line 1840
    :try_start_2
    const-string v7, "RbciSetBooleanByName"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    const-string v10, "TP_glass_mode"

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v1, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 1842
    :catch_3
    move-exception v6

    .line 1843
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6
    .end local v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 1844
    .restart local v13
    :cond_6
    :goto_4
    goto :goto_5

    .line 1848
    .end local v13
    :catch_4
    move-exception v6

    goto :goto_6

    .line 1849
    :cond_7
    :goto_5
    nop

    .line 1854
    :goto_6
    if-eqz v4, :cond_b

    .line 1856
    :try_start_4
    const-string v6, "RbciGetInfoByName"

    const-class v7, Ljava/lang/String;

    const-string v8, "TP_click_mode"

    invoke-static {v4, v6, v3, v7, v8}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1857
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1858
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "rbcisetbooleanbyname_tp_click_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move v13, v6

    .line 1859
    .local v13, "iclickMode":I
    if-eq v13, v1, :cond_8

    if-nez v13, :cond_b

    .line 1861
    :cond_8
    if-eqz v4, :cond_a

    .line 1863
    :try_start_5
    const-string v7, "RbciSetBooleanByName"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    const-string v10, "TP_click_mode"

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v1, :cond_9

    move v6, v1

    goto :goto_7

    :cond_9
    move v6, v2

    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 1865
    :catch_5
    move-exception v6

    .line 1866
    .restart local v6
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6
    .end local v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    .line 1867
    .restart local v13
    :cond_a
    :goto_8
    goto :goto_9

    .line 1871
    .end local v13
    :catch_6
    move-exception v6

    goto :goto_a

    .line 1872
    :cond_b
    :goto_9
    nop

    .line 1877
    :goto_a
    if-eqz v4, :cond_f

    .line 1879
    :try_start_7
    const-string v6, "RbciGetInfoByName"

    const-class v7, Ljava/lang/String;

    const-string v8, "late_night_mode"

    invoke-static {v4, v6, v3, v7, v8}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v5, v3

    .line 1880
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1881
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "late_night_mode_status"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1882
    .local v3, "latenightmode":I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eq v3, v1, :cond_c

    if-nez v3, :cond_f

    .line 1884
    :cond_c
    if-eqz v4, :cond_e

    .line 1886
    :try_start_8
    const-string v7, "RbciSetBooleanByName"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    const-string v10, "late_night_mode"

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v1, :cond_d

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_c

    .line 1889
    :catch_7
    move-exception v1

    .line 1890
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    .end local v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_d

    .line 1891
    .restart local v3
    :cond_e
    :goto_c
    goto :goto_d

    .line 1895
    .end local v3
    :catch_8
    move-exception v1

    goto :goto_e

    .line 1896
    :cond_f
    :goto_d
    nop

    .line 1898
    :goto_e
    return-void
.end method

.method public appLogsExport1(II)V
    .locals 9
    .param p1, "sendEmailEnable"    # I
    .param p2, "otherArg"    # I

    .line 1984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v0, "commnandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "%s/%s_logcat.txt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1986
    .local v1, "leadOutLogFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SendEmailThread;->getLogcatInfo()Ljava/lang/String;

    move-result-object v3

    .line 1988
    .local v3, "readedLogContent":Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    const-string v7, "==divhee====appLogsExport1==in=="

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const-string v4, "rm -r                %s/%s_logcat.txt"

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    const-string v4, "logcat -d -v time -f %s/%s_logcat.txt"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v7, v2, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    invoke-static {v0, v5}, Lcom/android/settings/ShellUtils;->execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v2

    .line 1993
    .local v2, "result":Lcom/android/settings/ShellUtils$CommandResult;
    if-eqz v2, :cond_0

    .line 1994
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport1==result=="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport1==result=="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport1==result=="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_0
    const-string v4, ""

    const-string v5, "==divhee====appLogsExport1==end=="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2000
    :catch_0
    move-exception v2

    .line 2001
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2002
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport1==error=="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    .end local v2
    :goto_0
    if-ne p1, v6, :cond_1

    .line 2008
    :try_start_1
    new-instance v2, Lcom/android/settings/SendEmailThread;

    iget-object v4, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->onSendEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings/SendEmailThread;-><init>(Ljava/lang/String;Lcom/android/settings/SendEmailThread$OnSendEmailEvent;Ljava/lang/String;)V

    .line 2009
    .local v2, "thread":Lcom/android/settings/SendEmailThread;
    invoke-virtual {v2}, Lcom/android/settings/SendEmailThread;->start()V

    .line 2011
    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2010
    :catch_1
    move-exception v2

    .line 2013
    :cond_1
    :goto_1
    return-void
.end method

.method public autoAssistForzenAppsThawApps(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 748
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "thaw_pkgname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 749
    const-string v1, "thaw_pkgname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "thawApkName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "arrPkgNames":[Ljava/lang/String;
    move v4, v2

    .local v4, "inum":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 753
    aget-object v5, v3, v4

    invoke-static {v0, v5, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setApplicationFrozen(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 752
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 756
    .end local v1
    .end local v3
    .end local v4
    :cond_0
    goto :goto_2

    :cond_1
    const-string v1, "frozen_pkgname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 757
    const-string v1, "frozen_pkgname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "frozenApkName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 759
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 760
    .restart local v3
    nop

    .local v2, "inum":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 761
    aget-object v4, v3, v2

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setApplicationFrozen(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 765
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    :goto_2
    return-void
.end method

.method public autoAssistHideAppsShowAppsServiceEnabledReceiversEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 783
    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->bdcReceiver_ActionUserPresentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 785
    const-string v3, "readboy_support_assist_control_apps_now_broadcast_time_only"

    .line 786
    .local v3, "key_all_assist_over_callback":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 789
    .local v4, "mEachReceiversTimeFlag":J
    invoke-static/range {p1 .. p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->resetLauncherParentModeAppsStatusIgnoreSomeApp(Landroid/content/Context;)V

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 792
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "visiable_enable_type"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 793
    .local v7, "visiable_enable_type":I
    const-string v9, "force_everyone_app"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 794
    .local v9, "isRealyForceWantToDo":Z
    const-string v11, "only_main_launcher_activity"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 795
    .local v11, "isOnlyDealMainLauncherActivity":Z
    const-string v12, "parent_manager_show_apps"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 796
    const-string v12, "parent_manager_show_apps"

    invoke-virtual {v2, v12, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 797
    .local v12, "show_hide_what":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v15, "mBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v13

    invoke-static {v13, v15}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getBlackList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 799
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 801
    move v13, v10

    .local v13, "inum":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 802
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 803
    .local v14, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_2

    iget-object v10, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 804
    if-eqz v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    move-object/from16 v16, v3

    goto :goto_2

    .line 806
    :cond_1
    :goto_1
    new-instance v10, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v10}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    move-object/from16 v16, v3

    const-string v3, ""

    .end local v3
    .local v16, "key_all_assist_over_callback":Ljava/lang/String;
    invoke-virtual {v10, v14, v3, v8}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 807
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 808
    goto :goto_3

    .line 811
    .end local v16
    .local v3, "key_all_assist_over_callback":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v3

    .end local v3
    .restart local v16
    :goto_2
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v10, ""

    invoke-virtual {v3, v14, v10, v12}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 812
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 801
    .end local v3
    .end local v14
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    const/4 v10, 0x0

    goto :goto_0

    .line 815
    .end local v13
    .end local v16
    .local v3, "key_all_assist_over_callback":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v3

    .end local v3
    .restart local v16
    const/4 v3, 0x0

    .local v3, "inum":I
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_b

    .line 816
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 817
    .local v10, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_5

    iget-object v13, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 818
    if-eqz v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 820
    nop

    .line 815
    .end local v4
    .end local v10
    .end local v15
    .local v17, "mBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "mEachReceiversTimeFlag":J
    :cond_4
    move-wide/from16 v18, v4

    move-object/from16 v17, v15

    goto/16 :goto_7

    .line 824
    .end local v17
    .end local v18
    .restart local v4
    .restart local v10
    .restart local v15
    :cond_5
    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_7

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main_launcher_"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v15

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    .end local v15
    .restart local v17
    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, "className":Ljava/lang/String;
    if-nez v8, :cond_6

    .line 829
    const/4 v13, 0x1

    invoke-static {v6, v10, v13}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 830
    invoke-static {v1, v10}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "main_launcher_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v18, v4

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Object;

    .end local v4
    .restart local v18
    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 833
    .end local v18
    .restart local v4
    :cond_6
    move-wide/from16 v18, v4

    .end local v4
    .restart local v18
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 834
    const-string v4, "@"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "classNameSons":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "iadd":I
    :goto_6
    array-length v13, v4

    if-ge v5, v13, :cond_8

    .line 836
    new-instance v13, Landroid/content/ComponentName;

    aget-object v14, v4, v5

    invoke-direct {v13, v10, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .local v13, "componentName":Landroid/content/ComponentName;
    invoke-static {v6, v13, v12}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 835
    .end local v13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 841
    .end local v5
    .end local v8
    .end local v17
    .end local v18
    .local v4, "mEachReceiversTimeFlag":J
    .restart local v15
    :cond_7
    move-wide/from16 v18, v4

    move-object/from16 v17, v15

    .end local v4
    .end local v15
    .restart local v17
    .restart local v18
    :cond_8
    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_9

    .line 843
    invoke-static {v6, v10, v12}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 845
    :cond_9
    and-int/lit8 v4, v7, 0x4

    if-eqz v4, :cond_a

    .line 847
    invoke-static {v6, v10, v12}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 815
    .end local v10
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, v17

    move-wide/from16 v4, v18

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 852
    .end local v3
    .end local v17
    .end local v18
    .restart local v4
    .restart local v15
    :cond_b
    move-wide/from16 v18, v4

    move-object/from16 v17, v15

    .end local v4
    .end local v15
    .restart local v17
    .restart local v18
    goto :goto_8

    .end local v16
    .end local v17
    .end local v18
    .local v3, "key_all_assist_over_callback":Ljava/lang/String;
    .restart local v4
    .restart local v15
    :cond_c
    move-object/from16 v16, v3

    move-wide/from16 v18, v4

    move-object/from16 v17, v15

    .end local v3
    .end local v4
    .end local v15
    .restart local v16
    .restart local v17
    .restart local v18
    :goto_8
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 853
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x64

    invoke-virtual {v3, v4, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    .end local v12
    .end local v17
    goto/16 :goto_1c

    .end local v16
    .end local v18
    .restart local v3
    .restart local v4
    :cond_d
    move-object/from16 v16, v3

    move-wide/from16 v18, v4

    .end local v3
    .end local v4
    .restart local v16
    .restart local v18
    const-string v3, "show_pkgname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "hide_pkgname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_12

    .line 920
    :cond_e
    const-string v3, "show_componentname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "hide_componentname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_9

    .line 974
    :cond_f
    const-string v3, "reset_show_all_apps"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 976
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    goto/16 :goto_1c

    .line 921
    :cond_10
    :goto_9
    const-string v3, "show_componentname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 922
    .local v3, "show_hide_what":Z
    if-eqz v3, :cond_11

    const-string v4, "show_componentname"

    :goto_a
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_11
    const-string v4, "hide_componentname"

    goto :goto_a

    .line 923
    .local v4, "showApkName":Ljava/lang/String;
    :goto_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 924
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "arrPkgNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "inum":I
    :goto_c
    array-length v10, v5

    const/4 v12, -0x1

    if-ge v8, v10, :cond_16

    .line 927
    aget-object v10, v5, v8

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_15

    .line 928
    aget-object v10, v5, v8

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 929
    .local v10, "compnameSon":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v13, v10, v12

    .line 930
    .local v13, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_14

    iget-object v12, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 931
    if-eqz v9, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_d

    .line 938
    :cond_12
    move-object/from16 v20, v4

    const/4 v14, 0x1

    goto :goto_e

    .line 933
    :cond_13
    :goto_d
    new-instance v12, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v12}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const/4 v14, 0x0

    aget-object v15, v10, v14

    move-object/from16 v20, v4

    const/4 v14, 0x1

    aget-object v4, v10, v14

    .end local v4
    .local v20, "showApkName":Ljava/lang/String;
    invoke-virtual {v12, v15, v4, v14}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v4

    .line 934
    .local v4, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v4}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 935
    goto :goto_f

    .line 938
    .end local v20
    .local v4, "showApkName":Ljava/lang/String;
    :cond_14
    move-object/from16 v20, v4

    const/4 v14, 0x1

    .end local v4
    .restart local v20
    :goto_e
    new-instance v4, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v4}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const/4 v12, 0x0

    aget-object v15, v10, v12

    aget-object v12, v10, v14

    invoke-virtual {v4, v15, v12, v3}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v4

    .line 939
    .local v4, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v4}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .end local v4
    .end local v10
    .end local v13
    goto :goto_f

    .line 926
    .end local v20
    .local v4, "showApkName":Ljava/lang/String;
    :cond_15
    move-object/from16 v20, v4

    .end local v4
    .restart local v20
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    goto :goto_c

    .line 943
    .end local v8
    .end local v20
    .restart local v4
    :cond_16
    move-object/from16 v20, v4

    .end local v4
    .restart local v20
    const/4 v4, 0x0

    .local v4, "inum":I
    :goto_10
    array-length v8, v5

    if-ge v4, v8, :cond_1c

    .line 944
    aget-object v8, v5, v4

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_1a

    .line 945
    aget-object v8, v5, v4

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 946
    .local v8, "compnameSon":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v13, v8, v10

    .line 947
    .restart local v13
    if-nez v3, :cond_17

    iget-object v10, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 948
    if-eqz v9, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 950
    goto :goto_11

    .line 954
    :cond_17
    new-instance v10, Landroid/content/ComponentName;

    const/4 v14, 0x0

    aget-object v15, v8, v14

    const/4 v14, 0x1

    aget-object v12, v8, v14

    invoke-direct {v10, v15, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .local v10, "componentName":Landroid/content/ComponentName;
    and-int/lit8 v12, v7, 0x1

    if-eqz v12, :cond_18

    .line 957
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 959
    :cond_18
    and-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_19

    .line 961
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 963
    :cond_19
    and-int/lit8 v12, v7, 0x4

    if-eqz v12, :cond_1a

    .line 965
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 943
    .end local v8
    .end local v10
    .end local v13
    :cond_1a
    :goto_11
    add-int/lit8 v4, v4, 0x1

    const/4 v12, -0x1

    goto :goto_10

    .line 971
    .end local v5
    .end local v20
    .local v4, "showApkName":Ljava/lang/String;
    :cond_1b
    move-object/from16 v20, v4

    .end local v4
    .restart local v20
    :cond_1c
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 972
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x64

    invoke-virtual {v4, v5, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    .end local v3
    .end local v20
    goto/16 :goto_1c

    .line 856
    :cond_1d
    :goto_12
    const-string v3, "show_pkgname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 857
    .restart local v3
    if-eqz v3, :cond_1e

    const-string v4, "show_pkgname"

    :goto_13
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1e
    const-string v4, "hide_pkgname"

    goto :goto_13

    .line 858
    .restart local v4
    :goto_14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 859
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 861
    .restart local v5
    const/4 v8, 0x0

    .local v8, "inum":I
    :goto_15
    array-length v10, v5

    if-ge v8, v10, :cond_21

    .line 862
    aget-object v10, v5, v8

    .line 863
    .local v10, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_20

    iget-object v12, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 864
    if-eqz v9, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 866
    :cond_1f
    new-instance v12, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v12}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v13, ""

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v13, v14}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v12

    .line 867
    .local v12, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v12}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 868
    goto :goto_16

    .line 871
    .end local v12
    :cond_20
    new-instance v12, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v12}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v10, v13, v3}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v12

    .line 872
    .restart local v12
    invoke-static {v12}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 861
    .end local v10
    .end local v12
    :goto_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 875
    .end local v8
    :cond_21
    const/4 v8, 0x0

    .restart local v8
    :goto_17
    array-length v10, v5

    if-ge v8, v10, :cond_29

    .line 876
    aget-object v10, v5, v8

    .line 877
    .restart local v10
    if-nez v3, :cond_22

    iget-object v12, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mNeedNotDisabledApps:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 878
    if-eqz v9, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 880
    goto/16 :goto_1b

    .line 884
    :cond_22
    and-int/lit8 v12, v7, 0x1

    if-eqz v12, :cond_26

    .line 886
    if-eqz v11, :cond_25

    .line 888
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "main_launcher_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 889
    .local v12, "className":Ljava/lang/String;
    if-nez v12, :cond_23

    .line 890
    const/4 v13, 0x1

    invoke-static {v6, v10, v13}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 891
    invoke-static {v1, v10}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 892
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "main_launcher_"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2, v12}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18

    .line 894
    :cond_23
    const/4 v15, 0x0

    :goto_18
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 895
    const-string v2, "@"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "classNameSons":[Ljava/lang/String;
    move v13, v15

    .local v13, "iadd":I
    :goto_19
    array-length v14, v2

    if-ge v13, v14, :cond_24

    .line 897
    new-instance v14, Landroid/content/ComponentName;

    aget-object v15, v2, v13

    invoke-direct {v14, v10, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    .local v14, "componentName":Landroid/content/ComponentName;
    invoke-static {v6, v14, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V

    .line 896
    .end local v14
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    goto :goto_19

    .line 901
    .end local v2
    .end local v12
    .end local v13
    :cond_24
    goto :goto_1a

    .line 903
    :cond_25
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 906
    :cond_26
    :goto_1a
    and-int/lit8 v2, v7, 0x2

    if-eqz v2, :cond_27

    .line 908
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 910
    :cond_27
    and-int/lit8 v2, v7, 0x4

    if-eqz v2, :cond_28

    .line 912
    invoke-static {v6, v10, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 875
    .end local v10
    :cond_28
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_17

    .line 917
    .end local v5
    .end local v8
    :cond_29
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 918
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->mRecheckoutAllAppLauncherStatusRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x64

    invoke-virtual {v2, v5, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 920
    .end local v3
    .end local v4
    nop

    .line 980
    :cond_2a
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v3, v16

    move-wide/from16 v4, v18

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 981
    .end local v16
    .end local v18
    .local v3, "key_all_assist_over_callback":Ljava/lang/String;
    .local v4, "mEachReceiversTimeFlag":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 983
    return-void
.end method

.method public bdcReceiver_ActionUserPresentExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1331
    const-string v0, "readboy_support_assist_control_apps_main_launcher_enabled"

    .line 1332
    .local v0, "key_support_enable":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1334
    .local v1, "deleteAppEnable":I
    const/4 v3, 0x1

    .line 1335
    .local v3, "isEnableHelpAction":Z
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1336
    .local v4, "modelName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1337
    const-string v5, "com.readboy.launcher_c10_primary"

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1338
    .local v5, "version_primary":I
    const v6, 0xbf55b09

    if-lez v5, :cond_0

    if-ge v5, v6, :cond_0

    .line 1339
    const/4 v3, 0x0

    .line 1341
    :cond_0
    const-string v7, "com.readboy.launcher_c10"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 1342
    .local v7, "version_middle":I
    if-lez v7, :cond_1

    if-ge v7, v6, :cond_1

    .line 1343
    const/4 v3, 0x0

    .line 1348
    :cond_1
    const-string v6, "Readboy_Dream6"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1349
    const/4 v3, 0x0

    .line 1351
    :cond_2
    const-string v6, "Dream"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1352
    const/4 v3, 0x0

    .line 1354
    :cond_3
    const-string v6, "T16H"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1355
    const/4 v3, 0x0

    .line 1357
    :cond_4
    const-string v6, "Readboy_C12Pro"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1358
    const/4 v3, 0x0

    .line 1360
    :cond_5
    const-string v6, "Readboy_C12"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1361
    const/4 v3, 0x0

    .line 1364
    .end local v5
    .end local v7
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 1365
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1366
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1367
    :cond_7
    if-eq v1, v2, :cond_8

    .line 1368
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1369
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1373
    :cond_8
    :goto_0
    const-string v0, "readboy_support_slient_install_app_uninstall_app"

    .line 1374
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1375
    if-eq v1, v6, :cond_9

    .line 1376
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1380
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_switch_drag_screen_order_callback_enable"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1381
    .local v7, "showEnableDragScreenOrder":I
    if-ne v7, v6, :cond_a

    .line 1382
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "launcher_switch_drag_screen_order_callback"

    invoke-static {v8, v10, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1383
    if-ne v1, v2, :cond_a

    .line 1384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "launcher_switch_drag_screen_order_callback"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "launcher_switch_drag_screen_order_callback"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1391
    :cond_a
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "db_parent_control_connect_usb_switch"

    invoke-static {v8, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v2, :cond_b

    .line 1392
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "db_parent_control_connect_usb_switch"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1394
    :cond_b
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "db_parent_control_transf_bluetooth_switch"

    invoke-static {v8, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v2, :cond_c

    .line 1395
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "db_parent_control_transf_bluetooth_switch"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1400
    :cond_c
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "airplane_mode_on"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1402
    .local v8, "airplanemode":I
    if-ne v8, v6, :cond_d

    .line 1403
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1404
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1405
    const-string v5, ""

    const-string v10, "==1===divhee============sendBroadcast======AIRPLANE_MODE======"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1408
    .local v5, "intentAirplane":Landroid/content/Intent;
    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v10, "state"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1410
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1411
    const-string v9, ""

    const-string v10, "==2===divhee============sendBroadcast======AIRPLANE_MODE======"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .end local v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1412
    :catch_0
    move-exception v5

    .line 1413
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=====divhee============state======AIRPLANE_MODE======"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v5
    .end local v8
    :cond_d
    :goto_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "rbyWifiSettingsNeedParentPasswordCheck"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1421
    .local v2, "iNeedVerifyPPwd":I
    if-eq v2, v6, :cond_e

    .line 1422
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "rbyWifiSettingsNeedParentPasswordCheck"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1426
    :cond_e
    return-void
.end method

.method public checkAppVersionWheatherNeedUpdate(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 1570
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1573
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1574
    .local v0, "pm2":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1575
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1578
    :cond_1
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->getAppVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1580
    .local v1, "installedApkVer":I
    if-ltz v1, :cond_2

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v1, v4, :cond_2

    .line 1581
    const/4 v2, 0x1

    return v2

    .line 1583
    :cond_2
    return v2

    .line 1576
    .end local v1
    :cond_3
    :goto_0
    return v1

    .line 1571
    .end local v0
    .end local v3
    :cond_4
    :goto_1
    return v1
.end method

.method public checkWifiUsedCheckNoShareEdittextEvent(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0236

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 328
    .local v1, "CheckNoShareEdittextReuslt":I
    const v3, 0x7f0a02ef

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/custom/RbyNoShareSearchEditText;

    if-eqz v4, :cond_0

    .line 329
    const/4 v1, 0x1

    .line 331
    :cond_0
    new-instance v4, Lcom/android/settings/database/MessageCenter;

    invoke-direct {v4}, Lcom/android/settings/database/MessageCenter;-><init>()V

    .line 332
    .local v4, "msgCenter":Lcom/android/settings/database/MessageCenter;
    iput v3, v4, Lcom/android/settings/database/MessageCenter;->uid:I

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2131362543_2131558966"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    .line 334
    iput v2, v4, Lcom/android/settings/database/MessageCenter;->pid:I

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_dialog_noshare="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    .line 337
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    .line 339
    iget-object v2, v4, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    iget v3, v4, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-static {v2, v3}, Lcom/android/settings/database/StacksDatabase;->queryMsgCS(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 340
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMsgCS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/settings/database/StacksDatabase;->updateMsgCS(Lcom/android/settings/database/MessageCenter;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_1
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertMsgCS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/settings/database/StacksDatabase;->insertMsgCS(Lcom/android/settings/database/MessageCenter;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0
    .end local v1
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v0
    :goto_1
    return-void
.end method

.method public createRootBugFoler()V
    .locals 3

    .line 1927
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1929
    .local v0, "datapath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    .line 1930
    sget-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bugLogs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    goto :goto_0

    .line 1933
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bugLogs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    .line 1935
    .end local v0
    :goto_0
    goto :goto_1

    .line 1936
    :cond_1
    const-string v0, "/storage/emulated/0/bugLogs"

    sput-object v0, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    .line 1938
    :goto_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee=========createRootBugFoler===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v0, "Logfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1941
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1943
    :cond_2
    return-void
.end method

.method public getAppVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packname"    # Ljava/lang/String;

    .line 1594
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1596
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1597
    .local v1, "packinfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1598
    .end local v1
    :catch_0
    move-exception v1

    .line 1599
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1601
    .end local v1
    const/4 v1, -0x1

    return v1
.end method

.method public getWifiHotInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1754
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1755
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1758
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1760
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v1

    .line 1761
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 1762
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1763
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1764
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1765
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1766
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1767
    .local v4, "ssidName":Ljava/lang/String;
    const-string v5, "readboy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1769
    const-string v5, "pwd"

    const-string v6, "readboy"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    invoke-static {p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1771
    const-string v5, ""

    const-string v6, "======divhee===auto=wifi====readboy_CleanLockScreen_Password====="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanLockScreenPassword(Landroid/content/Context;)V

    .line 1763
    .end local v3
    .end local v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1781
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    goto :goto_2

    .line 1779
    :catch_1
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1782
    .end local v0
    :goto_2
    return-void
.end method

.method public helpInstallApkUninstallAppInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 695
    const-string v0, "readboy_support_slient_install_app_uninstall_app"

    .line 696
    .local v0, "key_support_enable":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 697
    .local v1, "deleteAppEnable":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 698
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 702
    :cond_0
    if-eqz p2, :cond_5

    .line 703
    :try_start_0
    const-string v2, "apkPath"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 704
    const-string v2, "apkPath"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "apkPaths":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 707
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "arrApkPaths":[Ljava/lang/String;
    nop

    .local v3, "inum":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 709
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "====divhee=======apkpath===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    aget-object v5, v4, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    aget-object v6, v4, v3

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_1

    .line 712
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsApp;->MyTaskInstallAction(Ljava/lang/String;)V

    .line 714
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 713
    :catch_0
    move-exception v5

    .line 708
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    goto :goto_4

    :cond_3
    :try_start_2
    const-string v2, "pkgName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 719
    const-string v2, "pkgName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "pkgNames":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 722
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "arrPkgNames":[Ljava/lang/String;
    nop

    .restart local v3
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 724
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "====divhee=======pkgName===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    aget-object v5, v4, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v5, :cond_4

    .line 727
    :try_start_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsApp;->MyTaskUninstallAction(Ljava/lang/String;)V

    .line 729
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 728
    :catch_1
    move-exception v5

    .line 723
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 735
    .end local v2
    .end local v3
    .end local v4
    :catch_2
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2
    goto :goto_5

    .line 737
    :cond_5
    :goto_4
    nop

    .line 738
    :goto_5
    return-void
.end method

.method public helpReadboyGpsNetworkLocation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 357
    const-string v0, "isStopNetworkLocation"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 360
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 361
    .local v0, "actM":Landroid/app/ActivityManager;
    const-string v3, "com.baidu.map.location"

    .line 362
    .local v3, "taskPkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 366
    .end local v0
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v0
    :cond_0
    :goto_0
    const-string v0, "isNeedCloseThenOpen"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 370
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->toggleGps(Z)V

    .line 373
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 371
    :catch_1
    move-exception v0

    .line 372
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    .end local v0
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "isOpenGps"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 377
    .local v0, "isOpen":Z
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee=================ReadboyGpsNetworkLocation=isOpenGps=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->toggleGps(Z)V

    .line 381
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 379
    :catch_2
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v0
    :goto_2
    return-void
.end method

.method public helpRequestAppAllPermission(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 663
    const-string v0, "pkgNames"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    const-string v0, "pkgNames"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "apkPaths":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 666
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "arrPkgNames":[Ljava/lang/String;
    const-string v2, "GantPermission"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 668
    .local v2, "isGantPermission":Z
    const-string v4, "FullPermission"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 669
    .local v4, "isFullPermission":Z
    if-eqz v1, :cond_3

    array-length v5, v1

    if-lez v5, :cond_3

    .line 670
    const/4 v5, 0x0

    .local v5, "inum":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 672
    :try_start_0
    aget-object v6, v1, v5

    invoke-static {p1, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 673
    if-nez v4, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 676
    :cond_0
    aget-object v6, v1, v5

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 677
    .local v6, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 678
    aget-object v7, v1, v5

    invoke-static {p1, v7, v2, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .end local v6
    goto :goto_2

    .line 674
    :cond_1
    :goto_1
    aget-object v6, v1, v5

    invoke-static {p1, v6, v2, v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 683
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    goto :goto_3

    .line 682
    :catch_0
    move-exception v6

    .line 670
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 688
    .end local v0
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    :cond_3
    return-void
.end method

.method public helpResetNowTimeByBdcEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 597
    const-string v0, "resetnowdatetime"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "act_now_time":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, "base_newYear":I
    :goto_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 601
    div-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 603
    :cond_0
    add-int/lit16 v1, v1, 0x7d0

    .line 607
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 608
    .local v2, "calendarNeed":Ljava/util/Calendar;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 610
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "====divhee===helpResetNowTimeByBdcEvent===2==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt v6, v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 613
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 617
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_2

    .line 615
    :catch_0
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=error2===divhee===helpResetNowTimeByBdcEvent======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v1
    .end local v2
    :cond_3
    :goto_2
    return-void
.end method

.method public helpShutDownOrReboot(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 637
    const-string v0, "ReadboyForceAction"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "act_type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    const-string v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 641
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "intent1":Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 645
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 646
    .end local v1
    goto :goto_0

    :cond_0
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "intent2":Landroid/content/Intent;
    const-string v3, "nowait"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v3, "window"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public nowResetUsbConnectPcEnableExchange(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 389
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_pad_now_is_in_factory"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsBootCompletedReceiver$1;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mCurrentReceiverTimeId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bootcompleted_receiver_timeid"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 120
    .local v1, "newestReceiveTimeId":J
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mCurrentReceiverTimeId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 122
    :try_start_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mCurrentReceiverTimeId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "=======divhee=======SettingsBootCompletedReceiver====unregisterReceiver====self="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .line 126
    :goto_0
    return-void

    .line 130
    .end local v1
    :cond_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    const/16 v3, -0x64

    const/16 v4, 0x168

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 131
    const-string v1, ""

    const-string v6, "=====divhee=========ACTION_SHUTDOWN===="

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->readLcdInfoFilter(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "color_manager_temp_value"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "savedvalue":I
    if-lt v1, v3, :cond_1

    if-gt v1, v2, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 136
    invoke-static {p1, v5}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_manager_temp_value"

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    .end local v1
    :cond_1
    goto/16 :goto_6

    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_b

    .line 143
    :try_start_1
    const-string v1, "ro.config.gesture_navigation"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "full_screen_enable":I
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee=========full_screen_enable===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsl_full_screen_mode_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    .end local v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 146
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_device_boot_times"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "boot_times":I
    if-nez v1, :cond_3

    .line 152
    invoke-static {p1}, Lcom/android/settings/SettingsCleanCachedReceiver;->firstTimeStartResetSomeEspFlags(Landroid/content/Context;)V

    .line 154
    :cond_3
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_4

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_device_boot_times"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->nowResetUsbConnectPcEnableExchange(Landroid/content/Context;)V

    .line 161
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->readLcdSeWendDefaultAndWriteDB()V

    .line 163
    const/16 v2, 0x1f

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->BootCompletedThenResetColorManagerTemp(Landroid/content/Context;I)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->SettingsInitEvent(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->ScanWifiAutoCleanLockScreen(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    const/16 v2, 0x18

    if-ge v1, v2, :cond_6

    .line 168
    invoke-static {p1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->startFactoryPowerTMIntentService(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_time_start_factory_power_tm"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 170
    invoke-static {p1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->startFactoryATMIntentService(Landroid/content/Context;)V

    .line 172
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "first_time_install_pre_apps_flag"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 173
    invoke-static {p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->nowStartAutoPreInstallFtpListApkService(Landroid/content/Context;)V

    .line 176
    :cond_6
    const/16 v2, 0x8

    .line 177
    .local v2, "maxPreinstallTimes":I
    if-ge v1, v2, :cond_7

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "readboy_device_boot_times"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v2, :cond_7

    .line 179
    invoke-static {p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->nowStartDslAppsInstallService(Landroid/content/Context;)V

    .line 182
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->OtaFinishThenReinstallApps(Landroid/content/Context;)V

    .line 184
    invoke-static {p1, p2}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->prompteUserInstallReadboyApps(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    invoke-static {p1}, Lcom/android/settings/SettingsCameraConfigureIntentService;->startCameraUpdateIntentService(Landroid/content/Context;)V

    .line 187
    invoke-static {p1}, Lcom/android/settings/ForcePorttAppLandshowAddNewBroadcast;->addAllProttSystemDbPorttAppLandShowNames(Landroid/content/Context;)V

    .line 189
    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    .line 192
    const-string v3, "ro.readboy.freeform"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 193
    .local v3, "freeform_enable":I
    if-ne v3, v5, :cond_9

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enable_freeform_support"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 195
    .local v4, "freeform_value":I
    if-eq v4, v5, :cond_8

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enable_freeform_support"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "force_resizable_activities"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 199
    .local v6, "force_resizable_value":I
    if-eq v6, v5, :cond_9

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "force_resizable_activities"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    .end local v4
    .end local v6
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->bdcReceiver_ActionUserPresentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "readboy_support_assist_control_apps_main_launcher_enabled"

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 208
    invoke-static {p1, v7}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    goto :goto_2

    .line 210
    :cond_a
    invoke-static {p1, v5}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    .line 212
    .end local v1
    .end local v2
    .end local v3
    :goto_2
    goto/16 :goto_6

    :cond_b
    const-string v1, "android.intent.action.THAW_APPS_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 215
    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    new-array v2, v5, [Landroid/content/Intent;

    aput-object p2, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 216
    :cond_c
    const-string v1, "android.intent.action.HIDE_APPS_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 219
    new-instance v1, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ShowHideUpdater;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ShowHideUpdater;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    new-array v2, v5, [Landroid/content/Intent;

    aput-object p2, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ShowHideUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 220
    :cond_d
    const-string v1, "action.adb.master_clear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 221
    const-string v1, "AdbMasterClearReceiver"

    const-string v2, "AdbMasterClearReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "reset"

    const-string v2, "readboy"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 223
    const-string v1, "shutdown"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    .local v1, "shutdown":Z
    const-string v2, "AdbMasterClearReceiver"

    const-string v3, "!!! FACTORY RESET !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "masterClearIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.REASON"

    const-string v4, "MasterClearConfirm"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v3, "shutdown"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    .end local v1
    .end local v2
    goto/16 :goto_6

    .line 231
    :cond_e
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->writeLcdInfoToFtpFilter(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "color_manager_temp_value"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, "savedvalue":I
    if-lt v1, v3, :cond_f

    if-gt v1, v2, :cond_f

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 237
    invoke-static {p1, v5}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_f

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_manager_temp_value"

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getSeWenValueDefaultFromDB()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->bdcReceiver_ActionUserPresentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 242
    .end local v1
    goto/16 :goto_6

    :cond_10
    const-string v1, "android.intent.action.APP_ERROR_NOT_FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 243
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f1200b3

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    goto/16 :goto_6

    .line 244
    :cond_11
    const-string v1, "android.intent.action.APP_ERROR_UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 245
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f1200b4

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    goto/16 :goto_6

    .line 246
    :cond_12
    const-string v1, "android.intent.action.RecordDataToSystemProviderBySettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 247
    const-string v1, ""

    const-string v2, "=====dvihee======RecordDataToSystemProviderBySettings====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->RecordDataToSystemProviderBySettings(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 249
    :cond_13
    const-string v1, "android.intent.action.ReadboyBackgroundInstallApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->helpInstallApkUninstallAppInBackground(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 252
    :cond_14
    const-string v1, "android.intent.action.ReadboyBackgroundUploadLogs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->startLeadoutLogsAndUploadLogs(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 255
    :cond_15
    const-string v1, "android.intent.action.ReadboyForceShutdownOrReboot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->helpShutDownOrReboot(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 258
    :cond_16
    const-string v1, "android.intent.action.ReadboyCleanAppDataEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 260
    invoke-static {p1, p2}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanAppDataByPackageName(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 261
    :cond_17
    const-string v1, "android.intent.action.ReadboyExchangeParentMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 263
    invoke-static {p1, p2}, Lcom/android/settings/PadModeSettings;->helpExchangeParentMode(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 264
    :cond_18
    const-string v1, "android.intent.action.ReadboyRequestAppAllPermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->helpRequestAppAllPermission(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 267
    :cond_19
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_5

    .line 279
    :cond_1a
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_4

    .line 291
    :cond_1b
    const-string v1, "android.intent.action.ReadboyResetNowTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->helpResetNowTimeByBdcEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 293
    :cond_1c
    const-string v1, "android.intent.action.ReadboyRemoveAnyTask"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->ReadboyRemoveAnyTaskByBdcEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 295
    :cond_1d
    const-string v1, "android.intent.action.ReadboyPaperLikeModeSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 297
    const-string v1, "PaperLikeMode"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 298
    .local v1, "isPaperLikeModeEnable":Z
    invoke-static {}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isSupportPaperLikeMode()I

    move-result v2

    if-lez v2, :cond_20

    .line 299
    invoke-static {p1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->isPaperLikeModeStatus(Landroid/content/Context;)I

    move-result v2

    .line 300
    .local v2, "isNowPaperLikeModeEnable":I
    if-lez v2, :cond_20

    .line 301
    invoke-static {}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isCurrentModeArePaperLikeMode()I

    move-result v3

    .line 302
    .local v3, "nowPaperLikeMode":I
    if-ne v3, v5, :cond_1e

    if-eqz v1, :cond_1f

    :cond_1e
    if-nez v3, :cond_20

    if-eqz v1, :cond_20

    .line 303
    :cond_1f
    new-instance v4, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    invoke-direct {v4, p1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;-><init>(Landroid/content/Context;)V

    .line 305
    .local v4, "controller":Lcom/android/settings/display/ColorPaperLikeModePreferenceController;
    :try_start_2
    invoke-virtual {v4, p1, v1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->resetNowColorPaperLikeMode(Landroid/content/Context;Z)Z

    .line 306
    invoke-virtual {v4}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->releaseMyself()V

    .line 308
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 307
    :catch_2
    move-exception v5

    .line 309
    :goto_3
    nop

    .line 313
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_20
    goto/16 :goto_6

    :cond_21
    const-string v1, "android.intent.action.ReadboySendPkgToParent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 314
    invoke-static {p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->readboyHelpDwsqSendPkgToParent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 315
    :cond_22
    const-string v1, "android.intent.action.ReadboyGpsNetworkLocation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->helpReadboyGpsNetworkLocation(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 280
    :cond_23
    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->checkWifiUsedCheckNoShareEdittextEvent(Landroid/content/Context;)V

    .line 285
    :cond_24
    invoke-static {p1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "clsNames":Ljava/lang/String;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "====divhee===============action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "===clsNames=("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 288
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 289
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNew(Lcom/android/settings/database/LauncherStatus;)Z

    .line 291
    .end local v1
    .end local v2
    .end local v3
    :cond_25
    goto :goto_6

    .line 268
    :cond_26
    :goto_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->checkWifiUsedCheckNoShareEdittextEvent(Landroid/content/Context;)V

    .line 273
    :cond_27
    invoke-static {p1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "====divhee===============action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "===clsNames=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main_launcher_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    :cond_28
    invoke-static {p1, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->GantPermisssionForAllReadboyApps(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    .end local v1
    .end local v2
    nop

    .line 318
    :cond_29
    :goto_6
    return-void
.end method

.method public postDataToFtp(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "encode"    # Ljava/lang/String;
    .param p4, "writeFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p2

    .line 2161
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 2162
    .local v2, "parambuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2163
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2164
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    .end local v4
    goto :goto_0

    .line 2167
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2169
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2171
    .local v3, "data":[B
    new-instance v4, Ljava/net/URL;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2172
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 2174
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2175
    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2177
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2179
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v7, "Content-Length"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/4 v7, 0x0

    .line 2187
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object v7, v8

    .line 2188
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2191
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 2192
    .local v8, "code":I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 2193
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 2194
    .local v9, "is":Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v10, p0

    :try_start_3
    invoke-virtual {v10, v9}, Lcom/android/settings/SettingsBootCompletedReceiver;->readStreamCnn(Ljava/io/InputStream;)[B

    move-result-object v11

    .line 2195
    .local v11, "result":[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 2196
    .local v12, "retStr":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v13, :cond_4

    .line 2198
    :try_start_4
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "status"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "status"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v0, :cond_2

    .line 2200
    const-string v0, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "=====divhee==========postDataToFtp====OK===="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "write_dsi_mipi_rw"

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v15, p4

    :try_start_5
    invoke-static {v0, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2203
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2204
    :cond_2
    move/from16 v15, p4

    :goto_1
    goto :goto_3

    .line 2203
    :catch_1
    move-exception v0

    move/from16 v15, p4

    .end local v8
    .end local v9
    .end local v11
    .end local v12
    :goto_2
    goto :goto_3

    .line 2210
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 2207
    :catch_2
    move-exception v0

    goto :goto_8

    .line 2210
    :cond_3
    move-object/from16 v10, p0

    :cond_4
    move/from16 v15, p4

    :goto_3
    if-eqz v7, :cond_5

    .line 2212
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 2214
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    goto :goto_5

    .line 2213
    :catch_3
    move-exception v0

    .line 2215
    :goto_5
    const/4 v0, 0x0

    .end local v7
    .local v0, "os":Ljava/io/OutputStream;
    goto :goto_9

    .line 2210
    .end local v0
    .restart local v7
    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    .end local v7
    .local v8, "os":Ljava/io/OutputStream;
    :goto_6
    move/from16 v15, p4

    :goto_7
    move-object v8, v7

    move-object v7, v0

    goto :goto_a

    .line 2207
    .end local v8
    .restart local v7
    :catch_4
    move-exception v0

    move-object/from16 v10, p0

    :goto_8
    move/from16 v15, p4

    .line 2208
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=====divhee==========postDataToFtp=======error===444==="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    .end local v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v7, :cond_5

    .line 2212
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 2213
    :catch_5
    move-exception v0

    goto :goto_5

    .line 2219
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    :cond_5
    :goto_9
    goto :goto_d

    .line 2210
    .restart local v2
    .restart local v3
    .restart local v4
    .restart local v6
    .restart local v7
    :catchall_2
    move-exception v0

    goto :goto_7

    .end local v7
    .restart local v8
    :goto_a
    if-eqz v8, :cond_6

    .line 2212
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2214
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_b

    .line 2213
    :catch_6
    move-exception v0

    .line 2215
    :goto_b
    const/4 v8, 0x0

    :cond_6
    :try_start_a
    throw v7

    .line 2218
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .end local v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v5, p1

    :goto_c
    move/from16 v15, p4

    .line 2220
    :goto_d
    return-void
.end method

.method public readStreamCnn(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2229
    const/4 v0, 0x0

    move-object v1, v0

    .line 2231
    .local v1, "outSteam":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 2232
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 2233
    .local v2, "buffer":[B
    const/4 v3, -0x1

    move v4, v3

    .line 2234
    .local v4, "readLength":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    if-eq v5, v3, :cond_0

    .line 2235
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2237
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 2240
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 2242
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2244
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2243
    :catch_0
    move-exception v0

    .line 2245
    :goto_1
    const/4 p1, 0x0

    .line 2247
    :cond_1
    nop

    .line 2249
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2251
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2250
    :catch_1
    move-exception v0

    .line 2252
    :goto_2
    const/4 v0, 0x0

    .line 2237
    .end local v1
    .local v0, "outSteam":Ljava/io/ByteArrayOutputStream;
    return-object v3

    .line 2240
    .end local v0
    .end local v2
    .end local v4
    .restart local v1
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 2242
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2244
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 2243
    :catch_2
    move-exception v2

    .line 2245
    :goto_3
    const/4 p1, 0x0

    .line 2247
    :cond_2
    if-eqz v1, :cond_3

    .line 2249
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2251
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 2250
    :catch_3
    move-exception v2

    .line 2252
    :goto_4
    const/4 v1, 0x0

    :cond_3
    throw v0

    .line 2238
    :catch_4
    move-exception v2

    .line 2240
    if-eqz p1, :cond_4

    .line 2242
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2244
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 2243
    :catch_5
    move-exception v2

    .line 2245
    :goto_5
    const/4 p1, 0x0

    .line 2247
    :cond_4
    if-eqz v1, :cond_5

    .line 2249
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2251
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 2250
    :catch_6
    move-exception v2

    .line 2252
    :goto_6
    const/4 v1, 0x0

    .line 2255
    :cond_5
    return-object v0
.end method

.method public setCurrentReceiverTimeId(J)V
    .locals 0
    .param p1, "timeId"    # J

    .line 110
    iput-wide p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->mCurrentReceiverTimeId:J

    .line 111
    return-void
.end method

.method public startLeadoutLogsAndUploadLogs(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1906
    const-string v0, ""

    const-string v1, "===divhee========LeadoutLogsAndUploadLogs==1=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handlerLogThread101"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    .line 1908
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1909
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;Lcom/android/settings/SettingsBootCompletedReceiver$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    .line 1910
    invoke-virtual {p0}, Lcom/android/settings/SettingsBootCompletedReceiver;->createRootBugFoler()V

    .line 1912
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1913
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x271a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1914
    const-string v1, "alsoSendEmail"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1915
    const-string v1, "otherArg"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1916
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1917
    iget-object v1, p0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1920
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1921
    .end local v0
    :goto_0
    const-string v0, ""

    const-string v1, "===divhee========LeadoutLogsAndUploadLogs==2=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return-void
.end method

.method public writeLcdInfoToFtpFilter(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2072
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2073
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Readboy_C25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-lez v1, :cond_0

    .line 2074
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "write_dsi_mipi_rw"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2076
    .local v1, "mWriteLcdValue":I
    invoke-static {v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->isC25LCDFreqRightValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2077
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "read_dsi_mipi_rw"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2079
    .local v2, "mReadLcdValue":I
    if-lez v2, :cond_0

    if-eq v2, v1, :cond_0

    .line 2081
    :try_start_0
    new-instance v3, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;Lcom/android/settings/SettingsBootCompletedReceiver$1;)V

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2083
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2082
    :catch_0
    move-exception v3

    .line 2087
    .end local v1
    .end local v2
    :cond_0
    :goto_0
    return-void
.end method

.method public writeLcdInfoToFtpTask(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 2118
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2119
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Readboy_C25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2120
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-lez v1, :cond_0

    .line 2121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "write_dsi_mipi_rw"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2122
    .local v1, "mWriteLcdValue":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "read_dsi_mipi_rw"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2123
    .local v2, "mReadLcdValue":I
    if-lez v2, :cond_0

    if-eq v2, v1, :cond_0

    .line 2125
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->checkAuthToken()V

    .line 2127
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v5

    const-string v3, "8df5bce4b208be84b5c76a6a00364467"

    invoke-static {p1, v5, v6, v3}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceSN(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2128
    .local v3, "snString":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2129
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "sn"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    const-string v6, "model"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    const-string v6, "serial"

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    const-string v6, "dsi_mipi_rw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=mReadLcdValue====divhee=========write_LcdInfoToFtpTask===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const-string v6, "https://c25-screen-stat.readboy.com/api/screenState?number=%s&sn=%s&device_id=%s&t=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const/4 v4, 0x2

    .line 2138
    invoke-static {p1}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    .line 2139
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    .line 2136
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2143
    .local v4, "urlHost":Ljava/lang/String;
    const-string v6, "utf-8"

    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->postDataToFtp(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 2147
    .end local v3
    .end local v4
    .end local v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2144
    :catch_0
    move-exception v3

    .line 2145
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====divhee============write_LcdInfoToFtpTask======="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2151
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    :goto_0
    return-void
.end method
