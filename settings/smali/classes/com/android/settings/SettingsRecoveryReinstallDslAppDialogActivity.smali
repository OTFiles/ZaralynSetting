.class public Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;
.super Landroid/app/Activity;
.source "SettingsRecoveryReinstallDslAppDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mPromptApkPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPromptPadInner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btn_dialog_cancel:Landroid/widget/TextView;

.field private btn_dialog_ok:Landroid/widget/TextView;

.field private mDialogId:I

.field private mHandler:Landroid/os/Handler;

.field private tv_dialog_msg:Landroid/widget/TextView;

.field private tv_dialog_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Y41_Q10"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptPadInner:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.arithmetic"

    const-string v2, "com.readboy.elabin"

    const-string v3, "com.dinghmcn.android.wificonnectclient"

    const-string v4, "com.readboy.Q.FeedHorse"

    const-string v5, "com.readboy.hanziace"

    const-string v6, "com.readboy.hanzidataanalysis"

    const-string v7, "com.readboy.hanzitingxie"

    const-string v8, "com.readboy.Q.HappyDoodle"

    const-string v9, "com.readboy.Q.hgmountion"

    const-string v10, "com.readboy.idiomdoyen"

    const-string v11, "com.readboy.lettercourse"

    const-string v12, "com.readboy.lus"

    const-string v13, "com.readboy.mathproblem"

    const-string v14, "com.readboy.eden.microclass"

    const-string v15, "com.readboy.netpkplatform"

    const-string v16, "com.readboy.rabbitgetradish"

    const-string v17, "android.dream.cn.rbrecite"

    const-string v18, "com.readboy.readonpaper"

    const-string v19, "com.readboy.recitesquare"

    const-string v20, "com.readboy.sentencemaking"

    const-string v21, "com.readboy.sententialschool"

    const-string v22, "com.readboy.sheepeatcandy"

    const-string v23, "com.readboy.Q5.SmallSinger"

    const-string v24, "com.readboy.spellcourse"

    const-string v25, "com.readboy.sslx"

    const-string v26, "com.readboy.mentalcalculation"

    const-string v27, "com.readboy.train"

    const-string v28, "com.readboy.wordgame"

    const-string v29, "com.readboy.printer"

    const-string v30, "com.readboy.spokentreasure"

    const-string v31, "com.readboy.syncalligraphy"

    const-string v32, "com.readboy.wordbook"

    const-string v33, "com.dream.agingtest"

    const-string v34, "com.readboy.dailywords"

    const-string v35, "com.readboy.wordschool"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInterStoragePathRootFolder()Ljava/lang/String;
    .locals 2

    .line 574
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDslAppInstallFolderAndAppExists()Z
    .locals 4

    .line 525
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getInterStoragePathRootFolder()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "cacheLocalAppPath":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v1, "localAppListNeed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 529
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DslInstallApks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 532
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DslInstallApks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 534
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    invoke-static {v2, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 541
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 539
    :catch_0
    move-exception v2

    .line 540
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    .end local v2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public static isDslAppInstalledExsist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "alreadyExsistApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 493
    .local v1, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "inum":I
    :goto_0
    sget-object v4, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 494
    sget-object v4, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->isPkgInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    sget-object v4, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v3
    :cond_1
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "=====divhee===========isDslAppInstalledExsist=eeeeeee=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method

.method public static isNeedPrompteReInstallReadboyAppsDevice()Z
    .locals 7

    .line 398
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 399
    .local v0, "modelName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "Readboy_C20"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Readboy_C20Pro"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    return v2

    .line 402
    :cond_1
    const-string v1, "ro.build.product"

    const-string v3, "unkown"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "padProduct":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "msm8998"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "msm8996"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    :cond_2
    return v2

    .line 407
    :cond_3
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ro.readboy.internal.model"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "strInner":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 409
    move v5, v3

    .local v5, "inum":I
    :goto_0
    sget-object v6, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptPadInner:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 410
    sget-object v6, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptPadInner:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    .line 411
    return v2

    .line 409
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 416
    .end local v4
    .end local v5
    :cond_5
    goto :goto_1

    .line 415
    :catch_0
    move-exception v2

    .line 417
    :goto_1
    return v3
.end method

.method public static isPkgInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 511
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 513
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 516
    :cond_1
    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    .line 517
    :goto_0
    return v0
.end method

.method public static prompteUserInstallReadboyApps(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 427
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->isNeedPrompteReInstallReadboyAppsDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prompt_reinstall_readboy_app_lable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, "iret":I
    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====divhee=========prompteUserInstallReadboyApps======iret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 431
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prompt_reinstall_readboy_app_total"

    sget-object v5, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    move v3, v2

    .local v3, "inum":I
    :goto_0
    sget-object v4, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prompt_reinstall_readboy_app_number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prompt_reinstall_readboy_app_lable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 437
    invoke-static {p0, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->sendBroadcastForLauncherUpdateRecoveryOver(Landroid/content/Context;I)V

    .line 440
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->isDslAppInstallFolderAndAppExists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->isDslAppInstalledExsist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 445
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rby_guide_force_exit_flag"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 446
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee=========prompteUserInstallReadboyApps======iret7="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->startRrDslAppDialogUpdateIntentService(Landroid/content/Context;)V

    goto :goto_3

    .line 448
    :cond_3
    if-nez p1, :cond_4

    .line 450
    :try_start_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee=========prompteUserInstallReadboyApps======iret6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x1

    const v5, 0x7f120453

    const v6, 0x7f120b85

    const v7, 0x7f120b80

    const v8, 0x7f120b7f

    const/4 v9, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0
    .end local v1
    :goto_1
    goto :goto_3

    .line 462
    .restart local v0
    :cond_4
    const-string v1, ""

    const-string v2, "====divhee=========prompteUserInstallReadboyApps======iret3="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;-><init>(ILandroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0
    goto :goto_3

    .line 441
    .restart local v0
    :cond_5
    :goto_2
    const-string v1, ""

    const-string v2, "====divhee=========prompteUserInstallReadboyApps======iret4="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prompt_reinstall_readboy_app_lable"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-static {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->sendBroadcastForLauncherUpdateRecoveryOver(Landroid/content/Context;I)V

    .line 484
    .end local v0
    :cond_6
    :goto_3
    return-void
.end method

.method private static searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "fileold"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 553
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 554
    const/4 v1, 0x0

    .local v1, "jId":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 555
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=======divhee=========searchPreInstallApp========"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 564
    :cond_0
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 554
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v0
    .end local v1
    :cond_2
    goto :goto_2

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    .end local v0
    :goto_2
    return-void
.end method

.method public static sendBroadcastForLauncherUpdateRecoveryOver(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionType"    # I

    .line 380
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee=============send_BroadcastForLauncherUpdateRecoveryOver===10=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz p0, :cond_0

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.readboy.recovery.reinstall_app_list_saved"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "savedPreList":Landroid/content/Intent;
    const-string v1, "action_stpe"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 385
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=====divhee=============send_BroadcastForLauncherUpdateRecoveryOver===2=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    .end local v0
    :goto_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee=============send_BroadcastForLauncherUpdateRecoveryOver===3=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method public static startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialgID"    # I
    .param p2, "titleResId"    # I
    .param p3, "msgResId"    # I
    .param p4, "cancleResId"    # I
    .param p5, "okResId"    # I
    .param p6, "outsideClose"    # Z

    .line 355
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsRecoveryReinstallDslAppDialogActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v1, "dlg_title_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v1, "dlg_msg_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v1, "dlg_tpout_close"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    if-lez p4, :cond_0

    .line 363
    const-string v1, "dlg_cancel_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    :cond_0
    if-lez p5, :cond_1

    .line 366
    const-string v1, "dlg_ok_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v0
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method

.method public initDialogDisplay()V
    .locals 7

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f120453

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    const v4, 0x7f120b8a

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_ok_id"

    const v4, 0x7f120b81

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_cancel_id"

    const v4, 0x7f120b82

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_tpout_close"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dialog_id"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_tpout_close"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_title_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_txt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_title_txt"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "strMsgId":I
    const v3, 0x7f120b85

    if-ne v3, v0, :cond_5

    .line 169
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 170
    .local v3, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 171
    .local v1, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .end local v1
    .end local v3
    goto :goto_2

    .line 172
    .restart local v1
    .restart local v3
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120b8c

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v1
    .end local v3
    :goto_2
    goto :goto_3

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    .end local v0
    :goto_3
    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dlg_msg_txt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "dlg_msg_txt"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dlg_ok_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    .line 184
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_ok_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_ok_txt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_ok_txt"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_cancel_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "dlg_cancel_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 192
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dlg_cancel_txt"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dlg_cancel_txt"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 195
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .line 214
    if-nez p1, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 219
    :pswitch_0    # 0x7f0a0098
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v5, :cond_4

    .line 220
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 221
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 222
    .local v1, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 223
    .local v2, "mobile":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const/4 v7, 0x2

    const v8, 0x7f120453

    const v9, 0x7f120b8a

    const v10, 0x7f120b82

    const v11, 0x7f120b81

    const/4 v12, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V

    goto :goto_0

    .line 231
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v5

    nop

    :cond_2
    invoke-virtual {p0, p0, v4}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startReadboyAppStorePreInstallReadboyApps(Landroid/content/Context;Z)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p0, p0, v5}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startWifiConnectActivity(Landroid/content/Context;Z)V

    .line 236
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    goto/16 :goto_3

    :cond_4
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v2, :cond_9

    .line 237
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 238
    .restart local v0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 239
    .restart local v1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 240
    .restart local v2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_5

    move v4, v5

    nop

    :cond_5
    invoke-virtual {p0, p0, v4}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startReadboyAppStorePreInstallReadboyApps(Landroid/content/Context;Z)V

    goto :goto_1

    .line 242
    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 243
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_7

    move v4, v5

    nop

    :cond_7
    invoke-virtual {p0, p0, v4}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startReadboyAppStorePreInstallReadboyApps(Landroid/content/Context;Z)V

    goto :goto_1

    .line 245
    :cond_8
    invoke-virtual {p0, p0, v5}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startWifiConnectActivity(Landroid/content/Context;Z)V

    .line 247
    .end local v0
    .end local v1
    .end local v2
    :goto_1
    goto/16 :goto_3

    :cond_9
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v1, :cond_a

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    goto/16 :goto_3

    .line 249
    :cond_a
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v3, :cond_b

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DialogResult"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->setResultAction(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    .line 254
    .end local v0
    goto/16 :goto_3

    .line 255
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    .line 257
    goto/16 :goto_3

    .line 259
    :pswitch_1    # 0x7f0a0097
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v5, :cond_c

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prompt_reinstall_readboy_app_lable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-static {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->sendBroadcastForLauncherUpdateRecoveryOver(Landroid/content/Context;I)V

    .line 262
    const/4 v5, 0x3

    const v6, 0x7f120453

    const v7, 0x7f120b86

    const/4 v8, 0x0

    const v9, 0x7f120b7e

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    .line 269
    :cond_c
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v2, :cond_f

    .line 270
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 272
    .restart local v1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 273
    .restart local v2
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 274
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_d

    move v4, v5

    nop

    :cond_d
    invoke-virtual {p0, p0, v4}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startReadboyAppStorePreInstallReadboyApps(Landroid/content/Context;Z)V

    goto :goto_2

    .line 276
    :cond_e
    invoke-virtual {p0, p0, v5}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startWifiConnectActivity(Landroid/content/Context;Z)V

    .line 278
    .end local v0
    .end local v1
    .end local v2
    :goto_2
    goto :goto_3

    :cond_f
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v1, :cond_10

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    goto :goto_3

    .line 280
    :cond_10
    iget v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mDialogId:I

    if-ne v0, v3, :cond_11

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DialogResult"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->setResultAction(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    .line 285
    .end local v0
    goto :goto_3

    .line 286
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->userDismissDialog()V

    .line 290
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0097
        :pswitch_1    # 0x7f0a0097
        :pswitch_0    # 0x7f0a0098
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 119
    const v0, 0x7f0d0177

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 121
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 122
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 123
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd7ae147ae147aeL    # 0.37

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 124
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 129
    const v3, 0x7f0a0098

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f0a0097

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    .line 132
    iget-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v3, 0x7f0a048a

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    .line 134
    const v3, 0x7f0a0489

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->initDialogDisplay()V

    .line 138
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 144
    const-string v0, ""

    const-string v1, "====divhee==========onNewIntent======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->initDialogDisplay()V

    .line 146
    return-void
.end method

.method public startReadboyAppStorePreInstallReadboyApps(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSimData"    # Z

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prompt_reinstall_readboy_app_lable"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    invoke-static {p0, v2}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->sendBroadcastForLauncherUpdateRecoveryOver(Landroid/content/Context;I)V

    .line 325
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.dream.android.appstore"

    const-string v3, "cn.dream.android.appstore.manager.update.PreInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 327
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    const-string v1, "appList"

    sget-object v2, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->mPromptApkPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 329
    const-string v1, "type"

    const-string v2, "reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "callme"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 335
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    .end local v0
    :goto_0
    if-eqz p2, :cond_0

    const v0, 0x7f120b88

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_0
    const v0, 0x7f120b89

    goto :goto_1

    .line 338
    .local v4, "tipStringId":I
    :goto_2
    const/4 v2, 0x3

    const v3, 0x7f120453

    const/4 v5, 0x0

    const v6, 0x7f120b7e

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V

    .line 345
    return-void
.end method

.method public startWifiConnectActivity(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showToast"    # Z

    .line 298
    if-eqz p2, :cond_0

    .line 299
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f120b8c

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_1

    .line 301
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intentWifi":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 304
    :goto_1
    nop

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    .end local v0
    :goto_2
    return-void
.end method

.method public userDismissDialog()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->finish()V

    .line 204
    return-void
.end method
