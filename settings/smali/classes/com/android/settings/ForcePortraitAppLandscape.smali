.class public Lcom/android/settings/ForcePortraitAppLandscape;
.super Landroid/app/Fragment;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;,
        Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;
    }
.end annotation


# instance fields
.field private btn_clean_search:Landroid/widget/Button;

.field private btn_start_search:Landroid/widget/Button;

.field private edit_search_text:Landroid/widget/EditText;

.field private ll_white_list_empty_container:Landroid/widget/LinearLayout;

.field private mActM:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

.field private mHandler:Landroid/os/Handler;

.field private mMsgHandler:Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

.field private mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

.field private mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

.field private mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

.field private onItemTouchCallbackListener:Lcom/android/settings/porttapplandshow/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

.field private rl_main_split_screen_container:Landroid/widget/RelativeLayout;

.field private rl_main_tip_container:Landroid/widget/RelativeLayout;

.field private tv_diliver_01:Landroid/view/View;

.field private tv_main_split_screen_switch:Landroid/widget/TextView;

.field private tv_main_tip_switch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 67
    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mMsgHandler:Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lcom/android/settings/ForcePortraitAppLandscape$5;

    invoke-direct {v0, p0}, Lcom/android/settings/ForcePortraitAppLandscape$5;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->onItemTouchCallbackListener:Lcom/android/settings/porttapplandshow/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 295
    new-instance v0, Lcom/android/settings/ForcePortraitAppLandscape$6;

    invoke-direct {v0, p0}, Lcom/android/settings/ForcePortraitAppLandscape$6;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_start_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_clean_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_tip_switch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_split_screen_switch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mActM:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 58
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->edit_search_text:Landroid/widget/EditText;

    return-object v0
.end method

.method public static removeOneBgTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 339
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 340
    .local v0, "actM":Landroid/app/ActivityManager;
    const/16 v1, 0xa

    .line 341
    .local v1, "minNumTasksToQuery":I
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 342
    .local v2, "numTasksToQuery":I
    const/4 v3, 0x2

    .line 343
    .local v3, "flags":I
    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 344
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x0

    .local v5, "inum":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 345
    const/4 v6, 0x0

    .line 346
    .local v6, "taskPkgName":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 348
    .local v7, "recentTsk":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 349
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    .line 353
    :cond_0
    goto :goto_1

    .line 351
    :catch_0
    move-exception v8

    .line 352
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==1=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :goto_1
    :try_start_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    .line 356
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v8

    .line 360
    :cond_1
    goto :goto_2

    .line 358
    :catch_1
    move-exception v8

    .line 359
    .restart local v8
    :try_start_4
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==2=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_2
    :try_start_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 363
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v8

    .line 367
    :cond_2
    goto :goto_3

    .line 365
    :catch_2
    move-exception v8

    .line 366
    .restart local v8
    :try_start_6
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==3=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_3
    :try_start_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    .line 370
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v6, v8

    .line 374
    :cond_3
    goto :goto_4

    .line 372
    :catch_3
    move-exception v8

    .line 373
    .restart local v8
    :try_start_8
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==4=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_4
    :try_start_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_5

    .line 377
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 378
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_5

    .line 379
    :cond_4
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 380
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v6, v8

    .line 385
    :cond_5
    :goto_5
    goto :goto_6

    .line 383
    :catch_4
    move-exception v8

    .line 384
    .restart local v8
    :try_start_a
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=======divhee===error==5=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v8
    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 388
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "=1=====divhee======killpkg==done======pkgName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->removeTask(I)Z

    .line 392
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    .line 391
    :catch_5
    move-exception v8

    .line 393
    :goto_7
    return-void

    .line 344
    .end local v6
    .end local v7
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 398
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_7
    goto :goto_8

    .line 396
    :catch_6
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ForcePAppL"

    const-string v2, "removeAllTask Failed to get recent tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v0
    :goto_8
    return-void
.end method


# virtual methods
.method public getMsgHandler()Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mMsgHandler:Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mMsgHandler:Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mMsgHandler:Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    return-object v0
.end method

.method public hideSoftKeyboard()V
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 425
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 427
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 429
    .end local v1
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 433
    if-eqz p1, :cond_2

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0096

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getMsgHandler()Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ForcePortraitAppLandscape$8;

    invoke-direct {v1, p0}, Lcom/android/settings/ForcePortraitAppLandscape$8;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getMsgHandler()Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ForcePortraitAppLandscape$7;

    invoke-direct {v1, p0}, Lcom/android/settings/ForcePortraitAppLandscape$7;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    nop

    .line 458
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 105
    const/4 v0, 0x0

    const v1, 0x7f0d00b8

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    .line 108
    iget-object v2, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mActM:Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mActM:Landroid/app/ActivityManager;

    .line 112
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v2, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 114
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 115
    .local v3, "lcdwidth":I
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 121
    .local v4, "lcdheight":I
    const v5, 0x7f0a0247

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    .line 122
    const v5, 0x7f0a0096

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_clean_search:Landroid/widget/Button;

    .line 123
    iget-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_clean_search:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_clean_search:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    const v5, 0x7f0a00a4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_start_search:Landroid/widget/Button;

    .line 126
    iget-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->btn_start_search:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v5, 0x7f0a0159

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->edit_search_text:Landroid/widget/EditText;

    .line 128
    iget-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->edit_search_text:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/ForcePortraitAppLandscape$1;

    invoke-direct {v7, p0}, Lcom/android/settings/ForcePortraitAppLandscape$1;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 139
    iget-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->edit_search_text:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/custom/EditFilterName;

    new-instance v8, Lcom/android/settings/ForcePortraitAppLandscape$2;

    invoke-direct {v8, p0}, Lcom/android/settings/ForcePortraitAppLandscape$2;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->edit_search_text:Landroid/widget/EditText;

    invoke-direct {v7, v8, v9}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    const v5, 0x7f0a034b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 151
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 152
    .local v5, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v7, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 154
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 156
    new-instance v8, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getMsgHandler()Lcom/android/settings/ForcePortraitAppLandscape$MsgHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    invoke-direct {v8, v9, v0, v10, v11}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;)V

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->restartPortAppsLoading()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    new-instance v8, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;

    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 180
    new-instance v0, Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;

    iget-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->onItemTouchCallbackListener:Lcom/android/settings/porttapplandshow/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-direct {v0, v8}, Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;-><init>(Lcom/android/settings/porttapplandshow/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    .line 181
    .local v0, "itemTouchHelper":Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;
    iget-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 182
    invoke-virtual {v0, v6}, Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;->setDragEnable(Z)V

    .line 183
    invoke-virtual {v0, v6}, Lcom/android/settings/porttapplandshow/DefaultItemTouchHelper;->setSwipeEnable(Z)V

    .line 185
    const v8, 0x7f0a036a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_tip_container:Landroid/widget/RelativeLayout;

    .line 186
    iget-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_tip_container:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/android/settings/ForcePortraitAppLandscape$3;

    invoke-direct {v9, p0}, Lcom/android/settings/ForcePortraitAppLandscape$3;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v8, 0x7f0a0497

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_tip_switch:Landroid/widget/TextView;

    .line 195
    iget-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_tip_switch:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "saved_portt_app_landshow_default_enable"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 198
    const v8, 0x7f0a048b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_diliver_01:Landroid/view/View;

    .line 199
    const v8, 0x7f0a0369

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_split_screen_container:Landroid/widget/RelativeLayout;

    .line 200
    const v8, 0x7f0a0493

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_split_screen_switch:Landroid/widget/TextView;

    .line 201
    const-string v8, "ro.readboy.splitscreen"

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 202
    .local v8, "splitscreen_enable":I
    const/4 v8, 0x0

    .line 203
    if-eq v8, v7, :cond_2

    .line 204
    iget-object v6, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_split_screen_container:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v6, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_diliver_01:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_split_screen_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_diliver_01:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v9, p0, Lcom/android/settings/ForcePortraitAppLandscape;->tv_main_split_screen_switch:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "readboy_allow_split_screen"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_3

    move v6, v7

    nop

    :cond_3
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 210
    iget-object v6, p0, Lcom/android/settings/ForcePortraitAppLandscape;->rl_main_split_screen_container:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/android/settings/ForcePortraitAppLandscape$4;

    invoke-direct {v7, p0}, Lcom/android/settings/ForcePortraitAppLandscape$4;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :goto_1
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .line 523
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 524
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 560
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 561
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->stopPortAppsLoading()V

    .line 563
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->restartPortAppsLoading()V

    .line 536
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 528
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 530
    return-void
.end method

.method public restartPortAppsLoading()V
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/ForcePortraitAppLandscape;->stopPortAppsLoading()V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mWhiteListAdapter:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;Lcom/android/settings/ForcePortraitAppLandscape$1;)V

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    .line 543
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 546
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 547
    :goto_0
    return-void
.end method

.method public stopPortAppsLoading()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    if-eqz v0, :cond_0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->cancel(Z)Z

    .line 553
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 554
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape;->mRunningLoadPortApps:Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;

    .line 556
    :cond_0
    return-void
.end method
