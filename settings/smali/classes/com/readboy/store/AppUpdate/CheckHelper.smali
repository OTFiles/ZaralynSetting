.class public Lcom/readboy/store/AppUpdate/CheckHelper;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Lcom/readboy/store/AppUpdate/CheckImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckHelper"


# instance fields
.field private cancelCheck:Z

.field private context:Landroid/app/Activity;

.field private doBackground:I

.field private info:Lcom/readboy/store/AppUpdate/ApInfo;

.field private isShowWhenNormalUpdate:Z

.field listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

.field private mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

.field mHandler:Landroid/os/Handler;

.field private mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

.field private mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

.field private onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

.field private runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->isShowWhenNormalUpdate:Z

    .line 29
    iput v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->doBackground:I

    .line 37
    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;

    invoke-direct {v0, p0}, Lcom/readboy/store/AppUpdate/CheckHelper$3;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper;)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/readboy/store/AppUpdate/ApInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/readboy/store/AppUpdate/ApInfo;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->isShowWhenNormalUpdate:Z

    .line 29
    iput v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->doBackground:I

    .line 37
    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;

    invoke-direct {v0, p0}, Lcom/readboy/store/AppUpdate/CheckHelper$3;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper;)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    .line 47
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/readboy/store/AppUpdate/CheckHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/readboy/store/AppUpdate/CheckHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/readboy/store/AppUpdate/CheckHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->isFinish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/readboy/store/AppUpdate/CheckHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/dialogs/UpdateTipDialog;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/readboy/store/AppUpdate/CheckHelper;Lcom/readboy/store/AppUpdate/UpdateInfoBean;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;
    .locals 0
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;
    .param p1, "x1"    # Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 20
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 20
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/readboy/store/AppUpdate/CheckHelper;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/CheckHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/AppUpdate/CheckHelper;->showUpdateDialog(ZZZ)V

    return-void
.end method

.method private isFinish()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onDestroy(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 348
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->getDoBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-virtual {v0, p1}, Lcom/readboy/store/AppUpdate/UpdateHelper;->release(Z)V

    .line 351
    iput-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    .line 354
    :cond_0
    iput-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    .line 355
    iput-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    .line 356
    return-void
.end method

.method private resetCheck()V
    .locals 1

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    .line 310
    return-void
.end method

.method private showUpdateDialog(ZZZ)V
    .locals 7
    .param p1, "fileExist"    # Z
    .param p2, "isForce"    # Z
    .param p3, "isAppForce"    # Z

    .line 122
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    if-nez p3, :cond_1

    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->isShowWhenNormalUpdate:Z

    if-nez v0, :cond_1

    .line 126
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;->onCheckFinish(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->enforceCheck()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper;->startUpdate(Z)V

    .line 135
    return-void

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    if-nez v0, :cond_c

    .line 139
    const-string v0, ""

    .line 140
    .local v0, "detail":Ljava/lang/String;
    const-string v1, ""

    .line 141
    .local v1, "updateTitle":Ljava/lang/String;
    const-string v2, ""

    .line 142
    .local v2, "versionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    if-eqz v3, :cond_4

    .line 143
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v3}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    if-eqz v3, :cond_6

    .line 146
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v3}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 147
    if-nez v1, :cond_5

    const-string v3, ""

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    move-object v1, v3

    .line 149
    :cond_6
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    if-eqz v3, :cond_8

    .line 150
    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v3}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getVerName()Ljava/lang/String;

    move-result-object v2

    .line 151
    if-nez v2, :cond_7

    const-string v3, ""

    goto :goto_1

    :cond_7
    move-object v3, v2

    :goto_1
    move-object v2, v3

    .line 154
    :cond_8
    if-nez v0, :cond_9

    const-string v3, "rb_app_update_update info"

    goto :goto_2

    :cond_9
    move-object v3, v0

    .line 156
    .local v3, "msg":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    sget v6, Lcom/readboy/store/AppUpdate/R$style;->rb_app_update_MyDialog:I

    invoke-direct {v4, v5, v6}, Lcom/readboy/store/dialogs/UpdateTipDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    .line 157
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    iget-object v6, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setAppName(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v5}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getVerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setAppVersionName(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setIconId(I)V

    .line 160
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v4, v3}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setUpdataConent(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    if-eqz p2, :cond_a

    .line 162
    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    sget v6, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_exit:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 163
    :cond_a
    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    sget v6, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_next:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Lcom/readboy/store/AppUpdate/CheckHelper$1;

    invoke-direct {v6, p0, p2}, Lcom/readboy/store/AppUpdate/CheckHelper$1;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper;Z)V

    .line 161
    invoke-virtual {v4, v5, v6}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    if-eqz p2, :cond_b

    .line 176
    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    sget v6, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_enforce_sure:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 177
    :cond_b
    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    sget v6, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_sure:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    new-instance v6, Lcom/readboy/store/AppUpdate/CheckHelper$2;

    invoke-direct {v6, p0}, Lcom/readboy/store/AppUpdate/CheckHelper$2;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper;)V

    .line 175
    invoke-virtual {v4, v5, v6}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Lcom/readboy/store/dialogs/UpdateTipDialog;->setCancelable(Z)V

    .line 212
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_c
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->show()V

    .line 213
    return-void
.end method


# virtual methods
.method protected checkError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 287
    const-string v0, "CheckHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;->onCheckFinish(I)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->releaseUpdate()V

    .line 295
    return-void
.end method

.method public getDoBackground()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->doBackground:I

    return v0
.end method

.method public initApUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;)V
    .locals 2
    .param p1, "apUpdateInfo"    # Lcom/readboy/store/AppUpdate/ApInfo;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    .line 58
    return-void

    .line 55
    :cond_0
    const-string v0, "CheckHelper"

    const-string v1, "info is null or packageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected isNeedUpdate()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->setCancel(Z)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->resetCheck()V

    .line 303
    new-instance v0, Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/ApInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    .line 304
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->setOnCheckListener(Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;)V

    .line 305
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method public isShowDialogWhenNormalUpdate(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->isShowWhenNormalUpdate:Z

    .line 98
    return-void
.end method

.method public releaseUpdate()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->releaseUpdate(Z)V

    .line 93
    return-void
.end method

.method public releaseUpdate(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->cancelCheck:Z

    .line 104
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->runnable:Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    invoke-virtual {v1, v0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->setCancel(Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mDialog:Lcom/readboy/store/dialogs/UpdateTipDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->dismiss()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper;->onDestroy(Z)V

    .line 114
    :cond_2
    return-void
.end method

.method public setDoBackground(I)Lcom/readboy/store/AppUpdate/CheckImpl;
    .locals 0
    .param p1, "doBackground"    # I

    .line 359
    iput p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->doBackground:I

    .line 360
    return-object p0
.end method

.method public setOnCheckListener(Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    .line 118
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->onCheckListener:Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;

    .line 119
    return-void
.end method

.method public startCheck(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .line 62
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    .line 64
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/ApInfo;-><init>()V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->getDoBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setDoBackground(I)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 70
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v0, p1}, Lcom/readboy/store/AppUpdate/ApInfo;->setDefaultValue(Landroid/content/Context;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->getVersionCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/ApInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/readboy/store/AppUpdate/Utils;->getAPKVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setVersionCode(I)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 79
    :cond_2
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->getNetWorkStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->isNeedUpdate()V

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->checkError(I)V

    .line 86
    const-string v0, "CheckHelper"

    const-string v1, "net is unconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void
.end method

.method protected startUpdate(Z)V
    .locals 8
    .param p1, "fileExist"    # Z

    .line 313
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/CheckHelper;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 317
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v3}, Lcom/readboy/store/AppUpdate/ApInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsAppForce()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/readboy/store/AppUpdate/Utils;->install(Ljava/io/File;Landroid/content/Context;)V

    .line 325
    return-void

    .line 328
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/ApInfo;->getDoBackground()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/ApInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/readboy/store/download/DownloadService;->startActionReCheck(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto :goto_2

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    if-nez v1, :cond_5

    .line 332
    new-instance v1, Lcom/readboy/store/AppUpdate/UpdateHelper;

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->info:Lcom/readboy/store/AppUpdate/ApInfo;

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 333
    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 334
    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getVerName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateInfo:Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 335
    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsAppForce()I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/readboy/store/AppUpdate/UpdateHelper;-><init>(Landroid/app/Activity;Lcom/readboy/store/AppUpdate/ApInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    goto :goto_2

    .line 337
    :cond_5
    const-string v0, "CheckHelper"

    const-string v1, "update info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->mUpdateImpl:Lcom/readboy/store/AppUpdate/UpdateHelper;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/UpdateHelper;->restartDownload(Landroid/app/Activity;)V

    .line 341
    :goto_2
    return-void
.end method
