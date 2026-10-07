.class public Lcom/android/settings/SettingsSharedContentProvider;
.super Landroid/content/ContentProvider;
.source "SettingsSharedContentProvider.java"


# static fields
.field private static final NOTIFY_URI:Landroid/net/Uri;

.field private static final mMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const-string v0, "content://com.android.settings_rby_shared_data/student"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsSharedContentProvider;->NOTIFY_URI:Landroid/net/Uri;

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 61
    sget-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings_rby_shared_data"

    const-string v2, "MsgCenter"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings_rby_shared_data"

    const-string v2, "MsgCenter/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private notifyDataChanged()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsSharedContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SettingsSharedContentProvider;->NOTIFY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public static saveDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 551
    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "msgc_vid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "callme"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Lcom/android/settings/database/MessageCenter;

    invoke-direct {v0}, Lcom/android/settings/database/MessageCenter;-><init>()V

    .line 553
    .local v0, "msgCenter":Lcom/android/settings/database/MessageCenter;
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/android/settings/database/MessageCenter;->uid:I

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgc_vid"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "callme"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    .line 555
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/android/settings/database/MessageCenter;->pid:I

    .line 556
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 557
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    .line 559
    const-string v2, "callme"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    .line 560
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    .line 561
    iget-object v2, v0, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-static {v2, v3}, Lcom/android/settings/database/StacksDatabase;->queryMsgCS(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 562
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMsgCS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settings/database/StacksDatabase;->updateMsgCS(Lcom/android/settings/database/MessageCenter;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :cond_0
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertMsgCS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settings/database/StacksDatabase;->insertMsgCS(Lcom/android/settings/database/MessageCenter;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    .line 569
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 571
    :cond_1
    nop

    .line 572
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 164
    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 166
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    goto :goto_0

    .line 168
    :cond_0
    move-object v4, v0

    .end local v0
    .local v4, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v3, :cond_22

    const-string v0, "callme"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1a

    .line 172
    :cond_1
    :try_start_0
    const-string v0, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callme"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "====divhee===============call==method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0    # 0x7c5dacdb
    const-string v0, "exsist_helpCallbackInnerFieldEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_2

    :sswitch_1    # 0x76544f3f
    const-string v0, "exsist_putDataToSystemProvider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_2

    :sswitch_2    # 0x720a05ef
    const-string v0, "exsist_saveDataToSettingsLocalDB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_2

    :sswitch_3    # 0x5a7c37fc
    const-string v0, "readDataFromSettingsLocalDB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto/16 :goto_2

    :sswitch_4    # 0x4cc79250
    const-string v0, "com.readboy.killapp_shareddata"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto/16 :goto_2

    :sswitch_5    # 0x4bbef29e
    const-string v0, "helpPartBroadcastReceiverEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_6    # 0x475c5f01
    const-string v0, "check_rby_voiceassistant_audio_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto/16 :goto_2

    :sswitch_7    # 0x3d37f930
    const-string v0, "helpCallbackInnerFieldEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_8    # 0x273d5e35
    const-string v0, "exsist_getDataFromSystemProvider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_9    # 0x237ac816
    const-string v0, "exsist_helpCallbackInnerMenthodEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_2

    :sswitch_a    # 0x16f3532b
    const-string v0, "helpCallbackInnerMenthodEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_b    # 0x4b69277
    const-string v0, "exsist_helpCheckNoShareEdittextEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    goto/16 :goto_2

    :sswitch_c    # -0x5fe4714
    const-string v0, "exsist_check_rby_voiceassistant_audio_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_d    # -0x7d0e274
    const-string v0, "helpCheckNoShareEdittextEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_e    # -0xc4c4305
    const-string v0, "exsist_helpRemoveTaskFromRecentAppList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_2

    :sswitch_f    # -0x14745c24
    const-string v0, "helpAddPowerSaveWhitelistApp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_10    # -0x14ca2930
    const-string v0, "helpRemoveTaskFromRecentAppList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_11    # -0x1a7bf1ec
    const-string v0, "putDataToSystemProvider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_12    # -0x2a39e4e0
    const-string v0, "HelperSettingsReceiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_13    # -0x2bba9c7c
    const-string v0, "saveDataToSettingsLocalDB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_14    # -0x2ed1453b
    const-string v0, "exsist_com.readboy.killapp_shareddata"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto :goto_2

    :sswitch_15    # -0x2fd9e4ed
    const-string v0, "exsist_helpPartBroadcastReceiverEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16

    goto :goto_2

    :sswitch_16    # -0x5f5c776b
    const-string v0, "exsist_HelperSettingsReceiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto :goto_2

    :sswitch_17    # -0x665e1459
    const-string v0, "exsist_readDataFromSettingsLocalDB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_2

    :sswitch_18    # -0x6ee39a6f
    const-string v0, "exsist_helpAddPowerSaveWhitelistApp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto :goto_2

    :sswitch_19    # -0x76874436
    const-string v0, "getDataFromSystemProvider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v5

    :goto_2
    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_18

    .line 423
    :pswitch_0    # 0xe 0xf 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0xd
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_18

    .line 383
    :pswitch_1    # 0xc
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    if-eqz v3, :cond_21

    const-string v0, "checkResName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 385
    const-string v0, "checkResName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 386
    .local v8, "checkResName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 387
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v9, 0x691819b2

    if-eq v0, v9, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "wifi_dialog"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v0, :cond_4

    move v5, v6

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .end local v8
    goto :goto_4

    .line 390
    .restart local v8
    :cond_5
    :try_start_1
    new-instance v0, Lcom/android/settings/database/MessageCenter;

    invoke-direct {v0}, Lcom/android/settings/database/MessageCenter;-><init>()V

    .line 391
    .local v0, "msgCenter":Lcom/android/settings/database/MessageCenter;
    const v5, 0x7f0a02ef

    iput v5, v0, Lcom/android/settings/database/MessageCenter;->uid:I

    .line 392
    const-string v5, "2131362543_2131558966com.android.settings"

    iput-object v5, v0, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    .line 394
    iget-object v5, v0, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-static {v5, v6}, Lcom/android/settings/database/StacksDatabase;->queryMsgCS(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;

    move-result-object v5

    move-object v0, v5

    .line 396
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    const-string v6, "wifi_dialog_noshare=1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 397
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    goto :goto_4

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    .end local v0
    .end local v8
    :cond_7
    :goto_4
    goto/16 :goto_18

    .line 352
    :pswitch_2    # 0xb
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    if-eqz v3, :cond_21

    const-string v0, "field_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 354
    :cond_8
    const-string v0, "field_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 355
    .local v5, "fieldName":Ljava/lang/String;
    const-string v0, "result_default"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "result_default"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_5

    :cond_9
    move-object v0, v8

    :goto_5
    move-object v6, v0

    .line 357
    .local v6, "objRet":Ljava/lang/Object;
    :try_start_3
    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 358
    :cond_a
    move-object v0, v8

    :goto_6
    const-string v9, "staticinsClassName"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v8, "staticinsClassName"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    .line 357
    :cond_b
    invoke-static {v0, v8, v5}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v0

    .line 362
    goto :goto_7

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .restart local v0
    :try_start_4
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==1==divhee=============helpCallback_InnerFieldEvent=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :goto_7
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 372
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v8, "field_name"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 375
    :catch_2
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==2==divhee=============helpCallback_InnerFieldEvent=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0
    :goto_8
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    .end local v5
    .end local v6
    goto/16 :goto_18

    .line 292
    :pswitch_3    # 0xa
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    if-eqz v3, :cond_21

    const-string v0, "menthod_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 294
    :cond_c
    const-string v0, "key_arg_num"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v5, v0

    .line 295
    .local v5, "keyArgNum":I
    nop

    .line 297
    const-string v0, "void"

    .line 298
    .local v0, "resultType":Ljava/lang/String;
    const-string v6, "result_type"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 299
    const-string v6, "result_type"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_9

    .line 301
    :cond_d
    move-object v6, v0

    .end local v0
    .local v6, "resultType":Ljava/lang/String;
    :goto_9
    const-string v0, "menthod_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 302
    .local v15, "menthodName":Ljava/lang/String;
    const-string v0, "result_default"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "result_default"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_a

    :cond_e
    move-object v12, v8

    .line 303
    .local v12, "objRet":Ljava/lang/Object;
    :goto_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "void"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v0, :cond_f

    goto/16 :goto_10

    .line 316
    :cond_f
    :try_start_7
    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    move-object v9, v0

    goto :goto_b

    .line 316
    :cond_10
    nop

    .line 317
    move-object v9, v8

    :goto_b
    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    move-object v10, v0

    goto :goto_c

    .line 317
    :cond_11
    nop

    .line 319
    move-object v10, v8

    :goto_c
    const-string v0, "argClass"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "argClass"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 320
    move-object v13, v0

    goto :goto_d

    .line 319
    :cond_12
    nop

    .line 320
    move-object v13, v8

    :goto_d
    const-string v0, "argValue"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "argValue"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    nop

    .line 316
    :cond_13
    move-object v14, v8

    move-object v11, v15

    invoke-static/range {v9 .. v14}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .end local v12
    .local v0, "objRet":Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    nop

    .line 333
    move-object v12, v0

    goto :goto_e

    .line 322
    .end local v0
    .restart local v12
    :catch_3
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==1==divhee=============helpCallback_InnerMenthodEvent=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_e
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v8, "menthod_name"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_f

    .line 337
    :catch_4
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==2==divhee=============helpCallback_InnerMenthodEvent=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :goto_f
    move-object v8, v15

    goto/16 :goto_16

    .line 305
    :cond_14
    :goto_10
    :try_start_b
    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-eqz v0, :cond_15

    :try_start_c
    const-string v0, "instance"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object v13, v0

    goto :goto_11

    .line 311
    :catch_5
    move-exception v0

    move-object v8, v15

    goto :goto_14

    .line 305
    :cond_15
    nop

    .line 306
    move-object v13, v8

    :goto_11
    :try_start_d
    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v0, :cond_16

    :try_start_e
    const-string v0, "staticinsClassName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    move-object v14, v0

    goto :goto_12

    :cond_16
    move-object v14, v8

    :goto_12
    const/16 v16, 0x0

    .line 308
    :try_start_f
    const-string v0, "argClass"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-eqz v0, :cond_17

    :try_start_10
    const-string v0, "argClass"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 309
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    move-object/from16 v17, v0

    goto :goto_13

    .line 308
    :cond_17
    nop

    .line 309
    move-object/from16 v17, v8

    :goto_13
    :try_start_11
    const-string v0, "argValue"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    if-eqz v0, :cond_18

    :try_start_12
    const-string v0, "argValue"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    nop

    .line 305
    :cond_18
    move-object/from16 v18, v8

    move-object v8, v15

    .end local v15
    .local v8, "menthodName":Ljava/lang/String;
    :try_start_13
    invoke-static/range {v13 .. v18}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_15

    .line 311
    :catch_6
    move-exception v0

    goto :goto_14

    .end local v8
    .restart local v15
    :catch_7
    move-exception v0

    move-object v8, v15

    .line 312
    .end local v15
    .restart local v0
    .restart local v8
    :goto_14
    :try_start_14
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==0==divhee=============helpCallback_InnerMenthodEvent=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0
    :goto_15
    nop

    .line 342
    :goto_16
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    .end local v5
    .end local v6
    .end local v8
    .end local v12
    goto/16 :goto_18

    .line 254
    :pswitch_4    # 0x9
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    if-eqz v3, :cond_21

    const-string v0, "action"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 256
    const-string v0, "action"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v5, "intent2":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/android/settings/SettingsSharedContentProvider;->getActionSupportBroadcastReceivers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "bdcName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 265
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    const-string v9, "helpPartBroadcastReceiverEvent"

    invoke-virtual {v8, v3, v9}, Lcom/android/settings/SettingsApp;->printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 266
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "===divhee===============helpPartBroadcastReceiverEvent==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-class v8, Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 268
    new-instance v8, Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {v8}, Lcom/android/settings/SettingsBootCompletedReceiver;-><init>()V

    .line 269
    .local v8, "ss":Lcom/android/settings/SettingsBootCompletedReceiver;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/settings/SettingsBootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 270
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    .end local v8
    goto :goto_17

    :cond_19
    const-class v8, Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 272
    new-instance v8, Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-direct {v8}, Lcom/android/settings/SettingsCleanCachedReceiver;-><init>()V

    .line 273
    .local v8, "cc":Lcom/android/settings/SettingsCleanCachedReceiver;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/settings/SettingsCleanCachedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 274
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    .end local v0
    .end local v5
    .end local v6
    .end local v8
    :cond_1a
    :goto_17
    goto/16 :goto_18

    .line 243
    :pswitch_5    # 0x8
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    if-eqz v3, :cond_21

    const-string v0, "pkgNameList"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 245
    const-string v0, "pkgNameList"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1b

    .line 247
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/PadModeSettings;->removeSomeTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 248
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    .end local v0
    :cond_1b
    goto/16 :goto_18

    .line 231
    :pswitch_6    # 0x7
    if-eqz v3, :cond_21

    const-string v0, "pkgNames"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 232
    const-string v0, "action"

    const-string v5, "add"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "needAction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "add"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "remove"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 234
    :cond_1c
    const-string v5, "add"

    move-object v0, v5

    .line 236
    :cond_1d
    const-string v5, "pkgNames"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "add"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/SettingsSharedContentProvider;->helpAddPowerSaveWhitelistApp(Ljava/lang/String;Z)Z

    move-result v5

    .line 237
    .local v5, "result":Z
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    .end local v0
    .end local v5
    goto/16 :goto_18

    .line 223
    :pswitch_7    # 0x6
    if-eqz v3, :cond_21

    .line 224
    invoke-virtual {v1, v3}, Lcom/android/settings/SettingsSharedContentProvider;->readDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "bundle1":Landroid/os/Bundle;
    if-eqz v0, :cond_1e

    .line 226
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 228
    .end local v0
    :cond_1e
    goto/16 :goto_18

    .line 218
    :pswitch_8    # 0x5
    if-eqz v3, :cond_21

    .line 219
    invoke-static/range {p3 .. p3}, Lcom/android/settings/SettingsSharedContentProvider;->saveDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Z

    goto/16 :goto_18

    .line 206
    :pswitch_9    # 0x4
    const-string v0, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===1=divhee===============call==method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v3, :cond_21

    const-string v0, "action"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 208
    const-string v0, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==2==divhee===============call==method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v5, "HelperSettingsReceiver"

    invoke-virtual {v0, v3, v5}, Lcom/android/settings/SettingsApp;->printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    const-string v5, "action"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    new-instance v5, Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {v5}, Lcom/android/settings/SettingsBootCompletedReceiver;-><init>()V

    .line 214
    .local v5, "ss":Lcom/android/settings/SettingsBootCompletedReceiver;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/settings/SettingsBootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 215
    .end local v0
    .end local v5
    goto/16 :goto_18

    .line 199
    :pswitch_a    # 0x3
    if-eqz v3, :cond_21

    const-string v0, "key_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "table_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "key_value"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/SettingsBootCompletedReceiver;->RecordDataToSystemProviderBySettings(Landroid/content/Context;Landroid/content/Intent;)V

    .line 203
    .end local v0
    goto :goto_18

    .line 189
    :pswitch_b    # 0x2
    if-eqz v3, :cond_21

    const-string v0, "table_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "key_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "key_value"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .restart local v0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/SettingsBootCompletedReceiver;->ReadDataFromSystemProviderBySettings(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 193
    .local v5, "bundle1":Landroid/os/Bundle;
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 194
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 196
    .end local v0
    .end local v5
    :cond_1f
    goto :goto_18

    .line 183
    :pswitch_c    # 0x1
    if-eqz v3, :cond_21

    .line 184
    invoke-static {}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getKillappSharedPreferencesData()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v0
    goto :goto_18

    .line 175
    :pswitch_d    # 0x0
    if-eqz v3, :cond_21

    .line 176
    invoke-virtual {v1, v3}, Lcom/android/settings/SettingsSharedContentProvider;->checkDelayTimeInFwqCfgByPackageName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "bundleRet":Landroid/os/Bundle;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 178
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 180
    .end local v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    :cond_20
    nop

    .line 430
    :cond_21
    :goto_18
    goto :goto_19

    .line 427
    :catch_8
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    const-string v5, "error_msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v0
    :goto_19
    return-object v4

    .line 169
    :cond_22
    :goto_1a
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76874436 -> :sswitch_19
        -0x6ee39a6f -> :sswitch_18
        -0x665e1459 -> :sswitch_17
        -0x5f5c776b -> :sswitch_16
        -0x2fd9e4ed -> :sswitch_15
        -0x2ed1453b -> :sswitch_14
        -0x2bba9c7c -> :sswitch_13
        -0x2a39e4e0 -> :sswitch_12
        -0x1a7bf1ec -> :sswitch_11
        -0x14ca2930 -> :sswitch_10
        -0x14745c24 -> :sswitch_f
        -0xc4c4305 -> :sswitch_e
        -0x7d0e274 -> :sswitch_d
        -0x5fe4714 -> :sswitch_c
        0x4b69277 -> :sswitch_b
        0x16f3532b -> :sswitch_a
        0x237ac816 -> :sswitch_9
        0x273d5e35 -> :sswitch_8
        0x3d37f930 -> :sswitch_7
        0x475c5f01 -> :sswitch_6
        0x4bbef29e -> :sswitch_5
        0x4cc79250 -> :sswitch_4
        0x5a7c37fc -> :sswitch_3
        0x720a05ef -> :sswitch_2
        0x76544f3f -> :sswitch_1
        0x7c5dacdb -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d    # 0x0
        :pswitch_c    # 0x1
        :pswitch_b    # 0x2
        :pswitch_a    # 0x3
        :pswitch_9    # 0x4
        :pswitch_8    # 0x5
        :pswitch_7    # 0x6
        :pswitch_6    # 0x7
        :pswitch_5    # 0x8
        :pswitch_4    # 0x9
        :pswitch_3    # 0xa
        :pswitch_2    # 0xb
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
        :pswitch_0    # 0xe
        :pswitch_0    # 0xf
        :pswitch_0    # 0x10
        :pswitch_0    # 0x11
        :pswitch_0    # 0x12
        :pswitch_0    # 0x13
        :pswitch_0    # 0x14
        :pswitch_0    # 0x15
        :pswitch_0    # 0x16
        :pswitch_0    # 0x17
        :pswitch_0    # 0x18
        :pswitch_0    # 0x19
    .end packed-switch
.end method

.method public checkDelayTimeInFwqCfgByPackageName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 27
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 607
    move-object/from16 v1, p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 608
    .local v2, "resultBD":Landroid/os/Bundle;
    const-string v0, "code"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "reqPkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "reqPkgName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    const-string v4, "reqPkgName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .end local v0
    .local v4, "reqPkgName":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 614
    const-string v0, "filterPkgNames"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "filterPkgNames"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 615
    .local v0, "filterKeyNames":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 616
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_2
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .end local v0
    .local v5, "filterKeyNames":Ljava/lang/String;
    :cond_3
    move-object v5, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v6, v0

    .line 626
    .local v6, "tempBD2021":Landroid/os/Bundle;
    const-string v0, "callme"

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Lcom/android/settings/SettingsSharedContentProvider;->readDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 629
    .local v8, "tempBD":Landroid/os/Bundle;
    if-eqz v8, :cond_13

    .line 630
    const-string v0, "code"

    const/4 v9, 0x1

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    const-string v0, "delay"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    const-string v0, "content"

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "contentValue":Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 634
    .local v9, "modelName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 635
    .local v0, "mdExtraName":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v10, "reqMdExtraName"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 636
    const-string v10, "reqMdExtraName"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 639
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 658
    :pswitch_0    # 0x1f
    const-string v0, "models_and12"

    goto :goto_1

    .line 655
    :pswitch_1    # 0x1e
    const-string v0, "models_and11"

    .line 656
    goto :goto_1

    .line 652
    :pswitch_2    # 0x1d
    const-string v0, "models_and10"

    .line 653
    goto :goto_1

    .line 649
    :pswitch_3    # 0x1c
    const-string v0, "models_and9"

    .line 650
    goto :goto_1

    .line 646
    :pswitch_4    # 0x1b 0x1a
    const-string v0, "models_and8"

    .line 647
    goto :goto_1

    .line 642
    :pswitch_5    # 0x19 0x18
    const-string v0, "models_and7"

    .line 643
    nop

    .line 662
    .end local v0
    .local v10, "mdExtraName":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v10, v0

    const/4 v11, 0x0

    .line 664
    .local v11, "isFindOutDelay":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 666
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 667
    .local v12, "jsonArray1":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_2
    move v14, v0

    .end local v0
    .local v14, "inum":I
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v14, v0, :cond_11

    if-nez v11, :cond_11

    .line 668
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v15, v0

    .line 669
    .local v15, "jsonObjectSon2":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 670
    .local v0, "filterName":Ljava/lang/String;
    const-string v13, "PkgName"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v13, :cond_6

    .line 671
    :try_start_1
    const-string v13, "PkgName"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v13

    goto :goto_3

    .line 718
    .end local v0
    .end local v12
    .end local v14
    .end local v15
    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    goto/16 :goto_c

    .line 674
    .restart local v0
    .restart local v12
    .restart local v14
    .restart local v15
    :cond_6
    move-object v13, v0

    .end local v0
    .local v13, "filterName":Ljava/lang/String;
    :goto_3
    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    if-nez v0, :cond_8

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 667
    .end local v13
    .end local v15
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    goto/16 :goto_b

    .line 675
    .restart local v13
    .restart local v15
    :cond_8
    :goto_4
    :try_start_4
    const-string v0, "Prop"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    if-eqz v0, :cond_10

    .line 677
    :try_start_5
    const-string v0, "Prop"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 678
    .local v1, "propStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 679
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 680
    .local v16, "jsonChildArray3":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "ison":I
    :goto_5
    move/from16 v17, v0

    .end local v0
    .local v17, "ison":I
    move-object/from16 v18, v1

    move-object/from16 v1, v16

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .end local v16
    .local v1, "jsonChildArray3":Lorg/json/JSONArray;
    .local v18, "propStr":Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-object/from16 v19, v3

    move/from16 v3, v17

    if-ge v3, v0, :cond_e

    .end local v17
    .local v3, "ison":I
    .local v19, "contentValue":Ljava/lang/String;
    if-nez v11, :cond_e

    .line 681
    :try_start_6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v20, v0

    .line 682
    .local v20, "jsobjSon4":Lorg/json/JSONObject;
    const-string v0, "pkg_name"

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .end local v20
    .local v1, "jsobjSon4":Lorg/json/JSONObject;
    .local v21, "jsonChildArray3":Lorg/json/JSONArray;
    if-eqz v0, :cond_c

    const-string v0, "pkg_name"

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v22, v5

    :try_start_7
    const-string v5, ""

    .end local v5
    .local v22, "filterKeyNames":Ljava/lang/String;
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 684
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 685
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v5, v0

    .line 686
    .local v5, "jsonSonObj5":Lorg/json/JSONObject;
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v0, :cond_9

    .line 688
    :try_start_8
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, "delayTime":I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v23, v4

    :try_start_9
    const-string v4, "delay"

    .end local v4
    .local v23, "reqPkgName":Ljava/lang/String;
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 691
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const/4 v11, 0x1

    .line 694
    .end local v0
    nop

    .line 696
    move-object/from16 v25, v6

    goto :goto_7

    .line 692
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v23
    .restart local v4
    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    .line 693
    .end local v4
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23
    :goto_6
    :try_start_a
    const-string v4, ""

    move-object/from16 v24, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5
    .local v24, "jsonSonObj5":Lorg/json/JSONObject;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v25, v6

    :try_start_b
    const-string v6, "====81====divhee==================check_DelayTimeInFwqCfgByPackageName="

    .end local v6
    .local v25, "tempBD2021":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    .end local v24
    goto :goto_7

    .line 712
    .end local v1
    .end local v3
    .end local v18
    .end local v21
    .end local v25
    .restart local v6
    :catch_3
    move-exception v0

    move-object/from16 v25, v6

    .end local v6
    .restart local v25
    goto/16 :goto_a

    .line 696
    .end local v23
    .end local v25
    .restart local v1
    .restart local v3
    .restart local v4
    .restart local v6
    .restart local v18
    .restart local v21
    :cond_9
    move-object/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4
    .end local v6
    .restart local v23
    .restart local v25
    :goto_7
    goto :goto_8

    .end local v23
    .end local v25
    .restart local v4
    .restart local v6
    :cond_a
    move-object/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4
    .end local v6
    .restart local v23
    .restart local v25
    const-string v0, "models"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 697
    const-string v0, "models"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 698
    .local v4, "jsonSonObj5":Lorg/json/JSONObject;
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    if-eqz v0, :cond_d

    .line 700
    :try_start_c
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 701
    .local v0, "delayTime":I
    const-string v5, "delay"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/4 v11, 0x1

    .line 706
    .end local v0
    goto :goto_8

    .line 704
    :catch_4
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v1

    const-string v1, "====82====divhee==================check_DelayTimeInFwqCfgByPackageName="

    .end local v1
    .local v26, "jsobjSon4":Lorg/json/JSONObject;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    .end local v4
    .end local v26
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_8

    .line 712
    .end local v3
    .end local v18
    .end local v21
    :catch_5
    move-exception v0

    goto :goto_a

    .line 680
    .end local v23
    .end local v25
    .restart local v3
    .local v4, "reqPkgName":Ljava/lang/String;
    .restart local v6
    .restart local v18
    .restart local v21
    :cond_b
    move-object/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4
    .end local v6
    .restart local v23
    .restart local v25
    goto :goto_8

    .line 712
    .end local v3
    .end local v18
    .end local v21
    .end local v23
    .end local v25
    .restart local v4
    .restart local v6
    :catch_6
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4
    .end local v6
    .restart local v23
    .restart local v25
    goto :goto_a

    .line 680
    .end local v22
    .end local v23
    .end local v25
    .restart local v3
    .restart local v4
    .local v5, "filterKeyNames":Ljava/lang/String;
    .restart local v6
    .restart local v18
    .restart local v21
    :cond_c
    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v4
    .end local v5
    .end local v6
    .restart local v22
    .restart local v23
    .restart local v25
    :cond_d
    :goto_8
    add-int/lit8 v0, v3, 0x1

    .end local v3
    .local v0, "ison":I
    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v16, v21

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v25

    goto/16 :goto_5

    .line 712
    .end local v0
    .end local v18
    .end local v21
    .end local v22
    .end local v23
    .end local v25
    .restart local v4
    .restart local v5
    .restart local v6
    :catch_7
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v4
    .end local v5
    .end local v6
    .restart local v22
    .restart local v23
    .restart local v25
    goto :goto_a

    .line 714
    .end local v22
    .end local v23
    .end local v25
    .restart local v4
    .restart local v5
    .restart local v6
    :cond_e
    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v4
    .end local v5
    .end local v6
    .restart local v22
    .restart local v23
    .restart local v25
    goto :goto_9

    .end local v19
    .end local v22
    .end local v23
    .end local v25
    .local v3, "contentValue":Ljava/lang/String;
    .restart local v4
    .restart local v5
    .restart local v6
    :cond_f
    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .restart local v19
    .restart local v22
    .restart local v23
    .restart local v25
    :goto_9
    goto :goto_b

    .line 712
    .end local v19
    .end local v22
    .end local v23
    .end local v25
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    :catch_8
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .line 713
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19
    .restart local v22
    .restart local v23
    .restart local v25
    :goto_a
    :try_start_e
    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====9====divhee==================check_DelayTimeInFwqCfgByPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    .end local v13
    .end local v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    .line 718
    .end local v12
    .end local v14
    :catch_9
    move-exception v0

    goto :goto_c

    .line 667
    .end local v19
    .end local v22
    .end local v23
    .end local v25
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v12
    .restart local v14
    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .restart local v19
    .restart local v22
    .restart local v23
    .restart local v25
    :goto_b
    add-int/lit8 v0, v14, 0x1

    .end local v14
    .local v0, "inum":I
    move-object/from16 v3, v19

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v25

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 720
    .end local v0
    .end local v12
    .end local v19
    .end local v22
    .end local v23
    .end local v25
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    :cond_11
    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .restart local v19
    .restart local v22
    .restart local v23
    .restart local v25
    goto :goto_d

    .line 718
    .end local v19
    .end local v22
    .end local v23
    .end local v25
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    :catch_a
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .line 719
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19
    .restart local v22
    .restart local v23
    .restart local v25
    :goto_c
    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====10====divhee==================check_DelayTimeInFwqCfgByPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v19
    .end local v22
    .end local v25
    goto :goto_d

    .line 724
    .end local v23
    .restart local v4
    :cond_12
    move-object/from16 v7, p0

    :cond_13
    move-object/from16 v23, v4

    .end local v4
    .restart local v23
    :goto_d
    return-object v2

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5    # 0x18
        :pswitch_5    # 0x19
        :pswitch_4    # 0x1a
        :pswitch_4    # 0x1b
        :pswitch_3    # 0x1c
        :pswitch_2    # 0x1d
        :pswitch_1    # 0x1e
        :pswitch_0    # 0x1f
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getActionSupportBroadcastReceivers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 493
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 496
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 497
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v2

    .line 499
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public helpAddPowerSaveWhitelistApp(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "pkgNameStr"    # Ljava/lang/String;
    .param p2, "addOrRemove"    # Z

    .line 509
    const/4 v0, 0x0

    move v1, v0

    .line 511
    .local v1, "bResult":Z
    :try_start_0
    const-string v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    .line 512
    .local v2, "mDeviceIdleService":Landroid/os/IDeviceIdleController;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "pkgNames":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 514
    nop

    .local v0, "inum":I
    :goto_0
    array-length v4, v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v0, v4, :cond_1

    .line 516
    :try_start_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "===divhee====================addPowerSaveWhitelistApp===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-eqz p2, :cond_0

    .line 518
    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_0
    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 522
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v1, 0x1

    .line 527
    :goto_2
    goto :goto_3

    .line 525
    :catch_0
    move-exception v4

    .line 526
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, ""

    const-string v6, "=2==divhee===Unable to reach IDeviceIdleController"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4
    goto :goto_3

    .line 523
    :catch_1
    move-exception v4

    .line 524
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, ""

    const-string v6, "=1==divhee===Unable to reach IDeviceIdleController"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 514
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .end local v0
    .end local v2
    .end local v3
    :cond_1
    goto :goto_4

    .line 539
    :catch_2
    move-exception v0

    .line 541
    :goto_4
    return v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 88
    sget-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0    # 0x2
    goto :goto_0

    .line 90
    :pswitch_1    # 0x1
    const-string v0, "aaa"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "aaa":Ljava/lang/String;
    const-string v1, "mmm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsSharedContentProvider;->notifyDataChanged()V

    .line 94
    nop

    .line 99
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0    # 0x2
    goto :goto_0

    .line 115
    :pswitch_1    # 0x1
    const-string v0, "mmm"

    const-string v1, "queryAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    nop

    .line 125
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public readDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 583
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "msgc_vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "callme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgc_vid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "callme"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/settings/database/StacksDatabase;->queryMsgCS(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;

    move-result-object v0

    .line 585
    .local v0, "savdMsgCenter":Lcom/android/settings/database/MessageCenter;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 587
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v1, v0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 589
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 590
    .end local v1
    :catch_0
    move-exception v1

    .end local v0
    goto :goto_0

    .line 595
    :catch_1
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 597
    :cond_0
    :goto_0
    nop

    .line 598
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/android/settings/SettingsSharedContentProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0    # 0x2
    goto :goto_0

    .line 137
    :pswitch_1    # 0x1
    const-string v0, "mmm"

    const-string v1, "updateAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    nop

    .line 143
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
