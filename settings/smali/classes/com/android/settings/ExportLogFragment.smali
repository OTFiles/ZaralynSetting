.class public Lcom/android/settings/ExportLogFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ExportLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;
    }
.end annotation


# static fields
.field public static export_log_bug_folder:Ljava/lang/String;


# instance fields
.field private LogTaskHandler:[Landroid/os/Handler;

.field private final MSG_LOG_EXPORT_CMD_1:I

.field private final MSG_LOG_EXPORT_CMD_2:I

.field private final MSG_LOG_EXPORT_CMD_3:I

.field private final MSG_LOG_EXPORT_CMD_4:I

.field public final REQUEST_PARENT_PASSWORD_CHECK_ExportLog:I

.field private export_log_action_1:Landroid/support/v7/preference/Preference;

.field private export_log_action_2:Landroid/support/v7/preference/Preference;

.field private export_log_action_3:Landroid/support/v7/preference/Preference;

.field private export_log_action_4:Landroid/support/v7/preference/Preference;

.field private export_log_result_fail:Ljava/lang/String;

.field private export_log_result_ok:Ljava/lang/String;

.field handlerLogThread:[Landroid/os/HandlerThread;

.field public isParentPasswordCheckPassed:I

.field private mHandler:Landroid/os/Handler;

.field public mIsNowParentManagerShowing:I

.field private mListContainer:Landroid/view/View;

.field private mReadboyExportLogType:I

.field private onSendEmailEvent1:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

.field private onSendEmailEvent4:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "/storage/emulated/0/bugLogs"

    sput-object v0, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    .line 68
    const v0, 0x10011

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->MSG_LOG_EXPORT_CMD_1:I

    .line 69
    const v0, 0x10012

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->MSG_LOG_EXPORT_CMD_2:I

    .line 70
    const v0, 0x10013

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->MSG_LOG_EXPORT_CMD_3:I

    .line 71
    const v0, 0x10014

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->MSG_LOG_EXPORT_CMD_4:I

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->mHandler:Landroid/os/Handler;

    .line 75
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->REQUEST_PARENT_PASSWORD_CHECK_ExportLog:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/ExportLogFragment;->mIsNowParentManagerShowing:I

    .line 80
    iput v0, p0, Lcom/android/settings/ExportLogFragment;->mReadboyExportLogType:I

    .line 435
    new-instance v0, Lcom/android/settings/ExportLogFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ExportLogFragment$3;-><init>(Lcom/android/settings/ExportLogFragment;)V

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->onSendEmailEvent1:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    .line 533
    new-instance v0, Lcom/android/settings/ExportLogFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ExportLogFragment$4;-><init>(Lcom/android/settings/ExportLogFragment;)V

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->onSendEmailEvent4:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ExportLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ExportLogFragment;

    .line 48
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public appLogsExport1()V
    .locals 10

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
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

    .line 461
    .local v1, "leadOutLogFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SendEmailThread;->getLogcatInfo()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "readedLogContent":Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    const-string v7, "==divhee====appLogsExport1==in=="

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
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

    .line 465
    const-string v4, "logcat -d -v time -f %s/%s_logcat.txt"

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {v0, v5}, Lcom/android/settings/ShellUtils;->execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v4

    .line 468
    .local v4, "result":Lcom/android/settings/ShellUtils$CommandResult;
    if-eqz v4, :cond_0

    .line 469
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport1==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport1==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport1==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    const-string v7, ""

    const-string v8, "==divhee====appLogsExport1==end=="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v4

    .line 476
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport1==error=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    const-string v8, "%s : bugLogs/%s_logcat.txt"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_fail:Ljava/lang/String;

    aput-object v9, v2, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v5}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 480
    .end local v4
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v4, "\u5f00\u59cb\u4e0a\u4f20\u65e5\u5fd7\uff0c\u8bf7\u4e0d\u8981\u9000\u51fa\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4f1a\uff0c\u8c22\u8c22\uff01"

    invoke-virtual {v2, v4, v6}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 482
    :try_start_1
    new-instance v2, Lcom/android/settings/SendEmailThread;

    iget-object v4, p0, Lcom/android/settings/ExportLogFragment;->onSendEmailEvent1:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings/SendEmailThread;-><init>(Ljava/lang/String;Lcom/android/settings/SendEmailThread$OnSendEmailEvent;Ljava/lang/String;)V

    .line 483
    .local v2, "thread":Lcom/android/settings/SendEmailThread;
    invoke-virtual {v2}, Lcom/android/settings/SendEmailThread;->start()V

    .line 485
    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 484
    :catch_1
    move-exception v2

    .line 487
    :goto_1
    return-void
.end method

.method public appLogsExport2()V
    .locals 9

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "commnandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, ""

    const-string v5, "==divhee====appPrintSystemLog2==in=="

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v4, "rm -r     %s/%s_dump.txt"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v4, "dumpsys > %s/%s_dump.txt"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {v0, v3}, Lcom/android/settings/ShellUtils;->execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v4

    .line 497
    .local v4, "result":Lcom/android/settings/ShellUtils$CommandResult;
    if-eqz v4, :cond_0

    .line 498
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appPrintSystemLog2==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appPrintSystemLog2==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appPrintSystemLog2==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    const-string v6, "%s : bugLogs/%s_dump.txt"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_ok:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 503
    const-string v5, ""

    const-string v6, "==divhee====appPrintSystemLog2==end=="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v4

    .line 505
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appPrintSystemLog2==error=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    const-string v6, "%s : bugLogs/%s_dump.txt"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_fail:Ljava/lang/String;

    aput-object v7, v2, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 509
    .end local v4
    :goto_0
    return-void
.end method

.method public appLogsExport3()V
    .locals 9

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "commnandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, ""

    const-string v5, "==divhee====appLogsExport3==in=="

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v4, "rm -r       %s/%s_bugreport.txt"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v4, "bugreport > %s/%s_bugreport.txt"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-static {v0, v3}, Lcom/android/settings/ShellUtils;->execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v4

    .line 519
    .local v4, "result":Lcom/android/settings/ShellUtils$CommandResult;
    if-eqz v4, :cond_0

    .line 520
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport3==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport3==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport3==result=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    const-string v5, ""

    const-string v6, "==divhee====appLogsExport3==end=="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    const-string v6, "%s : bugLogs/%s_bugreport.txt"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_ok:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 530
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v4

    .line 527
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==divhee====appLogsExport3==error=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    const-string v6, "%s : bugLogs/%s_bugreport.txt"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_fail:Ljava/lang/String;

    aput-object v7, v2, v3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 531
    .end local v4
    :goto_0
    return-void
.end method

.method public appLogsExport4()V
    .locals 10

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
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

    .line 558
    .local v1, "leadOutLogFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SendEmailThread;->getLogcatInfo()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "readedLogContent":Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    const-string v7, "==divhee====appLogsExport4==in=="

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
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

    .line 562
    const-string v4, "logcat -d -v time -f %s/%s_logcat.txt"

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-static {v0, v5}, Lcom/android/settings/ShellUtils;->execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v4

    .line 565
    .local v4, "result":Lcom/android/settings/ShellUtils$CommandResult;
    if-eqz v4, :cond_0

    .line 566
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport4==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport4==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport4==result=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    const-string v7, ""

    const-string v8, "==divhee====appLogsExport4==end=="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v4

    .line 573
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee====appLogsExport4==error=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    const-string v8, "%s : bugLogs/%s_logcat.txt"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_fail:Ljava/lang/String;

    aput-object v9, v2, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v5}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 577
    .end local v4
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v4, "\u5f00\u59cb\u4e0a\u4f20Log\uff0c\u8bf7\u4e0d\u8981\u9000\u51fa\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4f1a\uff0c\u8c22\u8c22\uff01"

    invoke-virtual {v2, v4, v6}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 579
    :try_start_1
    new-instance v2, Lcom/android/settings/SendEmailThread;

    iget-object v4, p0, Lcom/android/settings/ExportLogFragment;->onSendEmailEvent4:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    const-string v5, "3603297807@qq.com"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/settings/SendEmailThread;-><init>(Ljava/lang/String;Lcom/android/settings/SendEmailThread$OnSendEmailEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v2, "thread":Lcom/android/settings/SendEmailThread;
    invoke-virtual {v2}, Lcom/android/settings/SendEmailThread;->start()V

    .line 582
    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 581
    :catch_1
    move-exception v2

    .line 583
    :goto_1
    return-void
.end method

.method public createRootBugFoler()V
    .locals 3

    .line 276
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 278
    .local v0, "datapath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    .line 279
    sget-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
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

    .line 282
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

    .line 284
    .end local v0
    :goto_0
    goto :goto_1

    .line 285
    :cond_1
    const-string v0, "/storage/emulated/0/bugLogs"

    sput-object v0, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    .line 287
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

    .line 288
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/ExportLogFragment;->export_log_bug_folder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "Logfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 292
    :cond_2
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 296
    const/16 v0, 0x60

    return v0
.end method

.method public inithandlerLogThread()V
    .locals 6

    .line 87
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerLogThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 91
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;-><init>(Lcom/android/settings/ExportLogFragment;Lcom/android/settings/ExportLogFragment$1;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    aput-object v2, v1, v0

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0
    :cond_1
    return-void
.end method

.method public isExportLogUpdloadTimesEnable(I)Z
    .locals 9
    .param p1, "maxTimes"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "uploadLogCount":I
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "dateToday":I
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "readboy_exportlog_upload_count"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "savedUploadTimes":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 188
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "exportlog_date"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    const-string v6, "exportlog_date"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 191
    .local v6, "savedDateTime":I
    if-ne v2, v6, :cond_0

    const-string v7, "exportlog_count"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    const-string v7, "exportlog_count"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 196
    .end local v4
    .end local v6
    :cond_0
    goto :goto_0

    .line 195
    :catch_0
    move-exception v4

    .line 198
    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 200
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .restart local v4
    const-string v6, "exportlog_date"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string v6, "exportlog_count"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "readboy_exportlog_upload_count"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .end local v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 204
    :catch_1
    move-exception v4

    .line 208
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_3

    const/4 v5, 0x1

    nop

    :cond_3
    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    goto :goto_3

    .line 414
    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x64

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    iput v1, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2

    .line 415
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, p2

    :goto_1
    iput v2, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    .line 417
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 418
    const-string v0, ""

    const-string v2, "=====divhee================UNINSTALL_ENABLE_ENTER==111="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_4
    :goto_2
    iput v1, p0, Lcom/android/settings/ExportLogFragment;->mIsNowParentManagerShowing:I

    .line 433
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 249
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const v0, 0x7f150059

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->addPreferencesFromResource(I)V

    .line 252
    const-string v0, "export_log_action_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_1:Landroid/support/v7/preference/Preference;

    .line 253
    const-string v0, "export_log_action_2"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_2:Landroid/support/v7/preference/Preference;

    .line 254
    const-string v0, "export_log_action_3"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_3:Landroid/support/v7/preference/Preference;

    .line 255
    const-string v0, "export_log_action_4"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_4:Landroid/support/v7/preference/Preference;

    .line 257
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_ok:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_result_fail:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_1:Landroid/support/v7/preference/Preference;

    const-string v1, "\u8054\u7f51\u72b6\u6001\u4e0b\uff0c\u5355\u51fb\u540e\u4f1a\u81ea\u52a8\u4e0a\u4f20\u65e5\u5fd7Log\u6587\u4ef6\u5e76\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4f1a\uff0c\u76f4\u5230\u5f39\u51fa\u4e0a\u4f20\u5b8c\u6210\u5bf9\u8bdd\u6846\u3002"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "readboy_export_log_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/settings/ExportLogFragment;->mReadboyExportLogType:I

    .line 262
    iget v0, p0, Lcom/android/settings/ExportLogFragment;->mReadboyExportLogType:I

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "export_log_action_2"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->removePreference(Ljava/lang/String;)Z

    .line 264
    const-string v0, "export_log_action_3"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->removePreference(Ljava/lang/String;)Z

    .line 265
    const-string v0, "export_log_action_4"

    invoke-virtual {p0, v0}, Lcom/android/settings/ExportLogFragment;->removePreference(Ljava/lang/String;)Z

    .line 266
    iput v1, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    goto :goto_1

    .line 268
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    .line 270
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "child":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 358
    .local v1, "list_container":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 359
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    .line 363
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01de

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/ExportLogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/ExportLogFragment$2;-><init>(Lcom/android/settings/ExportLogFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v2, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ExportLogFragment;->mListContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/ExportLogFragment;->isParentPasswordCheckPassed:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v3

    .line 376
    .end local v2
    :cond_3
    :goto_1
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .line 350
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->releasehandlerLogThread()V

    .line 352
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 302
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_1:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 303
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v2, "\u5f00\u59cb\u6293\u53d6\u65e5\u5fd7\uff0c\u8bf7\u4e0d\u8981\u9000\u51fa\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4f1a\uff0c\u8c22\u8c22\uff01"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->createRootBugFoler()V

    .line 305
    const/4 v4, 0x0

    const v5, 0x10011

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/ExportLogFragment;->startTaskRunSearchThread(IIIILjava/lang/Object;I)Z

    .line 306
    return v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_2:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120b08

    if-ne p1, v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->createRootBugFoler()V

    .line 309
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 310
    const/4 v4, 0x1

    const v5, 0x10012

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/ExportLogFragment;->startTaskRunSearchThread(IIIILjava/lang/Object;I)Z

    .line 311
    return v1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_3:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->createRootBugFoler()V

    .line 314
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 315
    const/4 v4, 0x2

    const v5, 0x10013

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/ExportLogFragment;->startTaskRunSearchThread(IIIILjava/lang/Object;I)Z

    .line 316
    return v1

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->export_log_action_4:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 318
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v2, "\u5f00\u59cb\u6293\u53d6Log\uff0c\u8bf7\u4e0d\u8981\u9000\u51fa\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4f1a\uff0c\u8c22\u8c22\uff01"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->createRootBugFoler()V

    .line 320
    const/4 v4, 0x3

    const v5, 0x10014

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/ExportLogFragment;->startTaskRunSearchThread(IIIILjava/lang/Object;I)Z

    .line 321
    return v1

    .line 323
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 335
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 336
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ExportLogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ExportLogFragment$1;-><init>(Lcom/android/settings/ExportLogFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method

.method public releasehandlerLogThread()V
    .locals 4

    .line 137
    :try_start_0
    const-string v0, ""

    const-string v1, "======divhee=========releasehandlerLogThread===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    array-length v2, v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 143
    iget-object v2, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    aput-object v3, v2, v1

    .line 147
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_1

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1
    :cond_1
    nop

    .local v0, "inum":I
    :goto_2
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    array-length v1, v1

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-ge v0, v1, :cond_3

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v1

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v1, :cond_2

    .line 153
    :try_start_4
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 154
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 157
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    goto :goto_4

    .line 155
    :catch_2
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 159
    .end local v1
    :goto_3
    nop

    .line 160
    :goto_4
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->handlerLogThread:[Landroid/os/HandlerThread;

    aput-object v3, v1, v0

    .line 164
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    goto :goto_5

    .line 162
    :catch_3
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .end local v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    .end local v0
    :cond_3
    goto :goto_6

    .line 166
    :catch_4
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0
    :goto_6
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 384
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/ExportLogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    return v1

    .line 388
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

    .line 389
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/ExportLogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    return v1

    .line 395
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ExportLogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 398
    iput v2, p0, Lcom/android/settings/ExportLogFragment;->mIsNowParentManagerShowing:I

    .line 399
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 403
    .end local v0
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 402
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0
    nop

    .line 406
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public startTaskRunSearchThread(IIIILjava/lang/Object;I)Z
    .locals 4
    .param p1, "witch"    # I
    .param p2, "what"    # I
    .param p3, "msgtype"    # I
    .param p4, "msgnum"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->inithandlerLogThread()V

    .line 101
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ExportLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 106
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 107
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 108
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/android/settings/ExportLogFragment;->LogTaskHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    int-to-long v2, p6

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    .line 111
    .end local v0
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
