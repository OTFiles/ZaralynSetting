.class public Lcom/android/settings/SettingsLauncherParentModeExchange;
.super Landroid/app/Fragment;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;,
        Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;
    }
.end annotation


# instance fields
.field public final REQUEST_PARENT_PASSWORD_CHECK_PARENTMODE:I

.field public final REQUEST_PARENT_PASSWORD_RESET_NEW_SET_APPS:I

.field private btn_clean_search:Landroid/widget/Button;

.field private btn_start_search:Landroid/widget/Button;

.field private edit_search_text:Landroid/widget/EditText;

.field public isParentPasswordCheckPassed:I

.field private ll_white_list_empty_container:Landroid/widget/LinearLayout;

.field private mActM:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

.field private mHandler:Landroid/os/Handler;

.field public mIsNowParentManagerShowing:I

.field private mListContainer:Landroid/view/View;

.field private mMsgHandler:Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

.field private mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

.field private mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

.field private mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

.field private onItemTouchCallbackListener:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

.field private progressbar_white_list_empty_loading:Landroid/widget/ProgressBar;

.field private tv_white_list_empty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 73
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 75
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    .line 77
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mMsgHandler:Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mHandler:Landroid/os/Handler;

    .line 95
    const/16 v0, 0x271c

    iput v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->REQUEST_PARENT_PASSWORD_CHECK_PARENTMODE:I

    .line 96
    const/16 v0, 0x271d

    iput v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->REQUEST_PARENT_PASSWORD_RESET_NEW_SET_APPS:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mIsNowParentManagerShowing:I

    .line 282
    new-instance v0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsLauncherParentModeExchange$4;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->onItemTouchCallbackListener:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 321
    new-instance v0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsLauncherParentModeExchange$5;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_start_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_clean_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->tv_white_list_empty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->progressbar_white_list_empty_loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 64
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->edit_search_text:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getMsgHandler()Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mMsgHandler:Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mMsgHandler:Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mMsgHandler:Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    return-object v0
.end method

.method public hideSoftKeyboard()V
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 355
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 357
    .end local v1
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 547
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 548
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x64

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 574
    :pswitch_0    # 0x271d
    if-eq p2, v3, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    const/4 p2, 0x1

    .line 580
    :cond_0
    if-ne p2, v3, :cond_2

    .line 581
    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, p2

    :goto_0
    iput v4, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 583
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 584
    const-string v0, ""

    const-string v2, "=====divhee================UNINSTALL_ENABLE_ENTER==1141="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 588
    :cond_2
    iput v2, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 591
    goto/16 :goto_6

    .line 550
    :pswitch_1    # 0x271c
    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    .line 551
    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    iput v4, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 553
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/16 v1, 0x271d

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0
    :goto_2
    goto :goto_5

    .line 560
    :cond_4
    if-eq p2, v3, :cond_6

    if-eq p2, v5, :cond_6

    iget v5, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    if-ne v5, v4, :cond_5

    goto :goto_3

    .line 568
    :cond_5
    iput v2, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_5

    .line 561
    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    if-ne v0, v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, p2

    :goto_4
    iput v4, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 563
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 564
    const-string v0, ""

    const-string v3, "=====divhee================UNINSTALL_ENABLE_ENTER==1131="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :cond_8
    :goto_5
    iput v2, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mIsNowParentManagerShowing:I

    .line 572
    nop

    .line 595
    :cond_9
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x271c
        :pswitch_1    # 0x271c
        :pswitch_0    # 0x271d
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 361
    if-eqz p1, :cond_2

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0096

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getMsgHandler()Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherParentModeExchange$7;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherParentModeExchange$7;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getMsgHandler()Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherParentModeExchange$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherParentModeExchange$6;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    nop

    .line 386
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 109
    const/4 v0, 0x0

    const v2, 0x7f0d00c8

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "parent":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    .line 112
    iget-object v4, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mActM:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 113
    iget-object v4, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mActM:Landroid/app/ActivityManager;

    .line 116
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v4, "point":Landroid/graphics/Point;
    iget-object v5, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 118
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 119
    .local v5, "lcdwidth":I
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 125
    .local v6, "lcdheight":I
    const v7, 0x7f0a0247

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    .line 126
    const v7, 0x7f0a04a3

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->tv_white_list_empty:Landroid/widget/TextView;

    .line 127
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->tv_white_list_empty:Landroid/widget/TextView;

    const v8, 0x7f12014e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->tv_white_list_empty:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    const v7, 0x7f0a032f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->progressbar_white_list_empty_loading:Landroid/widget/ProgressBar;

    .line 130
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->progressbar_white_list_empty_loading:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    const v7, 0x7f0a0096

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_clean_search:Landroid/widget/Button;

    .line 132
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_clean_search:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_clean_search:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    const v7, 0x7f0a00a4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_start_search:Landroid/widget/Button;

    .line 135
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->btn_start_search:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v7, 0x7f0a0159

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->edit_search_text:Landroid/widget/EditText;

    .line 137
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->edit_search_text:Landroid/widget/EditText;

    new-instance v9, Lcom/android/settings/SettingsLauncherParentModeExchange$1;

    invoke-direct {v9, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$1;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->edit_search_text:Landroid/widget/EditText;

    new-instance v9, Lcom/android/settings/custom/EditFilterName;

    new-instance v10, Lcom/android/settings/SettingsLauncherParentModeExchange$2;

    invoke-direct {v10, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$2;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->edit_search_text:Landroid/widget/EditText;

    invoke-direct {v9, v10, v11}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    const v7, 0x7f0a034b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 160
    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v9, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 161
    .local v7, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v9, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 163
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 165
    new-instance v10, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getMsgHandler()Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    move-result-object v12

    iget-object v13, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;)V

    iput-object v10, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->restartPortAppsLoading()V

    .line 182
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    new-instance v10, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListDividerItem;

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v9}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListDividerItem;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 189
    new-instance v0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;

    iget-object v10, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->onItemTouchCallbackListener:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-direct {v0, v10}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;-><init>(Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    move-object v10, v0

    .line 190
    .local v10, "itemTouchHelper":Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v0}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 191
    invoke-virtual {v10, v8}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->setDragEnable(Z)V

    .line 192
    invoke-virtual {v10, v8}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->setSwipeEnable(Z)V

    .line 195
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getAllAppParentLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    .line 196
    .local v11, "parentLauncherPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 198
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "launcher_shortcut_request_list"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "strReqList":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v12, "savedLauncherParentLauncherCellCellListPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 201
    const-string v13, "["

    const-string v14, ""

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "]"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    .line 202
    const-string v13, "\\}, \\{"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, "arrayPkgs":[Ljava/lang/String;
    move v14, v8

    .local v14, "inum":I
    :goto_0
    array-length v15, v13

    if-ge v14, v15, :cond_2

    .line 204
    new-instance v15, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    aget-object v8, v13, v14

    invoke-direct {v15, v8}, Lcom/android/settings/parentlauncher/ParentLauncherCell;-><init>(Ljava/lang/String;)V

    move-object v8, v15

    .line 205
    .local v8, "parentLauncherCell":Lcom/android/settings/parentlauncher/ParentLauncherCell;
    invoke-virtual {v8}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->isInitSucess()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 206
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v8
    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_0

    .line 210
    .end local v13
    .end local v14
    :cond_2
    const/4 v8, 0x0

    .line 211
    .local v8, "ireqListNeedUpdate":Z
    move v9, v8

    const/4 v8, 0x0

    .local v8, "inum":I
    .local v9, "ireqListNeedUpdate":Z
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_4

    .line 212
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    .line 213
    .local v13, "parentLauncherCell":Lcom/android/settings/parentlauncher/ParentLauncherCell;
    invoke-virtual {v13}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->isInitSucess()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 214
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v9, 0x1

    .line 211
    .end local v13
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 218
    .end local v8
    :cond_4
    if-eqz v9, :cond_5

    .line 219
    const-string v8, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=====divhee==============retStrReqList==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v8, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v13, "launcher_shortcut_request_list"

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v13, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    .end local v0
    .end local v9
    .end local v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    .line 222
    :catch_0
    move-exception v0

    .line 227
    :cond_6
    :goto_2
    const v0, 0x7f0a0368

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 228
    .local v8, "list_container":Landroid/view/ViewGroup;
    if-eqz v8, :cond_a

    .line 229
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    const/16 v9, 0x8

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_7
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    .line 233
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    const v12, 0x7f0a01de

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 234
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    new-instance v12, Lcom/android/settings/SettingsLauncherParentModeExchange$3;

    invoke-direct {v12, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$3;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v12, v0

    .line 240
    .local v12, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    invoke-virtual {v8, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    iget v13, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_9

    iget v13, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    iget v13, v1, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/16 v14, 0x64

    if-ne v13, v14, :cond_8

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    nop

    :cond_9
    :goto_3
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 243
    :catch_1
    move-exception v0

    .line 247
    .end local v12
    :cond_a
    :goto_4
    return-object v2
.end method

.method public onDestroyView()V
    .locals 0

    .line 451
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 452
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 495
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 496
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->stopPortAppsLoading()V

    .line 499
    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 501
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 462
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->restartPortAppsLoading()V

    .line 465
    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mIsNowParentManagerShowing:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 466
    const/16 v0, 0x271c

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iput v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->isParentPasswordCheckPassed:I

    .line 471
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 456
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 458
    return-void
.end method

.method public restartPortAppsLoading()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->stopPortAppsLoading()V

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mWhiteListAdapter:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;Lcom/android/settings/SettingsLauncherParentModeExchange$1;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    .line 478
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 481
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    :goto_0
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 3
    .param p1, "request"    # I

    .line 520
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->onActivityResult(IILandroid/content/Intent;)V

    .line 522
    const/4 v0, 0x2

    return v0

    .line 531
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange;->startActivityForResult(Landroid/content/Intent;I)V

    .line 534
    iput v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mIsNowParentManagerShowing:I

    .line 535
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 539
    .end local v0
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 538
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0
    nop

    .line 542
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopPortAppsLoading()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    if-eqz v0, :cond_0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->cancel(Z)Z

    .line 488
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 489
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;

    .line 491
    :cond_0
    return-void
.end method
