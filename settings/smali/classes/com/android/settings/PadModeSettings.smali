.class public Lcom/android/settings/PadModeSettings;
.super Landroid/app/Fragment;
.source "PadModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PadModeSettings$ScreenLockReceiver;
    }
.end annotation


# static fields
.field private static final parentPwdUri:Landroid/net/Uri;


# instance fields
.field public final REQUEST_PARENT_PASSWORD_EXCHANGE:I

.field public final REQUEST_PARENT_PASSWORD_MANAGE_APPS:I

.field public final REQUEST_PARENT_PASSWORD_NEW_SET_APPS:I

.field public final REQUEST_PARENT_PASSWORD_NEW_SET_EXCHANGE:I

.field public final REQUEST_PARENT_PASSWORD_NEW_SET_PWD:I

.field public final REQUEST_PARENT_PASSWORD_PWD_SWITCH:I

.field public final REQUEST_PARENT_PASSWORD_STANDARD_EXCHANGE:I

.field public final REQUEST_PARENT_PASSWORD_STANDARD_SET_PWD:I

.field public btn_enter_pad_parent:Landroid/widget/TextView;

.field private btn_launcher_export_mode:Landroid/view/View;

.field private btn_launcher_parent_mode:Landroid/view/View;

.field private btn_launcher_standard_mode:Landroid/view/View;

.field public btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

.field public isOnPaused:Z

.field private ll_btn_launcher_standard_mode_container:Landroid/view/View;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mExportProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

.field private mFirstInStatusExportStanderd:I

.field private mFirstInStatusLaunchVersion:I

.field private mFirstInStatusParentMode:I

.field public mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public mHandler:Landroid/os/Handler;

.field private mIsParentPasswordCheckedOk:I

.field private mIsParentPasswordCheckedPassLable:I

.field private mNowLauncherParentMode:I

.field public mParent:Landroid/view/View;

.field private mParentProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

.field public mParentUnlockscreenNeedPasswordSwitchStatus:I

.field private mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

.field private mStandardProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

.field private pad_export_mode_container:Landroid/view/ViewGroup;

.field private pad_mode_export_launcher_child_mode:Landroid/view/ViewGroup;

.field private pad_mode_export_launcher_middle_mode:Landroid/view/ViewGroup;

.field private pad_mode_export_launcher_primary_mode:Landroid/view/ViewGroup;

.field private pad_parent_mode_container:Landroid/view/ViewGroup;

.field private pad_standard_mode_container:Landroid/view/ViewGroup;

.field private progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

.field private progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

.field private progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

.field private tv_btn_launcher_child_mode:Landroid/view/View;

.field private tv_btn_launcher_middle_mode:Landroid/view/View;

.field private tv_btn_launcher_primary_mode:Landroid/view/View;

.field private view_launcher_mode_space_0:Landroid/view/View;

.field private view_launcher_mode_space_1:Landroid/view/View;

.field private view_launcher_mode_space_2:Landroid/view/View;

.field private view_launcher_mode_space_3:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/user_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/PadModeSettings;->parentPwdUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PadModeSettings;->isOnPaused:Z

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    .line 84
    const/16 v1, 0x271a

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_EXCHANGE:I

    .line 85
    const/16 v1, 0x271b

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_NEW_SET_EXCHANGE:I

    .line 86
    const/16 v1, 0x271c

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_NEW_SET_APPS:I

    .line 87
    const/16 v1, 0x271d

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_NEW_SET_PWD:I

    .line 88
    const/16 v1, 0x271e

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_MANAGE_APPS:I

    .line 89
    const/16 v1, 0x271f

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_PWD_SWITCH:I

    .line 90
    const/16 v1, 0x2720

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_STANDARD_EXCHANGE:I

    .line 91
    const/16 v1, 0x2721

    iput v1, p0, Lcom/android/settings/PadModeSettings;->REQUEST_PARENT_PASSWORD_STANDARD_SET_PWD:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 124
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    .line 125
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusExportStanderd:I

    .line 126
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusLaunchVersion:I

    .line 127
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    .line 128
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    .line 1151
    new-instance v0, Lcom/android/settings/PadModeSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/PadModeSettings$7;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mStandardProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 1174
    new-instance v0, Lcom/android/settings/PadModeSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/PadModeSettings$8;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mExportProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 1190
    new-instance v0, Lcom/android/settings/PadModeSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/PadModeSettings$9;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mParentProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 1204
    new-instance v0, Lcom/android/settings/PadModeSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/PadModeSettings$10;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1845
    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PadModeSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->ll_btn_launcher_standard_mode_container:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/PadModeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget v0, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/PadModeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/PadModeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->mParentProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/PadModeSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/PadModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .line 64
    iput-object p1, p0, Lcom/android/settings/PadModeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->mStandardProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PadModeSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->mExportProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    return-object v0
.end method

.method public static exchangeDreamLauncherForModeChange(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 402
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChangeChild(Landroid/content/Context;Z)V

    .line 403
    return-void
.end method

.method public static exchangeDreamLauncherForModeChangeChild(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "neeExchange"    # Z

    .line 409
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, "launcherParent":I
    invoke-static {p0, v0}, Lcom/android/settings/PadModeSettings;->helpSystemUIResetDisplayFlag(Landroid/content/Context;I)V

    .line 413
    if-eqz p1, :cond_0

    .line 415
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 416
    .local v1, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    const-string v2, "launcher_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 422
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 424
    :cond_0
    :goto_0
    return-void
.end method

.method public static getBestFitLauncherVersionByPersonalCenter(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, "mUserInfo":Lcom/readboy/provider/mhc/info/UserBaseInfo;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v2

    .line 1123
    .local v2, "mUserDbSearch":Lcom/readboy/provider/UserDbSearch;
    if-eqz v2, :cond_3

    .line 1124
    invoke-virtual {v2}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 1125
    if-eqz v0, :cond_3

    .line 1127
    :try_start_1
    invoke-virtual {v0}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->isPreGrade()Z

    move-result v3

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    .line 1128
    const/4 v1, 0x3

    return v1

    .line 1131
    :cond_0
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v3

    .line 1132
    :goto_0
    :try_start_2
    iget v3, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    add-int/2addr v3, v1

    const/4 v4, 0x6

    if-gt v3, v4, :cond_2

    iget v3, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    add-int/2addr v3, v1

    if-ne v3, v4, :cond_1

    iget v3, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->stage:I

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 1136
    .end local v0
    .end local v2
    :cond_3
    goto :goto_3

    .line 1135
    :catch_1
    move-exception v0

    .line 1137
    :goto_3
    return v1
.end method

.method public static getParentPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    const/4 v0, 0x0

    move-object v1, v0

    .line 138
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 139
    .local v2, "mResolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/settings/PadModeSettings;->parentPwdUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id > ? "

    const-string v6, "0"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 140
    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "password"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 144
    .local v0, "password":Ljava/lang/String;
    nop

    .line 150
    if-eqz v1, :cond_0

    .line 152
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 156
    :goto_0
    const/4 v1, 0x0

    .line 144
    :cond_0
    return-object v0

    .line 150
    .end local v0
    .end local v2
    :cond_1
    if-eqz v1, :cond_3

    .line 152
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 153
    :catch_1
    move-exception v2

    goto :goto_3

    .line 150
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 152
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 153
    :catch_2
    move-exception v2

    .line 156
    :goto_1
    const/4 v1, 0x0

    :cond_2
    throw v0

    .line 147
    :catch_3
    move-exception v2

    .line 150
    if-eqz v1, :cond_3

    .line 152
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    goto :goto_3

    .line 153
    :catch_4
    move-exception v2

    .line 156
    :goto_3
    const/4 v1, 0x0

    .line 159
    :cond_3
    return-object v0
.end method

.method public static helpExchangeParentMode(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "whocallme":Ljava/lang/String;
    const-string v1, "callme"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "callme"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_0
    const-string v1, "new_parent_mode"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, "parentMode":I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=======divhee=================helpExchangeParentMode====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    const-string v5, "com.readboy.launcher_c10_parent"

    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    return-void

    .line 330
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.readboy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_3

    .line 332
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dream_launcher_mode_lable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 336
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dream_launcher_mode_lable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dream_launcher_mode_lable"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 339
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v4

    .line 341
    :goto_0
    const-string v4, "help_exchange_launcher"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 342
    .local v3, "isNeedExchangeLauncher":Z
    invoke-static {p0, v3}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChangeChild(Landroid/content/Context;Z)V

    .line 344
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/SettingsBootCompletedReceiver;->exchangeParentModeLauncherStatus(Landroid/content/Context;)V

    .line 345
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    .line 346
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "========divhee===========removeAllTask======1======="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V

    .line 351
    :try_start_1
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 352
    .local v2, "mActM":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 355
    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 354
    :catch_1
    move-exception v2

    .line 363
    .end local v3
    :cond_3
    :goto_1
    return-void
.end method

.method public static helpSystemUIResetDisplayFlag(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launcherParent"    # I

    .line 396
    return-void
.end method

.method public static killAnyOneTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
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

    .line 834
    .local p1, "aimPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 837
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 838
    .local v0, "actM":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, "inum":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 839
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 841
    .local v2, "taskPkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 844
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==divhee================kill_AnyOneTaskEvent===forceStopPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    .line 846
    :catch_0
    move-exception v3

    .line 847
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==divhee================kill_AnyOneTaskEvent===forceStopPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .end local v2
    .end local v3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v1
    :cond_2
    return-void

    .line 835
    .end local v0
    :cond_3
    :goto_2
    return-void
.end method

.method public static removeAllTask(Landroid/content/Context;Z)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeFrontMostExcludedTask"    # Z

    move-object/from16 v1, p0

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "com.android.settings"

    const-string v3, "com.readboy.launcher_c10_primary"

    const-string v4, "com.readboy.launcher_c10_parent"

    const-string v5, "com.readboy.launcher_c10"

    const-string v6, "com.readboy.launcher_c10_standard"

    const-string v7, "com.readboy.launcher_c10_student"

    const-string v8, "com.readboy.launcher_c10_children"

    const-string v9, "com.android.providers.media"

    const-string v10, "com.readboy.parentmanager"

    const-string v11, "com.readboy.adblock"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 434
    .local v2, "ignorePkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "com.alibaba.android.rimet"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.tencent.mm"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 438
    .local v3, "espFilterApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0xa

    .line 439
    .local v4, "minNumTasksToQuery":I
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 440
    .local v5, "numTasksToQuery":I
    const/4 v6, 0x2

    .line 441
    .local v6, "flags":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 442
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v8, v0

    .line 444
    .local v8, "actM":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v8, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 445
    .local v12, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    move v13, v0

    .end local v0
    .local v13, "inum":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_10

    .line 446
    const/4 v14, 0x0

    .line 447
    .local v14, "taskPkgName":Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-object v15, v0

    .line 449
    .local v15, "recentTsk":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    .line 454
    :cond_0
    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==1=="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    :goto_1
    :try_start_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v0

    .line 461
    :cond_1
    goto :goto_2

    .line 459
    :catch_1
    move-exception v0

    .line 460
    .restart local v0
    :try_start_4
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==2=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    :goto_2
    :try_start_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v14, v0

    .line 468
    :cond_2
    goto :goto_3

    .line 466
    :catch_2
    move-exception v0

    .line 467
    .restart local v0
    :try_start_6
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==3=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :goto_3
    :try_start_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v14, v0

    .line 475
    :cond_3
    goto :goto_4

    .line 473
    :catch_3
    move-exception v0

    .line 474
    .restart local v0
    :try_start_8
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==4=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    :goto_4
    :try_start_9
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 480
    :cond_4
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 481
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 486
    .end local v14
    .local v0, "taskPkgName":Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_5
    move-object v14, v0

    .end local v0
    .restart local v14
    :cond_5
    goto :goto_6

    .line 484
    :catch_4
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==5=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v0
    :goto_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 489
    const/4 v9, 0x0

    .line 490
    .local v9, "isNeedRemoveAppFromRecent":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "main_launcher_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move/from16 v17, v4

    const/4 v11, 0x0

    :try_start_b
    new-array v4, v11, [Ljava/lang/Object;

    .end local v4
    .local v17, "minNumTasksToQuery":I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :try_start_c
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    if-eqz v4, :cond_6

    .line 492
    :try_start_d
    invoke-static {v1, v14}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-object v0, v4

    goto :goto_8

    .line 533
    .end local v0
    .end local v9
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :catch_5
    move-exception v0

    move/from16 v20, v5

    .end local v5
    .local v20, "numTasksToQuery":I
    :goto_7
    const/16 v16, 0x0

    goto/16 :goto_f

    .line 494
    .end local v20
    .restart local v0
    .restart local v5
    .restart local v9
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_6
    move-object v4, v0

    .end local v0
    .local v4, "className":Ljava/lang/String;
    :goto_8
    :try_start_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 495
    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 496
    .local v10, "classNameSons":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 497
    .local v0, "hiddedNumber":I
    move v11, v0

    const/4 v0, 0x0

    .local v0, "iadd":I
    .local v11, "hiddedNumber":I
    :goto_9
    move/from16 v18, v0

    .end local v0
    .local v18, "iadd":I
    array-length v0, v10

    move-object/from16 v19, v4

    move/from16 v4, v18

    if-ge v4, v0, :cond_9

    .line 499
    .end local v18
    .local v4, "iadd":I
    .local v19, "className":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move/from16 v20, v5

    :try_start_f
    aget-object v5, v10, v4

    .end local v5
    .restart local v20
    invoke-direct {v0, v14, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-object v5, v0

    .line 500
    .local v5, "componentName":Landroid/content/ComponentName;
    const/16 v16, 0x0

    move/from16 v18, v16

    .line 502
    .local v18, "nowStatus":I
    :try_start_10
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    move-object/from16 v21, v5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .end local v5
    .local v21, "componentName":Landroid/content/ComponentName;
    move/from16 v0, v16

    goto :goto_a

    :cond_7
    const/4 v0, 0x1

    .line 503
    .end local v18
    .local v0, "nowStatus":I
    :goto_a
    if-nez v0, :cond_8

    .line 504
    add-int/lit8 v11, v11, 0x1

    .line 507
    :cond_8
    goto :goto_b

    .line 506
    .end local v0
    .end local v21
    .restart local v5
    .restart local v18
    :catch_6
    move-exception v0

    move-object/from16 v21, v5

    .line 497
    .end local v5
    .end local v18
    :goto_b
    add-int/lit8 v0, v4, 0x1

    .end local v4
    .local v0, "iadd":I
    move-object/from16 v4, v19

    move/from16 v5, v20

    goto :goto_9

    .line 533
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v19
    :catch_7
    move-exception v0

    goto :goto_7

    .line 509
    .end local v20
    .local v5, "numTasksToQuery":I
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v19
    :cond_9
    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v5
    .restart local v20
    :try_start_11
    array-length v0, v10

    if-ne v11, v0, :cond_b

    .line 510
    const/4 v9, 0x1

    .end local v10
    .end local v11
    goto :goto_c

    .line 515
    .end local v19
    .end local v20
    .local v4, "className":Ljava/lang/String;
    .restart local v5
    :cond_a
    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v4
    .end local v5
    .restart local v19
    .restart local v20
    :cond_b
    :goto_c
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .end local v9
    .end local v14
    .end local v15
    .end local v19
    goto :goto_e

    .line 517
    .restart local v9
    .restart local v14
    .restart local v15
    .restart local v19
    :cond_c
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v9, :cond_f

    .line 519
    :cond_d
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/android/settings/PadModeSettings$2;

    invoke-direct {v4, v8, v15}, Lcom/android/settings/PadModeSettings$2;-><init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v9
    .end local v14
    .end local v15
    .end local v19
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_e

    .line 533
    .end local v12
    .end local v13
    :catch_8
    move-exception v0

    goto :goto_f

    .end local v20
    .restart local v5
    :catch_9
    move-exception v0

    move/from16 v20, v5

    const/16 v16, 0x0

    goto :goto_d

    :catch_a
    move-exception v0

    move/from16 v20, v5

    move/from16 v16, v11

    .end local v5
    .restart local v20
    :goto_d
    goto :goto_f

    .line 445
    .end local v17
    .end local v20
    .local v4, "minNumTasksToQuery":I
    .restart local v5
    .restart local v12
    .restart local v13
    :cond_e
    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v4
    .end local v5
    .restart local v17
    .restart local v20
    :cond_f
    :goto_e
    add-int/lit8 v0, v13, 0x1

    .end local v13
    .local v0, "inum":I
    move/from16 v4, v17

    move/from16 v5, v20

    goto/16 :goto_0

    .line 535
    .end local v0
    .end local v12
    .end local v17
    .end local v20
    .restart local v4
    .restart local v5
    :cond_10
    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v4
    .end local v5
    .restart local v17
    .restart local v20
    goto :goto_10

    .line 533
    .end local v17
    .end local v20
    .restart local v4
    .restart local v5
    :catch_b
    move-exception v0

    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    .line 534
    .end local v4
    .end local v5
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17
    .restart local v20
    :goto_f
    const-string v4, "PadUser"

    const-string v5, "removeAllTask Failed to get recent tasks"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    .end local v0
    :goto_10
    :try_start_12
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dream_launcher_mode_lable"

    const/4 v5, 0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_12

    .line 540
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 541
    .local v4, "parentAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 542
    nop

    .local v16, "inum":I
    :goto_11
    move/from16 v5, v16

    .end local v16
    .local v5, "inum":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_12

    .line 543
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 544
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    if-nez v0, :cond_11

    .line 546
    :try_start_13
    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 550
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_12

    .line 548
    :catch_c
    move-exception v0

    .line 549
    .restart local v0
    :try_start_14
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==divhee=========remove_AllTask==========forceStopPackage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "==="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v0
    .end local v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    :cond_11
    :goto_12
    add-int/lit8 v16, v5, 0x1

    .end local v5
    .restart local v16
    goto :goto_11

    .line 557
    .end local v4
    .end local v16
    :cond_12
    goto :goto_13

    .line 555
    :catch_d
    move-exception v0

    .line 556
    .restart local v0
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==divhee=========remove_AllTask==========forceStopPackage==2="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0
    :goto_13
    return-void
.end method

.method public static removeSomeTaskEvent(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 22
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

    .local p1, "needRemovePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "com.android.settings"

    const-string v3, "com.readboy.launcher_c10_primary"

    const-string v4, "com.readboy.launcher_c10_parent"

    const-string v5, "com.readboy.launcher_c10"

    const-string v6, "com.readboy.launcher_c10_standard"

    const-string v7, "com.readboy.launcher_c10_student"

    const-string v8, "com.readboy.launcher_c10_children"

    const-string v9, "com.android.providers.media"

    const-string v10, "com.readboy.parentmanager"

    const-string v11, "com.readboy.adblock"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 572
    .local v2, "ignorePkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "com.alibaba.android.rimet"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.tencent.mm"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 576
    .local v3, "espFilterApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0xa

    .line 577
    .local v4, "minNumTasksToQuery":I
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 578
    .local v5, "numTasksToQuery":I
    const/4 v6, 0x2

    .line 579
    .local v6, "flags":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 580
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v8, v0

    .line 582
    .local v8, "actM":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v8, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 583
    .local v12, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    move v13, v0

    .end local v0
    .local v13, "inum":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_10

    .line 584
    const/4 v14, 0x0

    .line 585
    .local v14, "taskPkgName":Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    move-object v15, v0

    .line 587
    .local v15, "recentTsk":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    .line 592
    :cond_0
    goto :goto_1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==1=="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    :goto_1
    :try_start_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v0

    .line 599
    :cond_1
    goto :goto_2

    .line 597
    :catch_1
    move-exception v0

    .line 598
    .restart local v0
    :try_start_4
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==2=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    :goto_2
    :try_start_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v14, v0

    .line 606
    :cond_2
    goto :goto_3

    .line 604
    :catch_2
    move-exception v0

    .line 605
    .restart local v0
    :try_start_6
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==3=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    :goto_3
    :try_start_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v14, v0

    .line 613
    :cond_3
    goto :goto_4

    .line 611
    :catch_3
    move-exception v0

    .line 612
    .restart local v0
    :try_start_8
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==4=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    :goto_4
    :try_start_9
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 616
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 617
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 618
    :cond_4
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 619
    iget-object v0, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 624
    .end local v14
    .local v0, "taskPkgName":Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_5
    move-object v14, v0

    .end local v0
    .restart local v14
    :cond_5
    goto :goto_6

    .line 622
    :catch_4
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==5=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0
    :goto_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 627
    const/4 v9, 0x0

    .line 628
    .local v9, "isNeedRemoveAppFromRecent":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "main_launcher_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    move/from16 v17, v4

    const/4 v11, 0x0

    :try_start_b
    new-array v4, v11, [Ljava/lang/Object;

    .end local v4
    .local v17, "minNumTasksToQuery":I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v4, :cond_6

    .line 630
    :try_start_d
    invoke-static {v1, v14}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-object v0, v4

    goto :goto_7

    .line 674
    .end local v0
    .end local v9
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :catch_5
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v20, v5

    const/16 v16, 0x0

    goto/16 :goto_f

    .line 632
    .restart local v0
    .restart local v9
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_6
    move-object v4, v0

    .end local v0
    .local v4, "className":Ljava/lang/String;
    :goto_7
    :try_start_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-nez v0, :cond_a

    .line 633
    :try_start_f
    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 634
    .local v10, "classNameSons":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 635
    .local v0, "hiddedNumber":I
    move v11, v0

    const/4 v0, 0x0

    .local v0, "iadd":I
    .local v11, "hiddedNumber":I
    :goto_8
    move/from16 v18, v0

    .end local v0
    .local v18, "iadd":I
    array-length v0, v10

    move-object/from16 v19, v4

    move/from16 v4, v18

    if-ge v4, v0, :cond_9

    .line 637
    .end local v18
    .local v4, "iadd":I
    .local v19, "className":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move/from16 v20, v5

    :try_start_10
    aget-object v5, v10, v4

    .end local v5
    .local v20, "numTasksToQuery":I
    invoke-direct {v0, v14, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-object v5, v0

    .line 638
    .local v5, "componentName":Landroid/content/ComponentName;
    const/16 v16, 0x0

    move/from16 v18, v16

    .line 640
    .local v18, "nowStatus":I
    :try_start_11
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    move-object/from16 v21, v5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .end local v5
    .local v21, "componentName":Landroid/content/ComponentName;
    move/from16 v0, v16

    goto :goto_9

    :cond_7
    const/4 v0, 0x1

    .line 641
    .end local v18
    .local v0, "nowStatus":I
    :goto_9
    if-nez v0, :cond_8

    .line 642
    add-int/lit8 v11, v11, 0x1

    .line 645
    :cond_8
    goto :goto_a

    .line 644
    .end local v0
    .end local v21
    .restart local v5
    .restart local v18
    :catch_6
    move-exception v0

    move-object/from16 v21, v5

    .line 635
    .end local v5
    .end local v18
    :goto_a
    add-int/lit8 v0, v4, 0x1

    .end local v4
    .local v0, "iadd":I
    move-object/from16 v4, v19

    move/from16 v5, v20

    goto :goto_8

    .line 674
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v19
    :catch_7
    move-exception v0

    const/16 v16, 0x0

    goto :goto_b

    .line 647
    .end local v20
    .local v5, "numTasksToQuery":I
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v19
    :cond_9
    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v5
    .restart local v20
    :try_start_12
    array-length v0, v10

    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    if-ne v11, v0, :cond_b

    .line 648
    const/4 v9, 0x1

    .end local v10
    .end local v11
    goto :goto_c

    .line 674
    .end local v9
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v19
    :catch_8
    move-exception v0

    :goto_b
    move-object/from16 v4, p1

    goto/16 :goto_f

    .end local v20
    .restart local v5
    :catch_9
    move-exception v0

    move/from16 v20, v5

    const/16 v16, 0x0

    move-object/from16 v4, p1

    goto :goto_d

    .line 653
    .local v4, "className":Ljava/lang/String;
    .restart local v9
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_a
    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    .end local v4
    .end local v5
    .restart local v19
    .restart local v20
    :cond_b
    :goto_c
    move-object/from16 v4, p1

    :try_start_13
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 654
    const/4 v9, 0x1

    .line 657
    :cond_c
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .end local v9
    .end local v14
    .end local v15
    .end local v19
    goto :goto_e

    .line 659
    .restart local v9
    .restart local v14
    .restart local v15
    .restart local v19
    :cond_d
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v9, :cond_f

    .line 660
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/settings/PadModeSettings$3;

    invoke-direct {v5, v8, v15}, Lcom/android/settings/PadModeSettings$3;-><init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v9
    .end local v14
    .end local v15
    .end local v19
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_e

    .line 674
    .end local v12
    .end local v13
    :catch_a
    move-exception v0

    goto :goto_f

    .end local v20
    .restart local v5
    :catch_b
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v20, v5

    const/16 v16, 0x0

    goto :goto_d

    :catch_c
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v20, v5

    move/from16 v16, v11

    .end local v5
    .restart local v20
    :goto_d
    goto :goto_f

    .line 583
    .end local v17
    .end local v20
    .local v4, "minNumTasksToQuery":I
    .restart local v5
    .restart local v12
    .restart local v13
    :cond_e
    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    move-object/from16 v4, p1

    .end local v4
    .end local v5
    .restart local v17
    .restart local v20
    :cond_f
    :goto_e
    add-int/lit8 v0, v13, 0x1

    .end local v13
    .local v0, "inum":I
    move/from16 v4, v17

    move/from16 v5, v20

    goto/16 :goto_0

    .line 676
    .end local v0
    .end local v12
    .end local v17
    .end local v20
    .restart local v4
    .restart local v5
    :cond_10
    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    move-object/from16 v4, p1

    .end local v4
    .end local v5
    .restart local v17
    .restart local v20
    goto :goto_10

    .line 674
    .end local v17
    .end local v20
    .restart local v4
    .restart local v5
    :catch_d
    move-exception v0

    move/from16 v17, v4

    move/from16 v20, v5

    const/16 v16, 0x0

    move-object/from16 v4, p1

    .line 675
    .end local v4
    .end local v5
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17
    .restart local v20
    :goto_f
    const-string v5, ""

    const-string v9, "removeAllTask Failed to get recent tasks"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    .end local v0
    :goto_10
    :try_start_14
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dream_launcher_mode_lable"

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_12

    .line 681
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    .line 682
    .local v5, "parentAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 683
    nop

    .local v16, "inum":I
    :goto_11
    move/from16 v9, v16

    .end local v16
    .local v9, "inum":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_12

    .line 684
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 685
    .local v10, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    if-nez v0, :cond_11

    .line 687
    :try_start_15
    invoke-virtual {v8, v10}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v8, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 691
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_12

    .line 689
    :catch_e
    move-exception v0

    .line 690
    .restart local v0
    :try_start_16
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "==divhee=======remove_SomeTaskEvent============forceStopPackage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "==="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0
    .end local v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    :cond_11
    :goto_12
    add-int/lit8 v16, v9, 0x1

    .end local v9
    .restart local v16
    goto :goto_11

    .line 698
    .end local v5
    .end local v16
    :cond_12
    goto :goto_13

    .line 696
    :catch_f
    move-exception v0

    .line 697
    .restart local v0
    const-string v5, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==divhee=========remove_SomeTaskEvent==========forceStopPackage==2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v0
    :goto_13
    return-void
.end method

.method public static scaleTo(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scale"    # F

    .line 1931
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1934
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1936
    :cond_0
    const/high16 v0, 0x3f800000

    .line 1937
    .local v0, "oldScale":F
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1938
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1940
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1941
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1942
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1943
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1945
    .end local v0
    .end local v2
    :goto_0
    return-void
.end method

.method public static setClickZoomEffect(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 1952
    if-eqz p0, :cond_0

    .line 1953
    new-instance v0, Lcom/android/settings/PadModeSettings$12;

    invoke-direct {v0}, Lcom/android/settings/PadModeSettings$12;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1986
    :cond_0
    return-void
.end method


# virtual methods
.method public autoChangeToBestFitLauncherVerions()V
    .locals 4

    .line 1144
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->getBestFitLauncherVersionByPersonalCenter(Landroid/content/Context;)I

    move-result v0

    .line 1145
    .local v0, "bestFitLauncherVer":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Launch_version"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1146
    .local v1, "nowLauncherVer":I
    if-eq v0, v1, :cond_0

    .line 1147
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Launch_version"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    :cond_0
    return-void
.end method

.method public directExchangeParentModeOrStudyMode(IIZ)V
    .locals 5
    .param p1, "launcherParentMode"    # I
    .param p2, "checkedLable"    # I
    .param p3, "realExchangeLauncher"    # Z

    .line 1640
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1642
    if-ne p2, v2, :cond_1

    .line 1644
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1645
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1647
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v1

    .line 1648
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 1649
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChangeChild(Landroid/content/Context;Z)V

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherAppStatusCheckoutIntentService;->startLauncherAppStatusCheckoutIntentService(Landroid/content/Context;)V

    .line 1653
    const-string v1, ""

    const-string v2, "========divhee===========removeAllTask======3======="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V

    .line 1655
    if-eqz p3, :cond_1

    .line 1656
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 1662
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1663
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1665
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1664
    :catch_1
    move-exception v1

    .line 1666
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 1667
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChangeChild(Landroid/content/Context;Z)V

    .line 1668
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherAppStatusCheckoutIntentService;->startLauncherAppStatusCheckoutIntentService(Landroid/content/Context;)V

    .line 1671
    const-string v1, ""

    const-string v2, "========divhee===========removeAllTask======4======="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V

    .line 1673
    if-eqz p3, :cond_1

    .line 1674
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1677
    :cond_1
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1484
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1485
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee===============onActivityResult======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/16 v0, 0x2720

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 1600
    :pswitch_0    # 0x2721
    if-eq p2, v3, :cond_0

    .line 1602
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    const/4 p2, 0x1

    .line 1606
    :cond_0
    if-ne p2, v3, :cond_c

    .line 1607
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/PadModeSettings;->realexchangeParentModeOrLearning(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 1575
    :pswitch_1    # 0x2720
    if-ne p2, v2, :cond_1

    .line 1577
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1578
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    const/16 v1, 0x2721

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    .end local v0
    :goto_0
    goto/16 :goto_7

    .line 1584
    :cond_1
    if-ne p2, v3, :cond_c

    .line 1585
    iput v3, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    .line 1586
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/PadModeSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$11;-><init>(Lcom/android/settings/PadModeSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 1520
    :pswitch_2    # 0x271f
    if-ne p2, v2, :cond_2

    .line 1522
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1523
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const/16 v1, 0x271d

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1526
    :catch_1
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    .end local v0
    :goto_1
    goto/16 :goto_7

    .line 1529
    :cond_2
    if-ne p2, v3, :cond_c

    .line 1530
    iget v0, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    .line 1531
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "parent_launcher_unlcok_need_password"

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    if-ne v2, v3, :cond_4

    move v1, v3

    nop

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_7

    .line 1489
    :pswitch_3    # 0x271e
    if-ne p2, v2, :cond_5

    .line 1491
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1492
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1495
    :catch_2
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    .end local v0
    :goto_3
    goto/16 :goto_7

    .line 1498
    :cond_5
    if-ne p2, v3, :cond_c

    .line 1499
    iput v3, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    .line 1500
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1501
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f120b5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1502
    .end local v0
    goto/16 :goto_7

    .line 1536
    :pswitch_4    # 0x271d
    if-eq p2, v3, :cond_6

    .line 1538
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1539
    const/4 p2, 0x1

    .line 1542
    :cond_6
    if-ne p2, v3, :cond_c

    .line 1543
    iget v0, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    if-ne v0, v3, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    iput v0, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    .line 1544
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "parent_launcher_unlcok_need_password"

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1545
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    if-ne v2, v3, :cond_8

    move v1, v3

    nop

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_7

    .line 1505
    :pswitch_5    # 0x271c
    if-eq p2, v3, :cond_9

    .line 1507
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1508
    const/4 p2, 0x1

    .line 1511
    :cond_9
    if-ne p2, v3, :cond_c

    .line 1512
    iput v2, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1514
    .restart local v0
    const-class v1, Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f120b5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1515
    .end local v0
    goto/16 :goto_7

    .line 1611
    :pswitch_6    # 0x271b
    if-eq p2, v3, :cond_a

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1614
    const/4 p2, 0x1

    .line 1617
    :cond_a
    if-ne p2, v3, :cond_c

    .line 1618
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/PadModeSettings;->realexchangeParentModeOrLearning(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 1550
    :pswitch_7    # 0x271a
    if-ne p2, v2, :cond_b

    .line 1552
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1553
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 1556
    :catch_3
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .end local v0
    :goto_5
    goto :goto_7

    .line 1559
    :cond_b
    if-ne p2, v3, :cond_c

    .line 1561
    :try_start_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1562
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1564
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 1563
    :catch_4
    move-exception v0

    .line 1565
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 1566
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChange(Landroid/content/Context;)V

    .line 1567
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsBootCompletedReceiver;->exchangeParentModeLauncherStatus(Landroid/content/Context;)V

    .line 1568
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    .line 1569
    const-string v0, ""

    const-string v2, "========divhee===========removeAllTask======2======="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V

    .line 1571
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1634
    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_7    # 0x271a
        :pswitch_6    # 0x271b
        :pswitch_5    # 0x271c
        :pswitch_4    # 0x271d
        :pswitch_3    # 0x271e
        :pswitch_2    # 0x271f
        :pswitch_1    # 0x2720
        :pswitch_0    # 0x2721
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    .line 167
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "export_standard_launcher_mode_lable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusExportStanderd:I

    .line 168
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Launch_version"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusLaunchVersion:I

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f0d013f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    .line 178
    new-instance v1, Lcom/android/settings/PadModeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$1;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 230
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a0243

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->ll_btn_launcher_standard_mode_container:Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a032c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/custom/CustomProgressBar;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    .line 234
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a032e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/custom/CustomProgressBar;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    .line 235
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a032d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/custom/CustomProgressBar;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    .line 236
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a04da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_1:Landroid/view/View;

    .line 237
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a04db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_2:Landroid/view/View;

    .line 238
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a04d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_0:Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a04dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_3:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    .line 241
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    .line 243
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    .line 245
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_standard_mode_container:Landroid/view/ViewGroup;

    .line 248
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_export_mode_container:Landroid/view/ViewGroup;

    .line 249
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_parent_mode_container:Landroid/view/ViewGroup;

    .line 250
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a047f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_primary_mode:Landroid/view/View;

    .line 251
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_primary_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_primary_mode:Landroid/view/ViewGroup;

    .line 253
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_primary_mode:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a047e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_middle_mode:Landroid/view/View;

    .line 255
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_middle_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_middle_mode:Landroid/view/ViewGroup;

    .line 257
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_middle_mode:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a047d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_child_mode:Landroid/view/View;

    .line 259
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_child_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_child_mode:Landroid/view/ViewGroup;

    .line 261
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_child_mode:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    :cond_1
    :goto_0
    const/16 v1, 0x8

    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v3, "com.readboy.launcher_c10_primary"

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_primary_mode:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v3, 0x7f0a0184

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    .line 274
    :catch_0
    move-exception v2

    .line 277
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v3, "com.readboy.launcher_c10"

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_middle_mode:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v3, 0x7f0a0185

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    goto :goto_2

    .line 281
    :catch_1
    move-exception v2

    .line 284
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v3, "com.readboy.launcher_c10_children"

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_mode_export_launcher_child_mode:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v3, 0x7f0a0186

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    goto :goto_3

    .line 288
    :catch_2
    move-exception v1

    .line 298
    :goto_3
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->setClickZoomEffect(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a02d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

    .line 304
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "parent_launcher_unlcok_need_password"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    .line 307
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_pad_user_parent_unlockscreen_needpwd_switch:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/PadModeSettings;->mParentUnlockscreenNeedPasswordSwitchStatus:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move v3, v4

    nop

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 311
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1760
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1762
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/PadModeSettings;->onExitEventDeal(Z)V

    .line 1763
    return-void
.end method

.method public onExitEventDeal(Z)V
    .locals 9
    .param p1, "forceExit"    # Z

    .line 1770
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1771
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=====divhee===========onExitEventDeal==000==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_8

    .line 1773
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->unregisterReceiverPadMode()V

    .line 1775
    const/4 v1, 0x1

    .line 1776
    .local v1, "bIsNeedUpdateLauncherAppIcon":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1777
    .local v2, "iFirstInStatusParentMode":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "export_standard_launcher_mode_lable"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1778
    .local v3, "iFirstInStatusExportStanderd":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "Launch_version"

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1779
    .local v5, "iFirstInStatusLaunchVersion":I
    iget v7, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    if-ne v2, v7, :cond_1

    iget v7, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusExportStanderd:I

    if-ne v3, v7, :cond_1

    iget v7, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusLaunchVersion:I

    if-eq v5, v7, :cond_6

    .line 1782
    :cond_1
    iget v7, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    if-eq v7, v8, :cond_2

    if-ne v2, v8, :cond_2

    iget v7, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    if-eqz v7, :cond_2

    .line 1784
    iget v4, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    invoke-virtual {p0, v8, v4, v6}, Lcom/android/settings/PadModeSettings;->directExchangeParentModeOrStudyMode(IIZ)V

    goto :goto_0

    .line 1786
    :cond_2
    iget v7, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    if-ne v7, v8, :cond_3

    if-eq v2, v8, :cond_3

    .line 1788
    invoke-virtual {p0, v4, v6, v6}, Lcom/android/settings/PadModeSettings;->directExchangeParentModeOrStudyMode(IIZ)V

    .line 1790
    :cond_3
    iget v4, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusExportStanderd:I

    if-eq v4, v8, :cond_4

    if-ne v3, v8, :cond_4

    .line 1793
    const/4 v1, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/SettingsLauncherAppStatusCheckoutIntentService;->startLauncherAppStatusCheckoutIntentService(Landroid/content/Context;)V

    goto :goto_0

    .line 1795
    :cond_4
    if-eq v3, v8, :cond_5

    if-eq v2, v8, :cond_5

    .line 1798
    const/4 v1, 0x0

    .line 1799
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/SettingsLauncherAppStatusCheckoutIntentService;->startLauncherAppStatusCheckoutIntentService(Landroid/content/Context;)V

    .line 1803
    :cond_5
    :goto_0
    iput v2, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusParentMode:I

    .line 1804
    iput v3, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusExportStanderd:I

    .line 1805
    iput v5, p0, Lcom/android/settings/PadModeSettings;->mFirstInStatusLaunchVersion:I

    .line 1807
    :cond_6
    iget v4, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    if-nez v4, :cond_7

    if-eqz v1, :cond_8

    .line 1808
    :cond_7
    iput v6, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedPassLable:I

    .line 1809
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/SettingsLauncherAppStatusCheckoutIntentService;->startLauncherAppStatusCheckoutIntentService(Landroid/content/Context;)V

    .line 1813
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :cond_8
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1886
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PadModeSettings;->isOnPaused:Z

    .line 1888
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1879
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PadModeSettings;->isOnPaused:Z

    .line 1881
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 1882
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1750
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1751
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->registerReceiverPadMode()V

    .line 1752
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1755
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1756
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1874
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1875
    return-void
.end method

.method public realexchangeParentModeOrLearning(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestId"    # I

    .line 1439
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1440
    .local v0, "savedTagValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x5dc

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1441
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee========onclick====btn_enter_pad_parent==fast=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-void

    .line 1444
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1446
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1448
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    .line 1450
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1449
    :catch_1
    move-exception v1

    .line 1451
    :goto_1
    iget v1, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 1452
    const/16 v0, 0x2720

    if-ne p2, v0, :cond_1

    .line 1453
    iput v3, p0, Lcom/android/settings/PadModeSettings;->mIsParentPasswordCheckedOk:I

    .line 1455
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/PadModeSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1457
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1458
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1461
    :catch_2
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    .end local v0
    :goto_2
    goto :goto_4

    .line 1468
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1469
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1471
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 1470
    :catch_3
    move-exception v0

    .line 1472
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateNavigationBarStatus()V

    .line 1473
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->exchangeDreamLauncherForModeChange(Landroid/content/Context;)V

    .line 1474
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsBootCompletedReceiver;->exchangeParentModeLauncherStatus(Landroid/content/Context;)V

    .line 1475
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    .line 1476
    const-string v0, ""

    const-string v1, "========divhee===========removeAllTask======4======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/PadModeSettings;->removeAllTask(Landroid/content/Context;Z)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1480
    :cond_3
    :goto_4
    return-void
.end method

.method public registerReceiverPadMode()V
    .locals 3

    .line 1830
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->unregisterReceiverPadMode()V

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1833
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    if-nez v1, :cond_0

    .line 1835
    new-instance v1, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;-><init>(Lcom/android/settings/PadModeSettings;)V

    iput-object v1, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    .line 1836
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1837
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1838
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1842
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 1841
    :catch_0
    move-exception v0

    .line 1843
    :goto_0
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 1684
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1685
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/PadModeSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 1686
    const/4 v0, 0x2

    return v0

    .line 1695
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsActivity;->isEbagLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    return v2

    .line 1699
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1700
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1701
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1702
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1706
    .end local v0
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 1703
    :catch_1
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1705
    const-string v1, ""

    const-string v3, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .end local v0
    nop

    .line 1709
    :goto_0
    return v2
.end method

.method public unregisterReceiverPadMode()V
    .locals 3

    .line 1817
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1818
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    if-eqz v2, :cond_0

    .line 1820
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1821
    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    .line 1826
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 1824
    :catch_0
    move-exception v1

    .line 1825
    .local v1, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/settings/PadModeSettings;->mScreenLockReceiver:Lcom/android/settings/PadModeSettings$ScreenLockReceiver;

    .line 1827
    .end local v1
    :goto_0
    return-void
.end method

.method public updateCurrentLauncherStatus()V
    .locals 10

    .line 1017
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    .line 1018
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "export_standard_launcher_mode_lable"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1019
    .local v0, "iExportStanderdMode":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "Launch_version"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1020
    .local v1, "iLauncherVersion":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    .line 1021
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    iget v7, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v7, v5, :cond_0

    if-ne v1, v2, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 1022
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    iget v7, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v7, v5, :cond_1

    if-eq v1, v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1023
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_9

    .line 1025
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1026
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_4

    if-ne v1, v6, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1027
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_5

    if-eq v1, v6, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1028
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-ne v4, v5, :cond_6

    move v4, v5

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_9

    .line 1030
    :cond_7
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_8

    if-ne v0, v5, :cond_8

    move v4, v5

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1031
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_9

    if-eq v0, v5, :cond_9

    move v4, v5

    goto :goto_7

    :cond_9
    move v4, v3

    :goto_7
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1032
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-ne v4, v5, :cond_a

    move v4, v5

    goto :goto_8

    :cond_a
    move v4, v3

    :goto_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1035
    :goto_9
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1036
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_standard_mode_container:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_b

    if-ne v1, v6, :cond_b

    move v4, v3

    goto :goto_a

    :cond_b
    move v4, v6

    :goto_a
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1037
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_export_mode_container:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_c

    if-eq v1, v6, :cond_c

    move v4, v3

    goto :goto_b

    :cond_c
    move v4, v6

    :goto_b
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 1039
    :cond_d
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_standard_mode_container:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_e

    if-ne v0, v5, :cond_e

    move v4, v3

    goto :goto_c

    :cond_e
    move v4, v6

    :goto_c
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1040
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_export_mode_container:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v4, v5, :cond_f

    if-eq v0, v5, :cond_f

    move v4, v3

    goto :goto_d

    :cond_f
    move v4, v6

    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1042
    :goto_e
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->pad_parent_mode_container:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-ne v4, v5, :cond_10

    move v4, v3

    goto :goto_f

    :cond_10
    move v4, v6

    :goto_f
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1043
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_primary_mode:Landroid/view/View;

    if-ne v1, v5, :cond_11

    move v4, v5

    goto :goto_10

    :cond_11
    move v4, v3

    :goto_10
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1044
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_middle_mode:Landroid/view/View;

    if-nez v1, :cond_12

    move v4, v5

    goto :goto_11

    :cond_12
    move v4, v3

    :goto_11
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1045
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->tv_btn_launcher_child_mode:Landroid/view/View;

    const/4 v4, 0x3

    if-ne v1, v4, :cond_13

    goto :goto_12

    :cond_13
    move v5, v3

    :goto_12
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1047
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v2}, Lcom/android/settings/custom/CustomProgressBar;->getIsPlayAnim()Z

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000

    if-nez v2, :cond_15

    .line 1048
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1049
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1050
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v2, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    goto :goto_13

    .line 1052
    :cond_14
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v2, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1053
    iget-object v2, p0, Lcom/android/settings/PadModeSettings;->progressbar_standard_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1056
    :cond_15
    :goto_13
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const-string v7, "com.readboy.launcher_c10_standard"

    invoke-static {v2, v7}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1057
    .local v2, "isLauncherStandardExsist":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    const-string v8, "com.readboy.launcher_c10_parent"

    invoke-static {v7, v8}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 1058
    .local v7, "isLauncherParentExsist":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1059
    const/4 v7, 0x0

    .line 1060
    const/4 v2, 0x1

    goto :goto_14

    .line 1062
    :cond_16
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1063
    const/4 v7, 0x0

    .line 1064
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    const-string v9, "com.readboy.aistudyroom"

    invoke-static {v8, v9}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1067
    :cond_17
    :goto_14
    const/16 v8, 0x8

    if-eqz v2, :cond_18

    .line 1068
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_1:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 1071
    :cond_18
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_standard_mode:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_1:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_0:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_3:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    :goto_15
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9}, Lcom/android/settings/custom/CustomProgressBar;->getIsPlayAnim()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1077
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_export_mode:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1078
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1079
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9, v5}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    goto :goto_16

    .line 1081
    :cond_19
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1082
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_export_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9, v4}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1085
    :cond_1a
    :goto_16
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v9}, Lcom/android/settings/custom/CustomProgressBar;->getIsPlayAnim()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1086
    iget-object v9, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1087
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v4, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1088
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v4, v5}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    goto :goto_17

    .line 1090
    :cond_1b
    iget-object v5, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v5, v6}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1091
    iget-object v5, p0, Lcom/android/settings/PadModeSettings;->progressbar_parent_mode:Lcom/android/settings/custom/CustomProgressBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1094
    :cond_1c
    :goto_17
    if-eqz v7, :cond_1d

    .line 1095
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_2:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 1098
    :cond_1d
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->btn_launcher_parent_mode:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_2:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_0:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v4, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_3:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    :goto_18
    if-eqz v2, :cond_1e

    if-eqz v7, :cond_1e

    .line 1104
    iget-object v3, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_0:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v3, p0, Lcom/android/settings/PadModeSettings;->view_launcher_mode_space_3:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_1e
    return-void
.end method

.method public updateNavigationBarStatus()V
    .locals 4

    .line 1717
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    .line 1719
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1718
    :catch_0
    move-exception v0

    .line 1720
    :goto_0
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    if-eq v2, v1, :cond_0

    const v2, 0x7f120b62

    goto :goto_1

    :cond_0
    const v2, 0x7f120b63

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1722
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/PadModeSettings;->mNowLauncherParentMode:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1727
    .local v0, "lllp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "ro.config.gesture_navigation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsl_full_screen_mode_switch_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1728
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1729
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 1731
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1732
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1734
    :goto_2
    iget-object v1, p0, Lcom/android/settings/PadModeSettings;->btn_enter_pad_parent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    invoke-virtual {p0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1747
    return-void
.end method
